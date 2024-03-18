--
--Written by GowinSynthesis
--Product Version "V1.9.8.11 Education"
--Wed Aug 30 20:18:34 2023

--Source file index table:
--file0 "\C:/Gowin/Gowin_V1.9.8.11_Education/IDE/ipcore/gowin_empu_gw1ns4/data/gowin_empu.v"
--file1 "\C:/Gowin/Gowin_V1.9.8.11_Education/IDE/ipcore/gowin_empu_gw1ns4/data/gowin_empu_top.v"
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library gw1ns;
use gw1ns.components.all;

entity Gowin_EMPU_Top is
port(
  sys_clk :  in std_logic;
  gpio :  inout std_logic_vector(15 downto 0);
  uart0_rxd :  in std_logic;
  uart0_txd :  out std_logic;
  uart1_rxd :  in std_logic;
  uart1_txd :  out std_logic;
  reset_n :  in std_logic);
end Gowin_EMPU_Top;
architecture beh of Gowin_EMPU_Top is
  signal Gowin_EMPU_inst_u_emcu_top_310_UART0BAUDTICK : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_UART1BAUDTICK : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_INTMONITOR : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_ye : std_logic ;
  signal Gowin_EMPU_inst_sram0_cs : std_logic ;
  signal Gowin_EMPU_inst_targflash0_hsel : std_logic ;
  signal Gowin_EMPU_inst_targflash0_hreadymux : std_logic ;
  signal Gowin_EMPU_inst_targexp0_hsel : std_logic ;
  signal Gowin_EMPU_inst_targexp0_hwrite : std_logic ;
  signal Gowin_EMPU_inst_targexp0_exreq : std_logic ;
  signal Gowin_EMPU_inst_targexp0_hmastlock : std_logic ;
  signal Gowin_EMPU_inst_targexp0_hreadymux : std_logic ;
  signal Gowin_EMPU_inst_targexp0_hauser : std_logic ;
  signal Gowin_EMPU_inst_initexp0_hready : std_logic ;
  signal Gowin_EMPU_inst_initexp0_hresp : std_logic ;
  signal Gowin_EMPU_inst_initexp0_exresp : std_logic ;
  signal Gowin_EMPU_inst_apbtargexp2_psel : std_logic ;
  signal Gowin_EMPU_inst_apbtargexp2_penable : std_logic ;
  signal Gowin_EMPU_inst_apbtargexp2_pwrite : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_DAPTDO : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_DAPJTAGNSW : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_DAPNTDOEN : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_TPIUTRACEDATA3 : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_TPIUTRACEDATA2 : std_logic ;
  signal Gowin_EMPU_inst_u_emcu_top_310_TPIUTRACEDATA1 : std_logic ;
  signal Gowin_EMPU_inst_trace_data : std_logic ;
  signal Gowin_EMPU_inst_trace_clk : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_hsel_1d : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_hready_out_1d : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_se_out : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n61 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n129 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n130 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n131 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n132 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n133 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n134 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n135 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n136 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n137 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n138 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n139 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n140 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n141 : std_logic ;
  signal Gowin_EMPU_inst_u_gw_peripherals_interconnect_u_gw_cmsdk_apb2_slave_mux_apbtargexp2_pready : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_hready_out : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n198 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n60 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n79 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n129_4 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_rom_addr_12 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n5 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n7 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n9 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n11 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n13 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n15 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n17 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n19 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n21 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n23 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n25 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n27 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n29 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n31 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n33 : std_logic ;
  signal Gowin_EMPU_inst_u_gpio_n35 : std_logic ;
  signal Gowin_EMPU_inst_u_flash_wrap_n84 : std_logic ;
  signal Gowin_EMPU_inst_u_sram_subsystem_n36 : std_logic ;
  signal Gowin_EMPU_inst_u_sram_subsystem_n70 : std_logic ;
  signal Gowin_EMPU_inst_u_sram_subsystem_n104 : std_logic ;
  signal Gowin_EMPU_inst_u_sram_subsystem_n138 : std_logic ;
  signal GND_0 : std_logic ;
  signal VCC_0 : std_logic ;
  signal \Gowin_EMPU_inst/u_gpio/io_exp_input_i\ : std_logic_vector(15 downto 0);
  signal \Gowin_EMPU_inst/io_exp_output_o\ : std_logic_vector(15 downto 0);
  signal \Gowin_EMPU_inst/io_exp_outputen_o\ : std_logic_vector(15 downto 0);
  signal \Gowin_EMPU_inst/sram0_addr\ : std_logic_vector(12 downto 0);
  signal \Gowin_EMPU_inst/sram0_wren\ : std_logic_vector(3 downto 0);
  signal \Gowin_EMPU_inst/sram0_wdata\ : std_logic_vector(31 downto 0);
  signal \Gowin_EMPU_inst/targflash0_haddr\ : std_logic_vector(28 downto 0);
  signal \Gowin_EMPU_inst/targflash0_htrans\ : std_logic_vector(1 downto 0);
  signal \Gowin_EMPU_inst/targflash0_hsize\ : std_logic_vector(2 downto 0);
  signal \Gowin_EMPU_inst/targflash0_hburst\ : std_logic_vector(2 downto 0);
  signal \Gowin_EMPU_inst/targexp0_haddr\ : std_logic_vector(31 downto 0);
  signal \Gowin_EMPU_inst/targexp0_htrans\ : std_logic_vector(1 downto 0);
  signal \Gowin_EMPU_inst/targexp0_hsize\ : std_logic_vector(2 downto 0);
  signal \Gowin_EMPU_inst/targexp0_hburst\ : std_logic_vector(2 downto 0);
  signal \Gowin_EMPU_inst/targexp0_hprot\ : std_logic_vector(3 downto 0);
  signal \Gowin_EMPU_inst/targexp0_memattr\ : std_logic_vector(1 downto 0);
  signal \Gowin_EMPU_inst/targexp0_hmaster\ : std_logic_vector(3 downto 0);
  signal \Gowin_EMPU_inst/targexp0_hwdata\ : std_logic_vector(31 downto 0);
  signal \Gowin_EMPU_inst/targexp0_hwuser\ : std_logic_vector(3 downto 0);
  signal \Gowin_EMPU_inst/initexp0_hrdata\ : std_logic_vector(31 downto 0);
  signal \Gowin_EMPU_inst/initexp0_hruser\ : std_logic_vector(2 downto 0);
  signal \Gowin_EMPU_inst/apbtargexp2_pstrb\ : std_logic_vector(3 downto 0);
  signal \Gowin_EMPU_inst/apbtargexp2_pprot\ : std_logic_vector(2 downto 0);
  signal \Gowin_EMPU_inst/apbtargexp2_paddr\ : std_logic_vector(11 downto 0);
  signal \Gowin_EMPU_inst/apbtargexp2_pwdata\ : std_logic_vector(31 downto 0);
  signal \Gowin_EMPU_inst/u_flash_wrap/u_flash/targflash0_hrdata\ : std_logic_vector(31 downto 0);
  signal \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_0\ : std_logic_vector(31 downto 8);
  signal \Gowin_EMPU_inst/u_sram_subsystem/sram0_rdata\ : std_logic_vector(31 downto 0);
  signal \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_1\ : std_logic_vector(31 downto 8);
  signal \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_2\ : std_logic_vector(31 downto 8);
  signal \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_3\ : std_logic_vector(31 downto 8);
  signal \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\ : std_logic_vector(1 downto 0);
  signal \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\ : std_logic_vector(12 downto 0);
  signal \Gowin_EMPU_inst/u_flash_wrap/htrans_1d\ : std_logic_vector(1 downto 1);
  signal \Gowin_EMPU_inst/u_flash_wrap/rom_addr\ : std_logic_vector(12 downto 0);
