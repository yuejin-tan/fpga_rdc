module top_hdl(
    //Inputs
    input gclk,      // 27MHz
    input gresetn,    
    input key,
    input uart_rxd,

    //Outputs
    output uart_txd,
    output led
);

wire clk_60m;

wire arm_clk = clk_60m;
wire arm_resetn = gresetn;

wire arm_uart0_rxd = uart_rxd;
wire arm_uart0_txd;
wire [15:0] arm_gpio_in;
wire [15:0] arm_gpio_out;
wire [15:0] arm_gpio_outen;

assign uart_txd = arm_uart0_txd;
assign led = (arm_gpio_out[15:0] == 16'haaaa);
assign arm_gpio_in[15:0] = {16{key}};

Gowin_PLLVR pll_ut0(
    .clkout(clk_60m), //output clkout
    .clkin(gclk) //input clkin
);

Gowin_EMPU_Top arm_cortex_m3_core(
    //Inputs
    .sys_clk(arm_clk),
    .reset_n(arm_resetn),
    .uart0_rxd(arm_uart0_rxd), 
    .gpioin(arm_gpio_in[15:0]),

    //Outputs
    .uart0_txd(arm_uart0_txd),
    .gpioout(arm_gpio_out[15:0]),
    .gpioouten(arm_gpio_outen[15:0])
);

//	Gowin_EMPU_Top your_instance_name(
//		.sys_clk(sys_clk_i), //input sys_clk
//		.gpio(gpio_io), //inout [15:0] gpio
//		.uart0_rxd(uart0_rxd_i), //input uart0_rxd
//		.uart0_txd(uart0_txd_o), //output uart0_txd
//		.uart1_rxd(uart1_rxd_i), //input uart1_rxd
//		.uart1_txd(uart1_txd_o), //output uart1_txd
//		.master_pclk(master_pclk_o), //output master_pclk
//		.master_prst(master_prst_o), //output master_prst
//		.master_penable(master_penable_o), //output master_penable
//		.master_paddr(master_paddr_o), //output [7:0] master_paddr
//		.master_pwrite(master_pwrite_o), //output master_pwrite
//		.master_pwdata(master_pwdata_o), //output [31:0] master_pwdata
//		.master_pstrb(master_pstrb_o), //output [3:0] master_pstrb
//		.master_pprot(master_pprot_o), //output [2:0] master_pprot
//		.master_psel1(master_psel1_o), //output master_psel1
//		.master_prdata1(master_prdata1_i), //input [31:0] master_prdata1
//		.master_pready1(master_pready1_i), //input master_pready1
//		.master_pslverr1(master_pslverr1_i), //input master_pslverr1
//		.user_int_0(user_int_0_i), //input user_int_0
//		.reset_n(reset_n_i) //input reset_n
//	);

endmodule   //top_hdl end