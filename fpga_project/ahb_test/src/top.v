module top_hdl(
    //Inputs
    input clk,      // 27MHz
    input in1,
    input in2,

    input uart0rxd,

    input adcSdo0,
    input adcSdo1,
    input adcRvs,

    input dacDout,

    //Outputs
    output reg outLed,

    output reg adcReset = 0,
    output wire adcCs,
    output wire adcSclk,
    output wire adcSdi,

    output wire dacDin,
    output wire dacSclk,
    output reg dacCs = 0,

    output wire uart0txd
  );

  //1.parameter

  //2.localparam
  localparam KEY_PRESS = 1'b0;
  localparam KEY_RELEASE = !KEY_PRESS;
  localparam LED_ON = 1'b1;
  localparam LED_OFF = !LED_ON;

  localparam LED_PERIOD1 = 27_000_000 / 2 - 1;      //500ms=27_000_000/2
  localparam LED_PERIOD2 = 27_000_000 / 10 - 1;      //100ms=27_000_000/10

  //3.reg
  reg [31: 0] cnt = 32'b0;
  reg out2 = 0;

  //4.wire
  wire [31: 0] CNT_MAX = (in2 == KEY_PRESS) ? LED_PERIOD2 : LED_PERIOD1;
  wire clk_72M;

  wire [15: 0] gpioout_o;
  wire [15: 0] gpioouten_o;
  wire lock_pll72M;
  wire mcu_rst;

  wire nvic_int0 = 1'b0;

  wire uart1rxd = 1;
  wire uart1txd;

  //5.assign
  assign dacDin = adcSdi;
  assign dacSclk = adcSclk;
  assign mcu_rst = in1 & lock_pll72M;

  assign adcCs = 1;
  assign adcSclk = 1;
  assign adcSdi = 1;

  //6.always
  always @ (posedge clk)
    begin
      if (!in1)
        begin
          cnt <= 'd0;
        end
      else
        begin
          if (cnt >= CNT_MAX)
            cnt <= 'd0;
          else
            cnt <= cnt + 'd1;
        end
    end

  always @ (posedge clk)
    begin
      if (!in1)
        out2 <= LED_OFF;
      else if (cnt == CNT_MAX)
        out2 <= !out2;
    end

  always @ (posedge clk)
    begin
      //    outLed <= gpioout_o[0];
      outLed <= out2;
      adcReset <= gpioout_o[0];
      dacCs <= gpioout_o[1];
    end

  //7.instance
  Gowin_PLLVR PLL1_72M(
                .clkout(clk_72M), //output clkout
                .clkin(clk), //input clkin
                .lock(lock_pll72M) //output lock
              );

  wire master_hclk ;
  wire master_hrst ;
  wire master_hsel ;
  wire [31: 0] master_haddr ;
  wire [1: 0] master_htrans ;
  wire master_hwrite ;
  wire [2: 0] master_hsize ;
  wire [2: 0] master_hburst ;
  wire [3: 0] master_hprot ;
  wire [1: 0] master_hmemattr ;
  wire master_hexreq ;
  wire [3: 0] master_hmaster ;
  wire [31: 0] master_hwdata ;
  wire master_hmastlock ;
  wire master_hreadymux ;
  wire master_hauser ;
  wire [3: 0] master_hwuser ;
  wire [31: 0] master_hrdata ;
  wire master_hreadyout ;
  wire master_hresp ;

  wire uart00rxd ;
  wire uart00txd;

  wire uart01rxd ;
  wire uart01txd;

  assign uart00rxd = gpioout_o[2] ? 1'b1 : uart0rxd;
  assign uart01rxd = gpioout_o[2] ? uart0rxd : 1'b1 ;

  assign uart0txd = gpioout_o[2] ? uart01txd : uart00txd ;

  Gowin_EMPU_Top CortexM3_8K_32K(
                   .sys_clk(clk_72M), //input sys_clk
                   .gpioin({15'h0000, in2}), //input [15:0] gpioin
                   .gpioout(gpioout_o), //output [15:0] gpioout
                   .gpioouten(gpioouten_o), //output [15:0] gpioouten
                   .uart0_rxd(uart00rxd), //input uart0_rxd
                   .uart0_txd(uart00txd), //output uart0_txd
                   .uart1_rxd(uart1rxd), //input uart1_rxd
                   .uart1_txd(uart1txd), //output uart1_txd
                   .user_int_0(nvic_int0), //input user_int_0
                   .reset_n(mcu_rst), //input reset_n

                   .mosi(adcSdi), //output mosi
                   .miso(adcSdo0), //input miso
                   .sclk(adcSclk), //output sclk
                   .nss(adcCs), //output nss

                   .master_hclk(master_hclk),
                   .master_hrst(master_hrst),
                   .master_hsel(master_hsel),
                   .master_haddr(master_haddr),
                   .master_htrans(master_htrans),
                   .master_hwrite(master_hwrite),
                   .master_hsize(master_hsize),
                   .master_hburst(master_hburst),
                   .master_hprot(master_hprot),
                   .master_hmemattr(master_hmemattr),
                   .master_hexreq(master_hexreq),
                   .master_hmaster(master_hmaster),
                   .master_hwdata(master_hwdata),
                   .master_hmastlock(master_hmastlock),
                   .master_hreadymux(master_hreadymux),
                   .master_hauser(master_hauser),
                   .master_hwuser(master_hwuser),

                   .master_hrdata(master_hrdata),
                   .master_hreadyout(master_hreadyout),
                   .master_hresp(master_hresp),
                   .master_hexresp(1'b0),
                   .master_hruser(3'b000)
                 );

  wire uartIntSig;

  ahb_uart ahb_uart1(
             .HCLK ( master_hclk ), //时钟
             .HRESETn ( master_hrst ), //复位

             .HSEL ( master_hsel ), // AHB inputs，设备选择
             .HADDR ( master_haddr[ 15: 0 ] ), //地址
             .HTRANS ( master_htrans ), //传输控制信号
             .HSIZE ( master_hsize ),  //传输大小
             .HWRITE ( master_hwrite ), //写控制
             .HWDATA ( master_hwdata ), //写数据
             .HREADY ( master_hreadymux ), //传输完成

             .HREADYOUT ( master_hreadyout ), // AHB Outputs，设备准备信号
             .HRDATA ( master_hrdata ), //读取到的数据
             .HRESP ( master_hresp ), //设备响应

             .INT_REQ( uartIntSig ),
             .TX_OUT( uart01txd ),
             .RX_IN( uart01rxd )
           );

endmodule