begin
\Gowin_EMPU_inst/u_gpio/gpio0\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(0),
  IO => gpio(0),
  I => \Gowin_EMPU_inst/io_exp_output_o\(0),
  OEN => Gowin_EMPU_inst_u_gpio_n5);
\Gowin_EMPU_inst/u_gpio/gpio1\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(1),
  IO => gpio(1),
  I => \Gowin_EMPU_inst/io_exp_output_o\(1),
  OEN => Gowin_EMPU_inst_u_gpio_n7);
\Gowin_EMPU_inst/u_gpio/gpio2\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(2),
  IO => gpio(2),
  I => \Gowin_EMPU_inst/io_exp_output_o\(2),
  OEN => Gowin_EMPU_inst_u_gpio_n9);
\Gowin_EMPU_inst/u_gpio/gpio3\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(3),
  IO => gpio(3),
  I => \Gowin_EMPU_inst/io_exp_output_o\(3),
  OEN => Gowin_EMPU_inst_u_gpio_n11);
\Gowin_EMPU_inst/u_gpio/gpio4\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(4),
  IO => gpio(4),
  I => \Gowin_EMPU_inst/io_exp_output_o\(4),
  OEN => Gowin_EMPU_inst_u_gpio_n13);
\Gowin_EMPU_inst/u_gpio/gpio5\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(5),
  IO => gpio(5),
  I => \Gowin_EMPU_inst/io_exp_output_o\(5),
  OEN => Gowin_EMPU_inst_u_gpio_n15);
\Gowin_EMPU_inst/u_gpio/gpio6\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(6),
  IO => gpio(6),
  I => \Gowin_EMPU_inst/io_exp_output_o\(6),
  OEN => Gowin_EMPU_inst_u_gpio_n17);
\Gowin_EMPU_inst/u_gpio/gpio7\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(7),
  IO => gpio(7),
  I => \Gowin_EMPU_inst/io_exp_output_o\(7),
  OEN => Gowin_EMPU_inst_u_gpio_n19);
\Gowin_EMPU_inst/u_gpio/gpio8\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(8),
  IO => gpio(8),
  I => \Gowin_EMPU_inst/io_exp_output_o\(8),
  OEN => Gowin_EMPU_inst_u_gpio_n21);
\Gowin_EMPU_inst/u_gpio/gpio9\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(9),
  IO => gpio(9),
  I => \Gowin_EMPU_inst/io_exp_output_o\(9),
  OEN => Gowin_EMPU_inst_u_gpio_n23);
\Gowin_EMPU_inst/u_gpio/gpio10\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(10),
  IO => gpio(10),
  I => \Gowin_EMPU_inst/io_exp_output_o\(10),
  OEN => Gowin_EMPU_inst_u_gpio_n25);
\Gowin_EMPU_inst/u_gpio/gpio11\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(11),
  IO => gpio(11),
  I => \Gowin_EMPU_inst/io_exp_output_o\(11),
  OEN => Gowin_EMPU_inst_u_gpio_n27);
\Gowin_EMPU_inst/u_gpio/gpio12\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(12),
  IO => gpio(12),
  I => \Gowin_EMPU_inst/io_exp_output_o\(12),
  OEN => Gowin_EMPU_inst_u_gpio_n29);
\Gowin_EMPU_inst/u_gpio/gpio13\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(13),
  IO => gpio(13),
  I => \Gowin_EMPU_inst/io_exp_output_o\(13),
  OEN => Gowin_EMPU_inst_u_gpio_n31);
\Gowin_EMPU_inst/u_gpio/gpio14\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(14),
  IO => gpio(14),
  I => \Gowin_EMPU_inst/io_exp_output_o\(14),
  OEN => Gowin_EMPU_inst_u_gpio_n33);
\Gowin_EMPU_inst/u_gpio/gpio15\: IOBUF
port map (
  O => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(15),
  IO => gpio(15),
  I => \Gowin_EMPU_inst/io_exp_output_o\(15),
  OEN => Gowin_EMPU_inst_u_gpio_n35);
