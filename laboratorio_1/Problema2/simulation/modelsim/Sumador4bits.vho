-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "02/19/2024 16:23:45"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sumador4bits IS
    PORT (
	Ent1 : IN std_logic_vector(3 DOWNTO 0);
	Ent2 : IN std_logic_vector(3 DOWNTO 0);
	Cout : BUFFER std_logic;
	Resultado : BUFFER std_logic_vector(3 DOWNTO 0);
	salida7seg0 : BUFFER std_logic_vector(6 DOWNTO 0);
	salida7seg1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END sumador4bits;

-- Design Ports Information
-- Cout	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado[3]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida7seg1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent1[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent2[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent1[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent2[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent1[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent2[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent1[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent2[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumador4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ent1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Ent2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Resultado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salida7seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida7seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Ent2[3]~input_o\ : std_logic;
SIGNAL \Ent1[3]~input_o\ : std_logic;
SIGNAL \Ent2[2]~input_o\ : std_logic;
SIGNAL \Ent1[2]~input_o\ : std_logic;
SIGNAL \Ent1[0]~input_o\ : std_logic;
SIGNAL \Ent2[0]~input_o\ : std_logic;
SIGNAL \Ent1[1]~input_o\ : std_logic;
SIGNAL \Ent2[1]~input_o\ : std_logic;
SIGNAL \Inst_sumador_completo1|Cout~combout\ : std_logic;
SIGNAL \Inst_sumador_completo3|Cout~combout\ : std_logic;
SIGNAL \Inst_sumador_medio|Suma~combout\ : std_logic;
SIGNAL \Inst_sumador_completo1|Suma~combout\ : std_logic;
SIGNAL \Inst_sumador_completo2|Suma~combout\ : std_logic;
SIGNAL \Inst_sumador_completo3|Suma~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Ent2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Inst_sumador_completo3|ALT_INV_Suma~combout\ : std_logic;
SIGNAL \Inst_sumador_completo2|ALT_INV_Suma~combout\ : std_logic;
SIGNAL \Inst_sumador_completo1|ALT_INV_Suma~combout\ : std_logic;
SIGNAL \Inst_sumador_medio|ALT_INV_Suma~combout\ : std_logic;
SIGNAL \Inst_sumador_completo1|ALT_INV_Cout~combout\ : std_logic;

BEGIN

ww_Ent1 <= Ent1;
ww_Ent2 <= Ent2;
Cout <= ww_Cout;
Resultado <= ww_Resultado;
salida7seg0 <= ww_salida7seg0;
salida7seg1 <= ww_salida7seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Ent2[0]~input_o\ <= NOT \Ent2[0]~input_o\;
\ALT_INV_Ent1[0]~input_o\ <= NOT \Ent1[0]~input_o\;
\ALT_INV_Ent2[1]~input_o\ <= NOT \Ent2[1]~input_o\;
\ALT_INV_Ent1[1]~input_o\ <= NOT \Ent1[1]~input_o\;
\ALT_INV_Ent2[2]~input_o\ <= NOT \Ent2[2]~input_o\;
\ALT_INV_Ent1[2]~input_o\ <= NOT \Ent1[2]~input_o\;
\ALT_INV_Ent2[3]~input_o\ <= NOT \Ent2[3]~input_o\;
\ALT_INV_Ent1[3]~input_o\ <= NOT \Ent1[3]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\Inst_sumador_completo3|ALT_INV_Suma~combout\ <= NOT \Inst_sumador_completo3|Suma~combout\;
\Inst_sumador_completo2|ALT_INV_Suma~combout\ <= NOT \Inst_sumador_completo2|Suma~combout\;
\Inst_sumador_completo1|ALT_INV_Suma~combout\ <= NOT \Inst_sumador_completo1|Suma~combout\;
\Inst_sumador_medio|ALT_INV_Suma~combout\ <= NOT \Inst_sumador_medio|Suma~combout\;
\Inst_sumador_completo1|ALT_INV_Cout~combout\ <= NOT \Inst_sumador_completo1|Cout~combout\;

-- Location: IOOBUF_X54_Y0_N53
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo3|Cout~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X72_Y0_N2
\Resultado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_medio|Suma~combout\,
	devoe => ww_devoe,
	o => ww_Resultado(0));

-- Location: IOOBUF_X64_Y0_N19
\Resultado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo1|Suma~combout\,
	devoe => ww_devoe,
	o => ww_Resultado(1));

-- Location: IOOBUF_X68_Y0_N2
\Resultado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo2|Suma~combout\,
	devoe => ww_devoe,
	o => ww_Resultado(2));

-- Location: IOOBUF_X64_Y0_N2
\Resultado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo3|Suma~combout\,
	devoe => ww_devoe,
	o => ww_Resultado(3));

-- Location: IOOBUF_X89_Y8_N39
\salida7seg0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_salida7seg0(0));

-- Location: IOOBUF_X89_Y11_N79
\salida7seg0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_salida7seg0(1));

-- Location: IOOBUF_X89_Y11_N96
\salida7seg0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_salida7seg0(2));

-- Location: IOOBUF_X89_Y4_N79
\salida7seg0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_salida7seg0(3));

-- Location: IOOBUF_X89_Y13_N56
\salida7seg0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_salida7seg0(4));

