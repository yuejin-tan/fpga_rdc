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
localparam KEY_PRESS   = 1'b0; 
localparam KEY_RELEASE = !KEY_PRESS;
localparam LED_ON      = 1'b1;
localparam LED_OFF     = !LED_ON;

localparam LED_PERIOD1 = 27_000_000 / 2 - 1;      //500ms=27_000_000/2
localparam LED_PERIOD2 = 27_000_000 / 10 - 1;      //100ms=27_000_000/10

//3.reg
reg [31:0] cnt = 32'b0;
reg out2 = 0;

//4.wire 
wire [31:0] CNT_MAX = (in2 == KEY_PRESS) ? LED_PERIOD2 : LED_PERIOD1;
wire clk_72M;

wire [15:0] gpioout_o;
wire [15:0] gpioouten_o;
wire lock_pll72M;
wire mcu_rst;

wire nvic_int0 = 1'b0;

//5.assign
assign dacDin = adcSdi;
assign dacSclk = adcSclk;
assign mcu_rst = in1 & lock_pll72M;

//6.always
always @ (posedge clk) begin
    if(!in1) begin
        cnt <= 'd0;
    end
    else begin
        if(cnt >= CNT_MAX)
            cnt <= 'd0;
        else 
            cnt <= cnt + 'd1;
    end
end

always @ (posedge clk) begin
    if(!in1) 
        out2 <= LED_OFF;
    else if(cnt == CNT_MAX)
        out2 <= !out2;
end

always @ (posedge clk) begin
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

Gowin_EMPU_Top CortexM3_8K_32K(
    .sys_clk(clk_72M), //input sys_clk
//    .sys_clk(clk), //input sys_clk
    .gpioin({15'h0000,in2}), //input [15:0] gpioin
    .gpioout(gpioout_o), //output [15:0] gpioout
    .gpioouten(gpioouten_o), //output [15:0] gpioouten
    .uart0_rxd(uart0rxd), //input uart0_rxd
    .uart0_txd(uart0txd), //output uart0_txd
    .mosi(adcSdi), //output mosi
    .miso(adcSdo0), //input miso
    .sclk(adcSclk), //output sclk
    .nss(adcCs), //output nss
    .user_int_0(nvic_int0), //input user_int_0
    .reset_n(mcu_rst) //input reset_n

//    .master_hclk(master_hclk_o), //output master_hclk
//    .master_hrst(master_hrst_o), //output master_hrst
//    .master_hsel(master_hsel_o), //output master_hsel
//    .master_haddr(master_haddr_o), //output [31:0] master_haddr
//    .master_htrans(master_htrans_o), //output [1:0] master_htrans
//    .master_hwrite(master_hwrite_o), //output master_hwrite
//    .master_hsize(master_hsize_o), //output [2:0] master_hsize
//    .master_hburst(master_hburst_o), //output [2:0] master_hburst
//    .master_hprot(master_hprot_o), //output [3:0] master_hprot
//    .master_hmemattr(master_hmemattr_o), //output [1:0] master_hmemattr
//    .master_hexreq(master_hexreq_o), //output master_hexreq
//    .master_hmaster(master_hmaster_o), //output [3:0] master_hmaster
//    .master_hwdata(master_hwdata_o), //output [31:0] master_hwdata
//    .master_hmastlock(master_hmastlock_o), //output master_hmastlock
//    .master_hreadymux(master_hreadymux_o), //output master_hreadymux
//    .master_hauser(master_hauser_o), //output master_hauser
//    .master_hwuser(master_hwuser_o), //output [3:0] master_hwuser
//    .master_hrdata(master_hrdata_i), //input [31:0] master_hrdata
//    .master_hreadyout(master_hreadyout_i), //input master_hreadyout
//    .master_hresp(master_hresp_i), //input master_hresp
//    .master_hexresp(master_hexresp_i), //input master_hexresp
//    .master_hruser(master_hruser_i), //input [2:0] master_hruser
);

endmodule   //top_hdl end