\Gowin_EMPU_inst/u_emcu_top\: EMCU
port map (
  IOEXPOUTPUTO(15 downto 0) => \Gowin_EMPU_inst/io_exp_output_o\(15 downto 0),
  IOEXPOUTPUTENO(15 downto 0) => \Gowin_EMPU_inst/io_exp_outputen_o\(15 downto 0),
  UART0TXDO => uart0_txd,
  UART1TXDO => uart1_txd,
  UART0BAUDTICK => Gowin_EMPU_inst_u_emcu_top_310_UART0BAUDTICK,
  UART1BAUDTICK => Gowin_EMPU_inst_u_emcu_top_310_UART1BAUDTICK,
  INTMONITOR => Gowin_EMPU_inst_u_emcu_top_310_INTMONITOR,
  MTXHRESETN => Gowin_EMPU_inst_u_flash_wrap_ye,
  SRAM0ADDR(12 downto 0) => \Gowin_EMPU_inst/sram0_addr\(12 downto 0),
  SRAM0WREN(3 downto 0) => \Gowin_EMPU_inst/sram0_wren\(3 downto 0),
  SRAM0WDATA(31 downto 0) => \Gowin_EMPU_inst/sram0_wdata\(31 downto 0),
  SRAM0CS => Gowin_EMPU_inst_sram0_cs,
  TARGFLASH0HSEL => Gowin_EMPU_inst_targflash0_hsel,
  TARGFLASH0HADDR(28 downto 0) => \Gowin_EMPU_inst/targflash0_haddr\(28 downto 0),
  TARGFLASH0HTRANS(1 downto 0) => \Gowin_EMPU_inst/targflash0_htrans\(1 downto 0),
  TARGFLASH0HSIZE(2 downto 0) => \Gowin_EMPU_inst/targflash0_hsize\(2 downto 0),
  TARGFLASH0HBURST(2 downto 0) => \Gowin_EMPU_inst/targflash0_hburst\(2 downto 0),
  TARGFLASH0HREADYMUX => Gowin_EMPU_inst_targflash0_hreadymux,
  TARGEXP0HSEL => Gowin_EMPU_inst_targexp0_hsel,
  TARGEXP0HADDR(31 downto 0) => \Gowin_EMPU_inst/targexp0_haddr\(31 downto 0),
  TARGEXP0HTRANS(1 downto 0) => \Gowin_EMPU_inst/targexp0_htrans\(1 downto 0),
  TARGEXP0HWRITE => Gowin_EMPU_inst_targexp0_hwrite,
  TARGEXP0HSIZE(2 downto 0) => \Gowin_EMPU_inst/targexp0_hsize\(2 downto 0),
  TARGEXP0HBURST(2 downto 0) => \Gowin_EMPU_inst/targexp0_hburst\(2 downto 0),
  TARGEXP0HPROT(3 downto 0) => \Gowin_EMPU_inst/targexp0_hprot\(3 downto 0),
  TARGEXP0MEMATTR(1 downto 0) => \Gowin_EMPU_inst/targexp0_memattr\(1 downto 0),
  TARGEXP0EXREQ => Gowin_EMPU_inst_targexp0_exreq,
  TARGEXP0HMASTER(3 downto 0) => \Gowin_EMPU_inst/targexp0_hmaster\(3 downto 0),
  TARGEXP0HWDATA(31 downto 0) => \Gowin_EMPU_inst/targexp0_hwdata\(31 downto 0),
  TARGEXP0HMASTLOCK => Gowin_EMPU_inst_targexp0_hmastlock,
  TARGEXP0HREADYMUX => Gowin_EMPU_inst_targexp0_hreadymux,
  TARGEXP0HAUSER => Gowin_EMPU_inst_targexp0_hauser,
  TARGEXP0HWUSER(3 downto 0) => \Gowin_EMPU_inst/targexp0_hwuser\(3 downto 0),
  INITEXP0HRDATA(31 downto 0) => \Gowin_EMPU_inst/initexp0_hrdata\(31 downto 0),
  INITEXP0HREADY => Gowin_EMPU_inst_initexp0_hready,
  INITEXP0HRESP => Gowin_EMPU_inst_initexp0_hresp,
  INITEXP0EXRESP => Gowin_EMPU_inst_initexp0_exresp,
  INITEXP0HRUSER(2 downto 0) => \Gowin_EMPU_inst/initexp0_hruser\(2 downto 0),
  APBTARGEXP2PSTRB(3 downto 0) => \Gowin_EMPU_inst/apbtargexp2_pstrb\(3 downto 0),
  APBTARGEXP2PPROT(2 downto 0) => \Gowin_EMPU_inst/apbtargexp2_pprot\(2 downto 0),
  APBTARGEXP2PSEL => Gowin_EMPU_inst_apbtargexp2_psel,
  APBTARGEXP2PENABLE => Gowin_EMPU_inst_apbtargexp2_penable,
  APBTARGEXP2PADDR(11 downto 0) => \Gowin_EMPU_inst/apbtargexp2_paddr\(11 downto 0),
  APBTARGEXP2PWRITE => Gowin_EMPU_inst_apbtargexp2_pwrite,
  APBTARGEXP2PWDATA(31 downto 0) => \Gowin_EMPU_inst/apbtargexp2_pwdata\(31 downto 0),
  DAPTDO => Gowin_EMPU_inst_u_emcu_top_310_DAPTDO,
  DAPJTAGNSW => Gowin_EMPU_inst_u_emcu_top_310_DAPJTAGNSW,
  DAPNTDOEN => Gowin_EMPU_inst_u_emcu_top_310_DAPNTDOEN,
  TPIUTRACEDATA(3) => Gowin_EMPU_inst_u_emcu_top_310_TPIUTRACEDATA3,
  TPIUTRACEDATA(2) => Gowin_EMPU_inst_u_emcu_top_310_TPIUTRACEDATA2,
  TPIUTRACEDATA(1) => Gowin_EMPU_inst_u_emcu_top_310_TPIUTRACEDATA1,
  TPIUTRACEDATA(0) => Gowin_EMPU_inst_trace_data,
  TPIUTRACECLK => Gowin_EMPU_inst_trace_clk,
  FCLK => sys_clk,
  PORESETN => reset_n,
  SYSRESETN => reset_n,
  RTCSRCCLK => GND_0,
  IOEXPINPUTI(15 downto 0) => \Gowin_EMPU_inst/u_gpio/io_exp_input_i\(15 downto 0),
  UART0RXDI => uart0_rxd,
  UART1RXDI => uart1_rxd,
  SRAM0RDATA(31 downto 0) => \Gowin_EMPU_inst/u_sram_subsystem/sram0_rdata\(31 downto 0),
  TARGFLASH0HRDATA(31 downto 0) => \Gowin_EMPU_inst/u_flash_wrap/u_flash/targflash0_hrdata\(31 downto 0),
  TARGFLASH0HRUSER(2) => GND_0,
  TARGFLASH0HRUSER(1) => GND_0,
  TARGFLASH0HRUSER(0) => GND_0,
  TARGFLASH0HRESP => GND_0,
  TARGFLASH0EXRESP => GND_0,
  TARGFLASH0HREADYOUT => Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout,
  TARGEXP0HRDATA(31) => GND_0,
  TARGEXP0HRDATA(30) => GND_0,
  TARGEXP0HRDATA(29) => GND_0,
  TARGEXP0HRDATA(28) => GND_0,
  TARGEXP0HRDATA(27) => GND_0,
  TARGEXP0HRDATA(26) => GND_0,
  TARGEXP0HRDATA(25) => GND_0,
  TARGEXP0HRDATA(24) => GND_0,
  TARGEXP0HRDATA(23) => GND_0,
  TARGEXP0HRDATA(22) => GND_0,
  TARGEXP0HRDATA(21) => GND_0,
  TARGEXP0HRDATA(20) => GND_0,
  TARGEXP0HRDATA(19) => GND_0,
  TARGEXP0HRDATA(18) => GND_0,
  TARGEXP0HRDATA(17) => GND_0,
  TARGEXP0HRDATA(16) => GND_0,
  TARGEXP0HRDATA(15) => GND_0,
  TARGEXP0HRDATA(14) => GND_0,
  TARGEXP0HRDATA(13) => GND_0,
  TARGEXP0HRDATA(12) => GND_0,
  TARGEXP0HRDATA(11) => GND_0,
  TARGEXP0HRDATA(10) => GND_0,
  TARGEXP0HRDATA(9) => GND_0,
  TARGEXP0HRDATA(8) => GND_0,
  TARGEXP0HRDATA(7) => GND_0,
  TARGEXP0HRDATA(6) => GND_0,
  TARGEXP0HRDATA(5) => GND_0,
  TARGEXP0HRDATA(4) => GND_0,
  TARGEXP0HRDATA(3) => GND_0,
  TARGEXP0HRDATA(2) => GND_0,
  TARGEXP0HRDATA(1) => GND_0,
  TARGEXP0HRDATA(0) => GND_0,
  TARGEXP0HREADYOUT => GND_0,
  TARGEXP0HRESP => VCC_0,
  TARGEXP0EXRESP => GND_0,
  TARGEXP0HRUSER(2) => GND_0,
  TARGEXP0HRUSER(1) => GND_0,
  TARGEXP0HRUSER(0) => GND_0,
  INITEXP0HSEL => GND_0,
  INITEXP0HADDR(31) => GND_0,
  INITEXP0HADDR(30) => GND_0,
  INITEXP0HADDR(29) => GND_0,
  INITEXP0HADDR(28) => GND_0,
  INITEXP0HADDR(27) => GND_0,
  INITEXP0HADDR(26) => GND_0,
  INITEXP0HADDR(25) => GND_0,
  INITEXP0HADDR(24) => GND_0,
  INITEXP0HADDR(23) => GND_0,
  INITEXP0HADDR(22) => GND_0,
  INITEXP0HADDR(21) => GND_0,
  INITEXP0HADDR(20) => GND_0,
  INITEXP0HADDR(19) => GND_0,
  INITEXP0HADDR(18) => GND_0,
  INITEXP0HADDR(17) => GND_0,
  INITEXP0HADDR(16) => GND_0,
  INITEXP0HADDR(15) => GND_0,
  INITEXP0HADDR(14) => GND_0,
  INITEXP0HADDR(13) => GND_0,
  INITEXP0HADDR(12) => GND_0,
  INITEXP0HADDR(11) => GND_0,
  INITEXP0HADDR(10) => GND_0,
  INITEXP0HADDR(9) => GND_0,
  INITEXP0HADDR(8) => GND_0,
  INITEXP0HADDR(7) => GND_0,
  INITEXP0HADDR(6) => GND_0,
  INITEXP0HADDR(5) => GND_0,
  INITEXP0HADDR(4) => GND_0,
  INITEXP0HADDR(3) => GND_0,
  INITEXP0HADDR(2) => GND_0,
  INITEXP0HADDR(1) => GND_0,
  INITEXP0HADDR(0) => GND_0,
  INITEXP0HTRANS(1) => GND_0,
  INITEXP0HTRANS(0) => GND_0,
  INITEXP0HWRITE => GND_0,
  INITEXP0HSIZE(2) => GND_0,
  INITEXP0HSIZE(1) => GND_0,
  INITEXP0HSIZE(0) => GND_0,
  INITEXP0HBURST(2) => GND_0,
  INITEXP0HBURST(1) => GND_0,
  INITEXP0HBURST(0) => GND_0,
  INITEXP0HPROT(3) => GND_0,
  INITEXP0HPROT(2) => GND_0,
  INITEXP0HPROT(1) => GND_0,
  INITEXP0HPROT(0) => GND_0,
  INITEXP0MEMATTR(1) => GND_0,
  INITEXP0MEMATTR(0) => GND_0,
  INITEXP0EXREQ => GND_0,
  INITEXP0HMASTER(3) => GND_0,
  INITEXP0HMASTER(2) => GND_0,
  INITEXP0HMASTER(1) => GND_0,
  INITEXP0HMASTER(0) => GND_0,
  INITEXP0HWDATA(31) => GND_0,
  INITEXP0HWDATA(30) => GND_0,
  INITEXP0HWDATA(29) => GND_0,
  INITEXP0HWDATA(28) => GND_0,
  INITEXP0HWDATA(27) => GND_0,
  INITEXP0HWDATA(26) => GND_0,
  INITEXP0HWDATA(25) => GND_0,
  INITEXP0HWDATA(24) => GND_0,
  INITEXP0HWDATA(23) => GND_0,
  INITEXP0HWDATA(22) => GND_0,
  INITEXP0HWDATA(21) => GND_0,
  INITEXP0HWDATA(20) => GND_0,
  INITEXP0HWDATA(19) => GND_0,
  INITEXP0HWDATA(18) => GND_0,
  INITEXP0HWDATA(17) => GND_0,
  INITEXP0HWDATA(16) => GND_0,
  INITEXP0HWDATA(15) => GND_0,
  INITEXP0HWDATA(14) => GND_0,
  INITEXP0HWDATA(13) => GND_0,
  INITEXP0HWDATA(12) => GND_0,
  INITEXP0HWDATA(11) => GND_0,
  INITEXP0HWDATA(10) => GND_0,
  INITEXP0HWDATA(9) => GND_0,
  INITEXP0HWDATA(8) => GND_0,
  INITEXP0HWDATA(7) => GND_0,
  INITEXP0HWDATA(6) => GND_0,
  INITEXP0HWDATA(5) => GND_0,
  INITEXP0HWDATA(4) => GND_0,
  INITEXP0HWDATA(3) => GND_0,
  INITEXP0HWDATA(2) => GND_0,
  INITEXP0HWDATA(1) => GND_0,
  INITEXP0HWDATA(0) => GND_0,
  INITEXP0HMASTLOCK => GND_0,
  INITEXP0HAUSER => GND_0,
  INITEXP0HWUSER(3) => GND_0,
  INITEXP0HWUSER(2) => GND_0,
  INITEXP0HWUSER(1) => GND_0,
  INITEXP0HWUSER(0) => GND_0,
  APBTARGEXP2PRDATA(31) => GND_0,
  APBTARGEXP2PRDATA(30) => GND_0,
  APBTARGEXP2PRDATA(29) => GND_0,
  APBTARGEXP2PRDATA(28) => GND_0,
  APBTARGEXP2PRDATA(27) => GND_0,
  APBTARGEXP2PRDATA(26) => GND_0,
  APBTARGEXP2PRDATA(25) => GND_0,
  APBTARGEXP2PRDATA(24) => GND_0,
  APBTARGEXP2PRDATA(23) => GND_0,
  APBTARGEXP2PRDATA(22) => GND_0,
  APBTARGEXP2PRDATA(21) => GND_0,
  APBTARGEXP2PRDATA(20) => GND_0,
  APBTARGEXP2PRDATA(19) => GND_0,
  APBTARGEXP2PRDATA(18) => GND_0,
  APBTARGEXP2PRDATA(17) => GND_0,
  APBTARGEXP2PRDATA(16) => GND_0,
  APBTARGEXP2PRDATA(15) => GND_0,
  APBTARGEXP2PRDATA(14) => GND_0,
  APBTARGEXP2PRDATA(13) => GND_0,
  APBTARGEXP2PRDATA(12) => GND_0,
  APBTARGEXP2PRDATA(11) => GND_0,
  APBTARGEXP2PRDATA(10) => GND_0,
  APBTARGEXP2PRDATA(9) => GND_0,
  APBTARGEXP2PRDATA(8) => GND_0,
  APBTARGEXP2PRDATA(7) => GND_0,
  APBTARGEXP2PRDATA(6) => GND_0,
  APBTARGEXP2PRDATA(5) => GND_0,
  APBTARGEXP2PRDATA(4) => GND_0,
  APBTARGEXP2PRDATA(3) => GND_0,
  APBTARGEXP2PRDATA(2) => GND_0,
  APBTARGEXP2PRDATA(1) => GND_0,
  APBTARGEXP2PRDATA(0) => GND_0,
  APBTARGEXP2PREADY => Gowin_EMPU_inst_u_gw_peripherals_interconnect_u_gw_cmsdk_apb2_slave_mux_apbtargexp2_pready,
  APBTARGEXP2PSLVERR => GND_0,
  MTXREMAP(3) => VCC_0,
  MTXREMAP(2) => VCC_0,
  MTXREMAP(1) => VCC_0,
  MTXREMAP(0) => VCC_0,
  DAPSWDITMS => GND_0,
  DAPTDI => GND_0,
  DAPNTRST => VCC_0,
  DAPSWCLKTCK => GND_0,
  GPINT(4) => GND_0,
  GPINT(3) => GND_0,
  GPINT(2) => GND_0,
  GPINT(1) => GND_0,
  GPINT(0) => GND_0,
  FLASHERR => GND_0,
  FLASHINT => GND_0);
