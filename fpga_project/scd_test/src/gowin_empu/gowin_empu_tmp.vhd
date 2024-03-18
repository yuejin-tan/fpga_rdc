--Copyright (C)2014-2023 Gowin Semiconductor Corporation.
--All rights reserved.
--File Title: Template file for instantiation
--GOWIN Version: V1.9.8.11 Education
--Part Number: GW1NSR-LV4CQN48PC6/I5
--Device: GW1NSR-4C
--Created Time: Wed Aug 30 20:18:34 2023

--Change the instance name and port connections to the signal names
----------Copy here to design--------

component Gowin_EMPU_Top
	port (
		sys_clk: in std_logic;
		gpio: inout std_logic_vector(15 downto 0);
		uart0_rxd: in std_logic;
		uart0_txd: out std_logic;
		uart1_rxd: in std_logic;
		uart1_txd: out std_logic;
		reset_n: in std_logic
	);
end component;

your_instance_name: Gowin_EMPU_Top
	port map (
		sys_clk => sys_clk_i,
		gpio => gpio_io,
		uart0_rxd => uart0_rxd_i,
		uart0_txd => uart0_txd_o,
		uart1_rxd => uart1_rxd_i,
		uart1_txd => uart1_txd_o,
		reset_n => reset_n_i
	);

----------Copy end-------------------