-- Location: IOOBUF_X89_Y13_N39
\salida7seg0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_salida7seg0(5));

-- Location: IOOBUF_X89_Y4_N96
\salida7seg0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_salida7seg0(6));

-- Location: IOOBUF_X89_Y6_N39
\salida7seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo3|Cout~combout\,
	devoe => ww_devoe,
	o => ww_salida7seg1(0));

-- Location: IOOBUF_X89_Y6_N56
\salida7seg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida7seg1(1));

-- Location: IOOBUF_X89_Y16_N39
\salida7seg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida7seg1(2));

-- Location: IOOBUF_X89_Y16_N56
\salida7seg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo3|Cout~combout\,
	devoe => ww_devoe,
	o => ww_salida7seg1(3));

-- Location: IOOBUF_X89_Y15_N39
\salida7seg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo3|Cout~combout\,
	devoe => ww_devoe,
	o => ww_salida7seg1(4));

-- Location: IOOBUF_X89_Y15_N56
\salida7seg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_sumador_completo3|Cout~combout\,
	devoe => ww_devoe,
	o => ww_salida7seg1(5));

-- Location: IOOBUF_X89_Y8_N56
\salida7seg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_salida7seg1(6));

-- Location: IOIBUF_X4_Y0_N1
\Ent2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent2(3),
	o => \Ent2[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\Ent1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent1(3),
	o => \Ent1[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\Ent2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent2(2),
	o => \Ent2[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\Ent1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent1(2),
	o => \Ent1[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\Ent1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent1(0),
	o => \Ent1[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\Ent2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent2(0),
	o => \Ent2[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Ent1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent1(1),
	o => \Ent1[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\Ent2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent2(1),
	o => \Ent2[1]~input_o\);

-- Location: MLABCELL_X25_Y1_N30
\Inst_sumador_completo1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_sumador_completo1|Cout~combout\ = ( \Ent1[1]~input_o\ & ( \Ent2[1]~input_o\ ) ) # ( !\Ent1[1]~input_o\ & ( \Ent2[1]~input_o\ & ( (\Ent1[0]~input_o\ & \Ent2[0]~input_o\) ) ) ) # ( \Ent1[1]~input_o\ & ( !\Ent2[1]~input_o\ & ( (\Ent1[0]~input_o\ & 
-- \Ent2[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Ent1[0]~input_o\,
	datac => \ALT_INV_Ent2[0]~input_o\,
	datae => \ALT_INV_Ent1[1]~input_o\,
	dataf => \ALT_INV_Ent2[1]~input_o\,
	combout => \Inst_sumador_completo1|Cout~combout\);

-- Location: MLABCELL_X25_Y1_N9
\Inst_sumador_completo3|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_sumador_completo3|Cout~combout\ = ( \Inst_sumador_completo1|Cout~combout\ & ( (!\Ent2[3]~input_o\ & (\Ent1[3]~input_o\ & ((\Ent1[2]~input_o\) # (\Ent2[2]~input_o\)))) # (\Ent2[3]~input_o\ & (((\Ent1[2]~input_o\) # (\Ent2[2]~input_o\)) # 
-- (\Ent1[3]~input_o\))) ) ) # ( !\Inst_sumador_completo1|Cout~combout\ & ( (!\Ent2[3]~input_o\ & (\Ent1[3]~input_o\ & (\Ent2[2]~input_o\ & \Ent1[2]~input_o\))) # (\Ent2[3]~input_o\ & (((\Ent2[2]~input_o\ & \Ent1[2]~input_o\)) # (\Ent1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ent2[3]~input_o\,
	datab => \ALT_INV_Ent1[3]~input_o\,
	datac => \ALT_INV_Ent2[2]~input_o\,
	datad => \ALT_INV_Ent1[2]~input_o\,
	dataf => \Inst_sumador_completo1|ALT_INV_Cout~combout\,
	combout => \Inst_sumador_completo3|Cout~combout\);

-- Location: MLABCELL_X25_Y1_N12
\Inst_sumador_medio|Suma\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_sumador_medio|Suma~combout\ = ( \Ent1[0]~input_o\ & ( !\Ent2[0]~input_o\ ) ) # ( !\Ent1[0]~input_o\ & ( \Ent2[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Ent2[0]~input_o\,
	dataf => \ALT_INV_Ent1[0]~input_o\,
	combout => \Inst_sumador_medio|Suma~combout\);

-- Location: MLABCELL_X25_Y1_N51
\Inst_sumador_completo1|Suma\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_sumador_completo1|Suma~combout\ = ( \Ent1[1]~input_o\ & ( \Ent2[1]~input_o\ & ( (\Ent2[0]~input_o\ & \Ent1[0]~input_o\) ) ) ) # ( !\Ent1[1]~input_o\ & ( \Ent2[1]~input_o\ & ( (!\Ent2[0]~input_o\) # (!\Ent1[0]~input_o\) ) ) ) # ( \Ent1[1]~input_o\ & 
-- ( !\Ent2[1]~input_o\ & ( (!\Ent2[0]~input_o\) # (!\Ent1[0]~input_o\) ) ) ) # ( !\Ent1[1]~input_o\ & ( !\Ent2[1]~input_o\ & ( (\Ent2[0]~input_o\ & \Ent1[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111101011111010111110100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ent2[0]~input_o\,
	datac => \ALT_INV_Ent1[0]~input_o\,
	datae => \ALT_INV_Ent1[1]~input_o\,
	dataf => \ALT_INV_Ent2[1]~input_o\,
	combout => \Inst_sumador_completo1|Suma~combout\);

-- Location: MLABCELL_X25_Y1_N54
\Inst_sumador_completo2|Suma\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_sumador_completo2|Suma~combout\ = ( \Ent1[1]~input_o\ & ( \Ent1[0]~input_o\ & ( !\Ent2[2]~input_o\ $ (!\Ent1[2]~input_o\ $ (((\Ent2[0]~input_o\) # (\Ent2[1]~input_o\)))) ) ) ) # ( !\Ent1[1]~input_o\ & ( \Ent1[0]~input_o\ & ( !\Ent2[2]~input_o\ $ 
-- (!\Ent1[2]~input_o\ $ (((\Ent2[1]~input_o\ & \Ent2[0]~input_o\)))) ) ) ) # ( \Ent1[1]~input_o\ & ( !\Ent1[0]~input_o\ & ( !\Ent2[1]~input_o\ $ (!\Ent2[2]~input_o\ $ (\Ent1[2]~input_o\)) ) ) ) # ( !\Ent1[1]~input_o\ & ( !\Ent1[0]~input_o\ & ( 
-- !\Ent2[2]~input_o\ $ (!\Ent1[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100011001101001100100110110110010010110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ent2[1]~input_o\,
	datab => \ALT_INV_Ent2[2]~input_o\,
	datac => \ALT_INV_Ent2[0]~input_o\,
	datad => \ALT_INV_Ent1[2]~input_o\,
	datae => \ALT_INV_Ent1[1]~input_o\,
	dataf => \ALT_INV_Ent1[0]~input_o\,
	combout => \Inst_sumador_completo2|Suma~combout\);

-- Location: MLABCELL_X25_Y1_N6
\Inst_sumador_completo3|Suma\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_sumador_completo3|Suma~combout\ = ( \Inst_sumador_completo1|Cout~combout\ & ( !\Ent2[3]~input_o\ $ (!\Ent1[3]~input_o\ $ (((\Ent1[2]~input_o\) # (\Ent2[2]~input_o\)))) ) ) # ( !\Inst_sumador_completo1|Cout~combout\ & ( !\Ent2[3]~input_o\ $ 
-- (!\Ent1[3]~input_o\ $ (((\Ent2[2]~input_o\ & \Ent1[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ent2[3]~input_o\,
	datab => \ALT_INV_Ent1[3]~input_o\,
	datac => \ALT_INV_Ent2[2]~input_o\,
	datad => \ALT_INV_Ent1[2]~input_o\,
	dataf => \Inst_sumador_completo1|ALT_INV_Cout~combout\,
	combout => \Inst_sumador_completo3|Suma~combout\);

-- Location: LABCELL_X83_Y6_N3
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Inst_sumador_completo2|Suma~combout\ & ( \Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_completo1|Suma~combout\ & \Inst_sumador_medio|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( 
-- \Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_completo1|Suma~combout\ & \Inst_sumador_medio|Suma~combout\) ) ) ) # ( \Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_completo1|Suma~combout\ & 
-- !\Inst_sumador_medio|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_completo1|Suma~combout\ & \Inst_sumador_medio|Suma~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_sumador_completo1|ALT_INV_Suma~combout\,
	datac => \Inst_sumador_medio|ALT_INV_Suma~combout\,
	datae => \Inst_sumador_completo2|ALT_INV_Suma~combout\,
	dataf => \Inst_sumador_completo3|ALT_INV_Suma~combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X83_Y6_N36
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Inst_sumador_completo2|Suma~combout\ & ( \Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_medio|Suma~combout\) # (\Inst_sumador_completo1|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( 
-- \Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_medio|Suma~combout\ & \Inst_sumador_completo1|Suma~combout\) ) ) ) # ( \Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( !\Inst_sumador_medio|Suma~combout\ $ 
-- (!\Inst_sumador_completo1|Suma~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_sumador_medio|ALT_INV_Suma~combout\,
	datac => \Inst_sumador_completo1|ALT_INV_Suma~combout\,
	datae => \Inst_sumador_completo2|ALT_INV_Suma~combout\,
	dataf => \Inst_sumador_completo3|ALT_INV_Suma~combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X83_Y6_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Inst_sumador_completo2|Suma~combout\ & ( \Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_medio|Suma~combout\) # (\Inst_sumador_completo1|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( 
-- !\Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_medio|Suma~combout\ & \Inst_sumador_completo1|Suma~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_sumador_medio|ALT_INV_Suma~combout\,
	datac => \Inst_sumador_completo1|ALT_INV_Suma~combout\,
	datae => \Inst_sumador_completo2|ALT_INV_Suma~combout\,
	dataf => \Inst_sumador_completo3|ALT_INV_Suma~combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X83_Y6_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Inst_sumador_completo2|Suma~combout\ & ( \Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_completo1|Suma~combout\ & \Inst_sumador_medio|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( 
-- \Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_completo1|Suma~combout\ & !\Inst_sumador_medio|Suma~combout\) ) ) ) # ( \Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( !\Inst_sumador_completo1|Suma~combout\ $ 
-- (\Inst_sumador_medio|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_completo1|Suma~combout\ & \Inst_sumador_medio|Suma~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101001011010010101010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_sumador_completo1|ALT_INV_Suma~combout\,
	datac => \Inst_sumador_medio|ALT_INV_Suma~combout\,
	datae => \Inst_sumador_completo2|ALT_INV_Suma~combout\,
	dataf => \Inst_sumador_completo3|ALT_INV_Suma~combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X83_Y6_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\Inst_sumador_completo2|Suma~combout\ & ( \Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_medio|Suma~combout\ & !\Inst_sumador_completo1|Suma~combout\) ) ) ) # ( \Inst_sumador_completo2|Suma~combout\ & ( 
-- !\Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_completo1|Suma~combout\) # (\Inst_sumador_medio|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( \Inst_sumador_medio|Suma~combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100111111001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_sumador_medio|ALT_INV_Suma~combout\,
	datac => \Inst_sumador_completo1|ALT_INV_Suma~combout\,
	datae => \Inst_sumador_completo2|ALT_INV_Suma~combout\,
	dataf => \Inst_sumador_completo3|ALT_INV_Suma~combout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X83_Y6_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Inst_sumador_completo2|Suma~combout\ & ( \Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_completo1|Suma~combout\ & \Inst_sumador_medio|Suma~combout\) ) ) ) # ( \Inst_sumador_completo2|Suma~combout\ & ( 
-- !\Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_completo1|Suma~combout\ & \Inst_sumador_medio|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_medio|Suma~combout\) # 
-- (\Inst_sumador_completo1|Suma~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_sumador_completo1|ALT_INV_Suma~combout\,
	datac => \Inst_sumador_medio|ALT_INV_Suma~combout\,
	datae => \Inst_sumador_completo2|ALT_INV_Suma~combout\,
	dataf => \Inst_sumador_completo3|ALT_INV_Suma~combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X83_Y6_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Inst_sumador_completo2|Suma~combout\ & ( \Inst_sumador_completo3|Suma~combout\ & ( (\Inst_sumador_completo1|Suma~combout\) # (\Inst_sumador_medio|Suma~combout\) ) ) ) # ( !\Inst_sumador_completo2|Suma~combout\ & ( 
-- \Inst_sumador_completo3|Suma~combout\ ) ) # ( \Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( (!\Inst_sumador_medio|Suma~combout\) # (!\Inst_sumador_completo1|Suma~combout\) ) ) ) # ( 
-- !\Inst_sumador_completo2|Suma~combout\ & ( !\Inst_sumador_completo3|Suma~combout\ & ( \Inst_sumador_completo1|Suma~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111001111110011111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_sumador_medio|ALT_INV_Suma~combout\,
	datac => \Inst_sumador_completo1|ALT_INV_Suma~combout\,
	datae => \Inst_sumador_completo2|ALT_INV_Suma~combout\,
	dataf => \Inst_sumador_completo3|ALT_INV_Suma~combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X36_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