\Gowin_EMPU_inst/u_flash_wrap/u_flash/flash_inst\: FLASH256K
port map (
  DOUT(31 downto 0) => \Gowin_EMPU_inst/u_flash_wrap/u_flash/targflash0_hrdata\(31 downto 0),
  XADR(6 downto 0) => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(12 downto 6),
  YADR(5 downto 0) => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(5 downto 0),
  XE => Gowin_EMPU_inst_u_flash_wrap_ye,
  YE => Gowin_EMPU_inst_u_flash_wrap_ye,
  SE => Gowin_EMPU_inst_u_flash_wrap_se_out,
  ERASE => GND_0,
  PROG => GND_0,
  NVSTR => GND_0,
  DIN(31) => GND_0,
  DIN(30) => GND_0,
  DIN(29) => GND_0,
  DIN(28) => GND_0,
  DIN(27) => GND_0,
  DIN(26) => GND_0,
  DIN(25) => GND_0,
  DIN(24) => GND_0,
  DIN(23) => GND_0,
  DIN(22) => GND_0,
  DIN(21) => GND_0,
  DIN(20) => GND_0,
  DIN(19) => GND_0,
  DIN(18) => GND_0,
  DIN(17) => GND_0,
  DIN(16) => GND_0,
  DIN(15) => GND_0,
  DIN(14) => GND_0,
  DIN(13) => GND_0,
  DIN(12) => GND_0,
  DIN(11) => GND_0,
  DIN(10) => GND_0,
  DIN(9) => GND_0,
  DIN(8) => GND_0,
  DIN(7) => GND_0,
  DIN(6) => GND_0,
  DIN(5) => GND_0,
  DIN(4) => GND_0,
  DIN(3) => GND_0,
  DIN(2) => GND_0,
  DIN(1) => GND_0,
  DIN(0) => GND_0);
\Gowin_EMPU_inst/u_sram_subsystem/bram_sdp_0\: SDPB
generic map (
  BIT_WIDTH_0 => 8,
  BIT_WIDTH_1 => 8,
  BLK_SEL_0 => "111",
  BLK_SEL_1 => "111",
  READ_MODE => '0',
  RESET_MODE => "SYNC"
)
port map (
  DO(31 downto 8) => \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_0\(31 downto 8),
  DO(7 downto 0) => \Gowin_EMPU_inst/u_sram_subsystem/sram0_rdata\(7 downto 0),
  DI(31) => GND_0,
  DI(30) => GND_0,
  DI(29) => GND_0,
  DI(28) => GND_0,
  DI(27) => GND_0,
  DI(26) => GND_0,
  DI(25) => GND_0,
  DI(24) => GND_0,
  DI(23) => GND_0,
  DI(22) => GND_0,
  DI(21) => GND_0,
  DI(20) => GND_0,
  DI(19) => GND_0,
  DI(18) => GND_0,
  DI(17) => GND_0,
  DI(16) => GND_0,
  DI(15) => GND_0,
  DI(14) => GND_0,
  DI(13) => GND_0,
  DI(12) => GND_0,
  DI(11) => GND_0,
  DI(10) => GND_0,
  DI(9) => GND_0,
  DI(8) => GND_0,
  DI(7 downto 0) => \Gowin_EMPU_inst/sram0_wdata\(7 downto 0),
  BLKSELA(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(0) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(0) => Gowin_EMPU_inst_sram0_cs,
  ADA(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADA(2) => GND_0,
  ADA(1) => GND_0,
  ADA(0) => GND_0,
  ADB(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADB(2) => GND_0,
  ADB(1) => GND_0,
  ADB(0) => GND_0,
  CLKA => sys_clk,
  CLKB => sys_clk,
  CEA => \Gowin_EMPU_inst/sram0_wren\(0),
  CEB => Gowin_EMPU_inst_u_sram_subsystem_n36,
  OCE => VCC_0,
  RESETA => GND_0,
  RESETB => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_sram_subsystem/bram_sdp_1\: SDPB
generic map (
  BIT_WIDTH_0 => 8,
  BIT_WIDTH_1 => 8,
  BLK_SEL_0 => "111",
  BLK_SEL_1 => "111",
  READ_MODE => '0',
  RESET_MODE => "SYNC"
)
port map (
  DO(31 downto 8) => \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_1\(31 downto 8),
  DO(7 downto 0) => \Gowin_EMPU_inst/u_sram_subsystem/sram0_rdata\(15 downto 8),
  DI(31) => GND_0,
  DI(30) => GND_0,
  DI(29) => GND_0,
  DI(28) => GND_0,
  DI(27) => GND_0,
  DI(26) => GND_0,
  DI(25) => GND_0,
  DI(24) => GND_0,
  DI(23) => GND_0,
  DI(22) => GND_0,
  DI(21) => GND_0,
  DI(20) => GND_0,
  DI(19) => GND_0,
  DI(18) => GND_0,
  DI(17) => GND_0,
  DI(16) => GND_0,
  DI(15) => GND_0,
  DI(14) => GND_0,
  DI(13) => GND_0,
  DI(12) => GND_0,
  DI(11) => GND_0,
  DI(10) => GND_0,
  DI(9) => GND_0,
  DI(8) => GND_0,
  DI(7 downto 0) => \Gowin_EMPU_inst/sram0_wdata\(15 downto 8),
  BLKSELA(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(0) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(0) => Gowin_EMPU_inst_sram0_cs,
  ADA(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADA(2) => GND_0,
  ADA(1) => GND_0,
  ADA(0) => GND_0,
  ADB(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADB(2) => GND_0,
  ADB(1) => GND_0,
  ADB(0) => GND_0,
  CLKA => sys_clk,
  CLKB => sys_clk,
  CEA => \Gowin_EMPU_inst/sram0_wren\(1),
  CEB => Gowin_EMPU_inst_u_sram_subsystem_n70,
  OCE => VCC_0,
  RESETA => GND_0,
  RESETB => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_sram_subsystem/bram_sdp_2\: SDPB
generic map (
  BIT_WIDTH_0 => 8,
  BIT_WIDTH_1 => 8,
  BLK_SEL_0 => "111",
  BLK_SEL_1 => "111",
  READ_MODE => '0',
  RESET_MODE => "SYNC"
)
port map (
  DO(31 downto 8) => \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_2\(31 downto 8),
  DO(7 downto 0) => \Gowin_EMPU_inst/u_sram_subsystem/sram0_rdata\(23 downto 16),
  DI(31) => GND_0,
  DI(30) => GND_0,
  DI(29) => GND_0,
  DI(28) => GND_0,
  DI(27) => GND_0,
  DI(26) => GND_0,
  DI(25) => GND_0,
  DI(24) => GND_0,
  DI(23) => GND_0,
  DI(22) => GND_0,
  DI(21) => GND_0,
  DI(20) => GND_0,
  DI(19) => GND_0,
  DI(18) => GND_0,
  DI(17) => GND_0,
  DI(16) => GND_0,
  DI(15) => GND_0,
  DI(14) => GND_0,
  DI(13) => GND_0,
  DI(12) => GND_0,
  DI(11) => GND_0,
  DI(10) => GND_0,
  DI(9) => GND_0,
  DI(8) => GND_0,
  DI(7 downto 0) => \Gowin_EMPU_inst/sram0_wdata\(23 downto 16),
  BLKSELA(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(0) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(0) => Gowin_EMPU_inst_sram0_cs,
  ADA(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADA(2) => GND_0,
  ADA(1) => GND_0,
  ADA(0) => GND_0,
  ADB(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADB(2) => GND_0,
  ADB(1) => GND_0,
  ADB(0) => GND_0,
  CLKA => sys_clk,
  CLKB => sys_clk,
  CEA => \Gowin_EMPU_inst/sram0_wren\(2),
  CEB => Gowin_EMPU_inst_u_sram_subsystem_n104,
  OCE => VCC_0,
  RESETA => GND_0,
  RESETB => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_sram_subsystem/bram_sdp_3\: SDPB
generic map (
  BIT_WIDTH_0 => 8,
  BIT_WIDTH_1 => 8,
  BLK_SEL_0 => "111",
  BLK_SEL_1 => "111",
  READ_MODE => '0',
  RESET_MODE => "SYNC"
)
port map (
  DO(31 downto 8) => \Gowin_EMPU_inst/u_sram_subsystem/nc_rdata_3\(31 downto 8),
  DO(7 downto 0) => \Gowin_EMPU_inst/u_sram_subsystem/sram0_rdata\(31 downto 24),
  DI(31) => GND_0,
  DI(30) => GND_0,
  DI(29) => GND_0,
  DI(28) => GND_0,
  DI(27) => GND_0,
  DI(26) => GND_0,
  DI(25) => GND_0,
  DI(24) => GND_0,
  DI(23) => GND_0,
  DI(22) => GND_0,
  DI(21) => GND_0,
  DI(20) => GND_0,
  DI(19) => GND_0,
  DI(18) => GND_0,
  DI(17) => GND_0,
  DI(16) => GND_0,
  DI(15) => GND_0,
  DI(14) => GND_0,
  DI(13) => GND_0,
  DI(12) => GND_0,
  DI(11) => GND_0,
  DI(10) => GND_0,
  DI(9) => GND_0,
  DI(8) => GND_0,
  DI(7 downto 0) => \Gowin_EMPU_inst/sram0_wdata\(31 downto 24),
  BLKSELA(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELA(0) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(2) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(1) => Gowin_EMPU_inst_sram0_cs,
  BLKSELB(0) => Gowin_EMPU_inst_sram0_cs,
  ADA(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADA(2) => GND_0,
  ADA(1) => GND_0,
  ADA(0) => GND_0,
  ADB(13 downto 3) => \Gowin_EMPU_inst/sram0_addr\(10 downto 0),
  ADB(2) => GND_0,
  ADB(1) => GND_0,
  ADB(0) => GND_0,
  CLKA => sys_clk,
  CLKB => sys_clk,
  CEA => \Gowin_EMPU_inst/sram0_wren\(3),
  CEB => Gowin_EMPU_inst_u_sram_subsystem_n138,
  OCE => VCC_0,
  RESETA => GND_0,
  RESETB => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/bus_cnt_0_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(0),
  D => Gowin_EMPU_inst_u_flash_wrap_n61,
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_12_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(12),
  D => \Gowin_EMPU_inst/targflash0_haddr\(14),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_11_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(11),
  D => \Gowin_EMPU_inst/targflash0_haddr\(13),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_10_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(10),
  D => \Gowin_EMPU_inst/targflash0_haddr\(12),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_9_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(9),
  D => \Gowin_EMPU_inst/targflash0_haddr\(11),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_8_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(8),
  D => \Gowin_EMPU_inst/targflash0_haddr\(10),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_7_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(7),
  D => \Gowin_EMPU_inst/targflash0_haddr\(9),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_6_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(6),
  D => \Gowin_EMPU_inst/targflash0_haddr\(8),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_5_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(5),
  D => \Gowin_EMPU_inst/targflash0_haddr\(7),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_4_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(4),
  D => \Gowin_EMPU_inst/targflash0_haddr\(6),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_3_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(3),
  D => \Gowin_EMPU_inst/targflash0_haddr\(5),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_2_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(2),
  D => \Gowin_EMPU_inst/targflash0_haddr\(4),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_1_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(1),
  D => \Gowin_EMPU_inst/targflash0_haddr\(3),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/haddr_1d_0_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(0),
  D => \Gowin_EMPU_inst/targflash0_haddr\(2),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/hsel_1d_s0\: DFFC
port map (
  Q => Gowin_EMPU_inst_u_flash_wrap_hsel_1d,
  D => Gowin_EMPU_inst_targflash0_hsel,
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/htrans_1d_1_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/htrans_1d\(1),
  D => \Gowin_EMPU_inst/targflash0_htrans\(1),
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/hready_out_1d_s0\: DFFC
port map (
  Q => Gowin_EMPU_inst_u_flash_wrap_hready_out_1d,
  D => Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout,
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/se_out_s0\: DFFC
port map (
  Q => Gowin_EMPU_inst_u_flash_wrap_se_out,
  D => Gowin_EMPU_inst_u_flash_wrap_n198,
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/bus_cnt_1_s0\: DFFC
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(1),
  D => Gowin_EMPU_inst_u_flash_wrap_n60,
  CLK => sys_clk,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/hready_out_s1\: DFFPE
generic map (
  INIT => '1'
)
port map (
  Q => Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout,
  D => Gowin_EMPU_inst_u_flash_wrap_n79,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_hready_out,
  PRESET => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_12_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(12),
  D => Gowin_EMPU_inst_u_flash_wrap_n129,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_11_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(11),
  D => Gowin_EMPU_inst_u_flash_wrap_n130,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_10_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(10),
  D => Gowin_EMPU_inst_u_flash_wrap_n131,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_9_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(9),
  D => Gowin_EMPU_inst_u_flash_wrap_n132,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_8_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(8),
  D => Gowin_EMPU_inst_u_flash_wrap_n133,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_7_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(7),
  D => Gowin_EMPU_inst_u_flash_wrap_n134,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_6_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(6),
  D => Gowin_EMPU_inst_u_flash_wrap_n135,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_5_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(5),
  D => Gowin_EMPU_inst_u_flash_wrap_n136,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_4_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(4),
  D => Gowin_EMPU_inst_u_flash_wrap_n137,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_3_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(3),
  D => Gowin_EMPU_inst_u_flash_wrap_n138,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_2_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(2),
  D => Gowin_EMPU_inst_u_flash_wrap_n139,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_1_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(1),
  D => Gowin_EMPU_inst_u_flash_wrap_n140,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_0_s3\: DFFNCE
generic map (
  INIT => '0'
)
port map (
  Q => \Gowin_EMPU_inst/u_flash_wrap/rom_addr\(0),
  D => Gowin_EMPU_inst_u_flash_wrap_n141,
  CLK => sys_clk,
  CE => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  CLEAR => Gowin_EMPU_inst_u_flash_wrap_n84);
\Gowin_EMPU_inst/u_flash_wrap/n61_s0\: LUT4
generic map (
  INIT => X"001F"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n61,
  I0 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I1 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(1),
  I2 => Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout,
  I3 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(0));
\Gowin_EMPU_inst/u_flash_wrap/n129_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n129,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(14),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(12),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n130_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n130,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(13),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(11),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n131_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n131,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(12),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(10),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n132_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n132,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(11),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(9),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n133_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n133,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(10),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(8),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n134_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n134,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(9),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(7),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n135_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n135,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(8),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(6),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n136_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n136,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(7),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(5),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n137_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n137,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(6),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(4),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n138_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n138,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(5),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(3),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n139_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n139,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(4),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(2),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n140_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n140,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(3),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(1),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n141_s0\: LUT4
generic map (
  INIT => X"CACC"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n141,
  I0 => \Gowin_EMPU_inst/targflash0_haddr\(2),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/haddr_1d\(0),
  I2 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_gw_peripherals_interconnect/u_gw_cmsdk_apb2_slave_mux/apbtargexp2_pready_s\: LUT3
generic map (
  INIT => X"1F"
)
port map (
  F => Gowin_EMPU_inst_u_gw_peripherals_interconnect_u_gw_cmsdk_apb2_slave_mux_apbtargexp2_pready,
  I0 => \Gowin_EMPU_inst/apbtargexp2_paddr\(11),
  I1 => \Gowin_EMPU_inst/apbtargexp2_paddr\(10),
  I2 => Gowin_EMPU_inst_apbtargexp2_psel);
\Gowin_EMPU_inst/u_flash_wrap/hready_out_s3\: LUT3
generic map (
  INIT => X"F4"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_hready_out,
  I0 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(0),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(1),
  I2 => Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout);
\Gowin_EMPU_inst/u_flash_wrap/n198_s1\: LUT4
generic map (
  INIT => X"0B00"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n198,
  I0 => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12,
  I1 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I2 => Gowin_EMPU_inst_u_flash_wrap_se_out,
  I3 => Gowin_EMPU_inst_u_flash_wrap_n129_4);
\Gowin_EMPU_inst/u_flash_wrap/n60_s1\: LUT3
generic map (
  INIT => X"14"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n60,
  I0 => Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout,
  I1 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(0),
  I2 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(1));
\Gowin_EMPU_inst/u_flash_wrap/n79_s1\: LUT3
generic map (
  INIT => X"7F"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n79,
  I0 => Gowin_EMPU_inst_targflash0_hsel,
  I1 => Gowin_EMPU_inst_u_flash_wrap_targflash0_readyout,
  I2 => \Gowin_EMPU_inst/targflash0_htrans\(1));
\Gowin_EMPU_inst/u_flash_wrap/n129_s1\: LUT2
generic map (
  INIT => X"1"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_n129_4,
  I0 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(0),
  I1 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(1));
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_12_s5\: LUT3
generic map (
  INIT => X"80"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12,
  I0 => Gowin_EMPU_inst_u_flash_wrap_hsel_1d,
  I1 => Gowin_EMPU_inst_u_flash_wrap_hready_out_1d,
  I2 => \Gowin_EMPU_inst/u_flash_wrap/htrans_1d\(1));
\Gowin_EMPU_inst/u_flash_wrap/rom_addr_12_s6\: LUT4
generic map (
  INIT => X"000B"
)
port map (
  F => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12_13,
  I0 => Gowin_EMPU_inst_u_flash_wrap_rom_addr_12,
  I1 => Gowin_EMPU_inst_u_flash_wrap_n79,
  I2 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(0),
  I3 => \Gowin_EMPU_inst/u_flash_wrap/bus_cnt\(1));
\Gowin_EMPU_inst/u_gpio/n5_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n5,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(0));
\Gowin_EMPU_inst/u_gpio/n7_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n7,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(1));
\Gowin_EMPU_inst/u_gpio/n9_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n9,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(2));
\Gowin_EMPU_inst/u_gpio/n11_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n11,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(3));
\Gowin_EMPU_inst/u_gpio/n13_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n13,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(4));
\Gowin_EMPU_inst/u_gpio/n15_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n15,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(5));
\Gowin_EMPU_inst/u_gpio/n17_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n17,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(6));
\Gowin_EMPU_inst/u_gpio/n19_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n19,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(7));
\Gowin_EMPU_inst/u_gpio/n21_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n21,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(8));
\Gowin_EMPU_inst/u_gpio/n23_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n23,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(9));
\Gowin_EMPU_inst/u_gpio/n25_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n25,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(10));
\Gowin_EMPU_inst/u_gpio/n27_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n27,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(11));
\Gowin_EMPU_inst/u_gpio/n29_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n29,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(12));
\Gowin_EMPU_inst/u_gpio/n31_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n31,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(13));
\Gowin_EMPU_inst/u_gpio/n33_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n33,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(14));
\Gowin_EMPU_inst/u_gpio/n35_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_gpio_n35,
  I => \Gowin_EMPU_inst/io_exp_outputen_o\(15));
\Gowin_EMPU_inst/u_flash_wrap/n84_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_flash_wrap_n84,
  I => Gowin_EMPU_inst_u_flash_wrap_ye);
\Gowin_EMPU_inst/u_sram_subsystem/n36_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_sram_subsystem_n36,
  I => \Gowin_EMPU_inst/sram0_wren\(0));
\Gowin_EMPU_inst/u_sram_subsystem/n70_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_sram_subsystem_n70,
  I => \Gowin_EMPU_inst/sram0_wren\(1));
\Gowin_EMPU_inst/u_sram_subsystem/n104_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_sram_subsystem_n104,
  I => \Gowin_EMPU_inst/sram0_wren\(2));
\Gowin_EMPU_inst/u_sram_subsystem/n138_s2\: INV
port map (
  O => Gowin_EMPU_inst_u_sram_subsystem_n138,
  I => \Gowin_EMPU_inst/sram0_wren\(3));
GND_s3: GND
port map (
  G => GND_0);
VCC_s4: VCC
port map (
  V => VCC_0);
\Gowin_EMPU_inst/sys_reset\: GSR
port map (
  GSRI => reset_n);
end beh;
