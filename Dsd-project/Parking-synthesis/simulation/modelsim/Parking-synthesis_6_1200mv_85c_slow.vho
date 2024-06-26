-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/26/2024 21:57:01"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CU IS
    PORT (
	clk : IN std_logic;
	car_entered : IN std_logic;
	is_uni_car_entered : IN std_logic;
	car_exited : IN std_logic;
	is_uni_car_exited : IN std_logic;
	uni_parked_car : BUFFER std_logic_vector(31 DOWNTO 0);
	parked_car : BUFFER std_logic_vector(31 DOWNTO 0);
	uni_vacated_space : BUFFER std_logic_vector(31 DOWNTO 0);
	vacated_space : BUFFER std_logic_vector(31 DOWNTO 0);
	hour : BUFFER std_logic_vector(31 DOWNTO 0);
	uni_is_vacated_space : BUFFER std_logic;
	is_vacated_space : BUFFER std_logic
	);
END CU;

-- Design Ports Information
-- uni_parked_car[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[8]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[9]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[10]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[11]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[12]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[14]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[15]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[16]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[17]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[18]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[19]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[20]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[21]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[22]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[23]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[24]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[25]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[26]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[27]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[28]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[29]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[30]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[31]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[8]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[9]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[10]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[11]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[12]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[13]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[14]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[15]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[16]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[17]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[19]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[20]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[21]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[22]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[23]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[24]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[25]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[26]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[27]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[28]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[29]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[30]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[31]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[3]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[6]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[8]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[9]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[10]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[11]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[12]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[16]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[17]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[18]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[19]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[20]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[21]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[22]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[23]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[24]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[25]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[26]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[27]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[28]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[29]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[30]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[31]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[0]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[6]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[9]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[10]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[12]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[14]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[15]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[17]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[18]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[19]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[20]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[21]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[22]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[24]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[25]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[26]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[27]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[28]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[29]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[30]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[31]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[9]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[10]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[13]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[14]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[16]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[17]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[18]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[19]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[20]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[21]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[22]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[23]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[24]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[25]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[26]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[27]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[28]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[29]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[30]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[31]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_is_vacated_space	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_vacated_space	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_entered	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_entered	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_exited	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_exited	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_car_entered : std_logic;
SIGNAL ww_is_uni_car_entered : std_logic;
SIGNAL ww_car_exited : std_logic;
SIGNAL ww_is_uni_car_exited : std_logic;
SIGNAL ww_uni_parked_car : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_parked_car : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_uni_vacated_space : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_vacated_space : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_hour : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_uni_is_vacated_space : std_logic;
SIGNAL ww_is_vacated_space : std_logic;
SIGNAL \max_vacated_space[2]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \car_entered~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \car_exited~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uni_parked_car[0]~output_o\ : std_logic;
SIGNAL \uni_parked_car[1]~output_o\ : std_logic;
SIGNAL \uni_parked_car[2]~output_o\ : std_logic;
SIGNAL \uni_parked_car[3]~output_o\ : std_logic;
SIGNAL \uni_parked_car[4]~output_o\ : std_logic;
SIGNAL \uni_parked_car[5]~output_o\ : std_logic;
SIGNAL \uni_parked_car[6]~output_o\ : std_logic;
SIGNAL \uni_parked_car[7]~output_o\ : std_logic;
SIGNAL \uni_parked_car[8]~output_o\ : std_logic;
SIGNAL \uni_parked_car[9]~output_o\ : std_logic;
SIGNAL \uni_parked_car[10]~output_o\ : std_logic;
SIGNAL \uni_parked_car[11]~output_o\ : std_logic;
SIGNAL \uni_parked_car[12]~output_o\ : std_logic;
SIGNAL \uni_parked_car[13]~output_o\ : std_logic;
SIGNAL \uni_parked_car[14]~output_o\ : std_logic;
SIGNAL \uni_parked_car[15]~output_o\ : std_logic;
SIGNAL \uni_parked_car[16]~output_o\ : std_logic;
SIGNAL \uni_parked_car[17]~output_o\ : std_logic;
SIGNAL \uni_parked_car[18]~output_o\ : std_logic;
SIGNAL \uni_parked_car[19]~output_o\ : std_logic;
SIGNAL \uni_parked_car[20]~output_o\ : std_logic;
SIGNAL \uni_parked_car[21]~output_o\ : std_logic;
SIGNAL \uni_parked_car[22]~output_o\ : std_logic;
SIGNAL \uni_parked_car[23]~output_o\ : std_logic;
SIGNAL \uni_parked_car[24]~output_o\ : std_logic;
SIGNAL \uni_parked_car[25]~output_o\ : std_logic;
SIGNAL \uni_parked_car[26]~output_o\ : std_logic;
SIGNAL \uni_parked_car[27]~output_o\ : std_logic;
SIGNAL \uni_parked_car[28]~output_o\ : std_logic;
SIGNAL \uni_parked_car[29]~output_o\ : std_logic;
SIGNAL \uni_parked_car[30]~output_o\ : std_logic;
SIGNAL \uni_parked_car[31]~output_o\ : std_logic;
SIGNAL \parked_car[0]~output_o\ : std_logic;
SIGNAL \parked_car[1]~output_o\ : std_logic;
SIGNAL \parked_car[2]~output_o\ : std_logic;
SIGNAL \parked_car[3]~output_o\ : std_logic;
SIGNAL \parked_car[4]~output_o\ : std_logic;
SIGNAL \parked_car[5]~output_o\ : std_logic;
SIGNAL \parked_car[6]~output_o\ : std_logic;
SIGNAL \parked_car[7]~output_o\ : std_logic;
SIGNAL \parked_car[8]~output_o\ : std_logic;
SIGNAL \parked_car[9]~output_o\ : std_logic;
SIGNAL \parked_car[10]~output_o\ : std_logic;
SIGNAL \parked_car[11]~output_o\ : std_logic;
SIGNAL \parked_car[12]~output_o\ : std_logic;
SIGNAL \parked_car[13]~output_o\ : std_logic;
SIGNAL \parked_car[14]~output_o\ : std_logic;
SIGNAL \parked_car[15]~output_o\ : std_logic;
SIGNAL \parked_car[16]~output_o\ : std_logic;
SIGNAL \parked_car[17]~output_o\ : std_logic;
SIGNAL \parked_car[18]~output_o\ : std_logic;
SIGNAL \parked_car[19]~output_o\ : std_logic;
SIGNAL \parked_car[20]~output_o\ : std_logic;
SIGNAL \parked_car[21]~output_o\ : std_logic;
SIGNAL \parked_car[22]~output_o\ : std_logic;
SIGNAL \parked_car[23]~output_o\ : std_logic;
SIGNAL \parked_car[24]~output_o\ : std_logic;
SIGNAL \parked_car[25]~output_o\ : std_logic;
SIGNAL \parked_car[26]~output_o\ : std_logic;
SIGNAL \parked_car[27]~output_o\ : std_logic;
SIGNAL \parked_car[28]~output_o\ : std_logic;
SIGNAL \parked_car[29]~output_o\ : std_logic;
SIGNAL \parked_car[30]~output_o\ : std_logic;
SIGNAL \parked_car[31]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[0]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[1]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[2]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[3]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[4]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[5]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[6]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[7]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[8]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[9]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[10]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[11]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[12]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[13]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[14]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[15]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[16]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[17]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[18]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[19]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[20]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[21]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[22]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[23]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[24]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[25]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[26]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[27]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[28]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[29]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[30]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[31]~output_o\ : std_logic;
SIGNAL \vacated_space[0]~output_o\ : std_logic;
SIGNAL \vacated_space[1]~output_o\ : std_logic;
SIGNAL \vacated_space[2]~output_o\ : std_logic;
SIGNAL \vacated_space[3]~output_o\ : std_logic;
SIGNAL \vacated_space[4]~output_o\ : std_logic;
SIGNAL \vacated_space[5]~output_o\ : std_logic;
SIGNAL \vacated_space[6]~output_o\ : std_logic;
SIGNAL \vacated_space[7]~output_o\ : std_logic;
SIGNAL \vacated_space[8]~output_o\ : std_logic;
SIGNAL \vacated_space[9]~output_o\ : std_logic;
SIGNAL \vacated_space[10]~output_o\ : std_logic;
SIGNAL \vacated_space[11]~output_o\ : std_logic;
SIGNAL \vacated_space[12]~output_o\ : std_logic;
SIGNAL \vacated_space[13]~output_o\ : std_logic;
SIGNAL \vacated_space[14]~output_o\ : std_logic;
SIGNAL \vacated_space[15]~output_o\ : std_logic;
SIGNAL \vacated_space[16]~output_o\ : std_logic;
SIGNAL \vacated_space[17]~output_o\ : std_logic;
SIGNAL \vacated_space[18]~output_o\ : std_logic;
SIGNAL \vacated_space[19]~output_o\ : std_logic;
SIGNAL \vacated_space[20]~output_o\ : std_logic;
SIGNAL \vacated_space[21]~output_o\ : std_logic;
SIGNAL \vacated_space[22]~output_o\ : std_logic;
SIGNAL \vacated_space[23]~output_o\ : std_logic;
SIGNAL \vacated_space[24]~output_o\ : std_logic;
SIGNAL \vacated_space[25]~output_o\ : std_logic;
SIGNAL \vacated_space[26]~output_o\ : std_logic;
SIGNAL \vacated_space[27]~output_o\ : std_logic;
SIGNAL \vacated_space[28]~output_o\ : std_logic;
SIGNAL \vacated_space[29]~output_o\ : std_logic;
SIGNAL \vacated_space[30]~output_o\ : std_logic;
SIGNAL \vacated_space[31]~output_o\ : std_logic;
SIGNAL \hour[0]~output_o\ : std_logic;
SIGNAL \hour[1]~output_o\ : std_logic;
SIGNAL \hour[2]~output_o\ : std_logic;
SIGNAL \hour[3]~output_o\ : std_logic;
SIGNAL \hour[4]~output_o\ : std_logic;
SIGNAL \hour[5]~output_o\ : std_logic;
SIGNAL \hour[6]~output_o\ : std_logic;
SIGNAL \hour[7]~output_o\ : std_logic;
SIGNAL \hour[8]~output_o\ : std_logic;
SIGNAL \hour[9]~output_o\ : std_logic;
SIGNAL \hour[10]~output_o\ : std_logic;
SIGNAL \hour[11]~output_o\ : std_logic;
SIGNAL \hour[12]~output_o\ : std_logic;
SIGNAL \hour[13]~output_o\ : std_logic;
SIGNAL \hour[14]~output_o\ : std_logic;
SIGNAL \hour[15]~output_o\ : std_logic;
SIGNAL \hour[16]~output_o\ : std_logic;
SIGNAL \hour[17]~output_o\ : std_logic;
SIGNAL \hour[18]~output_o\ : std_logic;
SIGNAL \hour[19]~output_o\ : std_logic;
SIGNAL \hour[20]~output_o\ : std_logic;
SIGNAL \hour[21]~output_o\ : std_logic;
SIGNAL \hour[22]~output_o\ : std_logic;
SIGNAL \hour[23]~output_o\ : std_logic;
SIGNAL \hour[24]~output_o\ : std_logic;
SIGNAL \hour[25]~output_o\ : std_logic;
SIGNAL \hour[26]~output_o\ : std_logic;
SIGNAL \hour[27]~output_o\ : std_logic;
SIGNAL \hour[28]~output_o\ : std_logic;
SIGNAL \hour[29]~output_o\ : std_logic;
SIGNAL \hour[30]~output_o\ : std_logic;
SIGNAL \hour[31]~output_o\ : std_logic;
SIGNAL \uni_is_vacated_space~output_o\ : std_logic;
SIGNAL \is_vacated_space~output_o\ : std_logic;
SIGNAL \car_exited~input_o\ : std_logic;
SIGNAL \car_exited~inputclkctrl_outclk\ : std_logic;
SIGNAL \is_uni_car_exited~input_o\ : std_logic;
SIGNAL \uni_exited_car[1]~37_combout\ : std_logic;
SIGNAL \uni_exited_car[1]~38\ : std_logic;
SIGNAL \uni_exited_car[2]~39_combout\ : std_logic;
SIGNAL \uni_exited_car[2]~40\ : std_logic;
SIGNAL \uni_exited_car[3]~41_combout\ : std_logic;
SIGNAL \uni_exited_car[3]~42\ : std_logic;
SIGNAL \uni_exited_car[4]~43_combout\ : std_logic;
SIGNAL \uni_exited_car[4]~44\ : std_logic;
SIGNAL \uni_exited_car[5]~45_combout\ : std_logic;
SIGNAL \uni_exited_car[5]~46\ : std_logic;
SIGNAL \uni_exited_car[6]~47_combout\ : std_logic;
SIGNAL \uni_exited_car[6]~48\ : std_logic;
SIGNAL \uni_exited_car[7]~49_combout\ : std_logic;
SIGNAL \uni_exited_car[7]~50\ : std_logic;
SIGNAL \uni_exited_car[8]~51_combout\ : std_logic;
SIGNAL \uni_exited_car[8]~52\ : std_logic;
SIGNAL \uni_exited_car[9]~53_combout\ : std_logic;
SIGNAL \uni_exited_car[9]~54\ : std_logic;
SIGNAL \uni_exited_car[10]~55_combout\ : std_logic;
SIGNAL \uni_exited_car[10]~56\ : std_logic;
SIGNAL \uni_exited_car[11]~57_combout\ : std_logic;
SIGNAL \uni_exited_car[11]~58\ : std_logic;
SIGNAL \uni_exited_car[12]~59_combout\ : std_logic;
SIGNAL \uni_exited_car[12]~60\ : std_logic;
SIGNAL \uni_exited_car[13]~61_combout\ : std_logic;
SIGNAL \uni_exited_car[13]~62\ : std_logic;
SIGNAL \uni_exited_car[14]~63_combout\ : std_logic;
SIGNAL \uni_exited_car[14]~64\ : std_logic;
SIGNAL \uni_exited_car[15]~65_combout\ : std_logic;
SIGNAL \uni_exited_car[15]~66\ : std_logic;
SIGNAL \uni_exited_car[16]~67_combout\ : std_logic;
SIGNAL \uni_exited_car[16]~68\ : std_logic;
SIGNAL \uni_exited_car[17]~69_combout\ : std_logic;
SIGNAL \uni_exited_car[17]~70\ : std_logic;
SIGNAL \uni_exited_car[18]~71_combout\ : std_logic;
SIGNAL \uni_exited_car[18]~72\ : std_logic;
SIGNAL \uni_exited_car[19]~73_combout\ : std_logic;
SIGNAL \uni_exited_car[19]~74\ : std_logic;
SIGNAL \uni_exited_car[20]~75_combout\ : std_logic;
SIGNAL \uni_exited_car[20]~76\ : std_logic;
SIGNAL \uni_exited_car[21]~77_combout\ : std_logic;
SIGNAL \uni_exited_car[21]~78\ : std_logic;
SIGNAL \uni_exited_car[22]~79_combout\ : std_logic;
SIGNAL \uni_exited_car[22]~80\ : std_logic;
SIGNAL \uni_exited_car[23]~81_combout\ : std_logic;
SIGNAL \uni_exited_car[23]~82\ : std_logic;
SIGNAL \uni_exited_car[24]~83_combout\ : std_logic;
SIGNAL \uni_exited_car[24]~84\ : std_logic;
SIGNAL \uni_exited_car[25]~85_combout\ : std_logic;
SIGNAL \uni_exited_car[25]~86\ : std_logic;
SIGNAL \uni_exited_car[26]~87_combout\ : std_logic;
SIGNAL \uni_exited_car[26]~88\ : std_logic;
SIGNAL \uni_exited_car[27]~89_combout\ : std_logic;
SIGNAL \uni_exited_car[27]~90\ : std_logic;
SIGNAL \uni_exited_car[28]~91_combout\ : std_logic;
SIGNAL \uni_exited_car[28]~92\ : std_logic;
SIGNAL \uni_exited_car[29]~93_combout\ : std_logic;
SIGNAL \uni_exited_car[29]~94\ : std_logic;
SIGNAL \uni_exited_car[30]~95_combout\ : std_logic;
SIGNAL \car_entered~input_o\ : std_logic;
SIGNAL \car_entered~inputclkctrl_outclk\ : std_logic;
SIGNAL \uni_exited_car[30]~96\ : std_logic;
SIGNAL \uni_exited_car[31]~97_combout\ : std_logic;
SIGNAL \uni_entered_car[30]~92\ : std_logic;
SIGNAL \uni_entered_car[31]~93_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add8~1_cout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~61\ : std_logic;
SIGNAL \Add8~62_combout\ : std_logic;
SIGNAL \is_uni_car_entered~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \second_counter[0]~93_combout\ : std_logic;
SIGNAL \second_counter[1]~31_combout\ : std_logic;
SIGNAL \second_counter[1]~32\ : std_logic;
SIGNAL \second_counter[2]~33_combout\ : std_logic;
SIGNAL \second_counter[2]~34\ : std_logic;
SIGNAL \second_counter[3]~35_combout\ : std_logic;
SIGNAL \second_counter[3]~36\ : std_logic;
SIGNAL \second_counter[4]~37_combout\ : std_logic;
SIGNAL \second_counter[4]~38\ : std_logic;
SIGNAL \second_counter[5]~39_combout\ : std_logic;
SIGNAL \second_counter[5]~40\ : std_logic;
SIGNAL \second_counter[6]~41_combout\ : std_logic;
SIGNAL \second_counter[6]~42\ : std_logic;
SIGNAL \second_counter[7]~43_combout\ : std_logic;
SIGNAL \second_counter[7]~44\ : std_logic;
SIGNAL \second_counter[8]~45_combout\ : std_logic;
SIGNAL \second_counter[8]~46\ : std_logic;
SIGNAL \second_counter[9]~47_combout\ : std_logic;
SIGNAL \second_counter[9]~48\ : std_logic;
SIGNAL \second_counter[10]~49_combout\ : std_logic;
SIGNAL \second_counter[10]~50\ : std_logic;
SIGNAL \second_counter[11]~51_combout\ : std_logic;
SIGNAL \second_counter[11]~52\ : std_logic;
SIGNAL \second_counter[12]~53_combout\ : std_logic;
SIGNAL \second_counter[12]~54\ : std_logic;
SIGNAL \second_counter[13]~55_combout\ : std_logic;
SIGNAL \second_counter[13]~56\ : std_logic;
SIGNAL \second_counter[14]~57_combout\ : std_logic;
SIGNAL \second_counter[14]~58\ : std_logic;
SIGNAL \second_counter[15]~59_combout\ : std_logic;
SIGNAL \second_counter[15]~60\ : std_logic;
SIGNAL \second_counter[16]~61_combout\ : std_logic;
SIGNAL \second_counter[16]~62\ : std_logic;
SIGNAL \second_counter[17]~63_combout\ : std_logic;
SIGNAL \second_counter[17]~64\ : std_logic;
SIGNAL \second_counter[18]~65_combout\ : std_logic;
SIGNAL \second_counter[18]~66\ : std_logic;
SIGNAL \second_counter[19]~67_combout\ : std_logic;
SIGNAL \second_counter[19]~68\ : std_logic;
SIGNAL \second_counter[20]~69_combout\ : std_logic;
SIGNAL \second_counter[20]~70\ : std_logic;
SIGNAL \second_counter[21]~71_combout\ : std_logic;
SIGNAL \second_counter[21]~72\ : std_logic;
SIGNAL \second_counter[22]~73_combout\ : std_logic;
SIGNAL \second_counter[22]~74\ : std_logic;
SIGNAL \second_counter[23]~75_combout\ : std_logic;
SIGNAL \second_counter[23]~76\ : std_logic;
SIGNAL \second_counter[24]~77_combout\ : std_logic;
SIGNAL \second_counter[24]~78\ : std_logic;
SIGNAL \second_counter[25]~79_combout\ : std_logic;
SIGNAL \second_counter[25]~80\ : std_logic;
SIGNAL \second_counter[26]~81_combout\ : std_logic;
SIGNAL \second_counter[26]~82\ : std_logic;
SIGNAL \second_counter[27]~83_combout\ : std_logic;
SIGNAL \second_counter[27]~84\ : std_logic;
SIGNAL \second_counter[28]~85_combout\ : std_logic;
SIGNAL \second_counter[28]~86\ : std_logic;
SIGNAL \second_counter[29]~87_combout\ : std_logic;
SIGNAL \second_counter[29]~88\ : std_logic;
SIGNAL \second_counter[30]~89_combout\ : std_logic;
SIGNAL \second_counter[30]~90\ : std_logic;
SIGNAL \second_counter[31]~91_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \hour[0]~31_combout\ : std_logic;
SIGNAL \hour[0]~reg0_q\ : std_logic;
SIGNAL \hour[1]~32_combout\ : std_logic;
SIGNAL \hour[1]~reg0feeder_combout\ : std_logic;
SIGNAL \hour[1]~reg0_q\ : std_logic;
SIGNAL \hour[1]~33\ : std_logic;
SIGNAL \hour[2]~34_combout\ : std_logic;
SIGNAL \hour[2]~reg0_q\ : std_logic;
SIGNAL \hour[2]~35\ : std_logic;
SIGNAL \hour[3]~36_combout\ : std_logic;
SIGNAL \hour[3]~reg0_q\ : std_logic;
SIGNAL \hour[3]~37\ : std_logic;
SIGNAL \hour[4]~38_combout\ : std_logic;
SIGNAL \hour[4]~reg0_q\ : std_logic;
SIGNAL \hour[4]~39\ : std_logic;
SIGNAL \hour[5]~40_combout\ : std_logic;
SIGNAL \hour[5]~reg0_q\ : std_logic;
SIGNAL \hour[5]~41\ : std_logic;
SIGNAL \hour[6]~42_combout\ : std_logic;
SIGNAL \hour[6]~reg0_q\ : std_logic;
SIGNAL \hour[6]~43\ : std_logic;
SIGNAL \hour[7]~44_combout\ : std_logic;
SIGNAL \hour[7]~reg0_q\ : std_logic;
SIGNAL \hour[7]~45\ : std_logic;
SIGNAL \hour[8]~46_combout\ : std_logic;
SIGNAL \hour[8]~reg0_q\ : std_logic;
SIGNAL \hour[8]~47\ : std_logic;
SIGNAL \hour[9]~48_combout\ : std_logic;
SIGNAL \hour[9]~reg0_q\ : std_logic;
SIGNAL \hour[9]~49\ : std_logic;
SIGNAL \hour[10]~50_combout\ : std_logic;
SIGNAL \hour[10]~reg0_q\ : std_logic;
SIGNAL \hour[10]~51\ : std_logic;
SIGNAL \hour[11]~52_combout\ : std_logic;
SIGNAL \hour[11]~reg0_q\ : std_logic;
SIGNAL \max_vacated_space[2]~1_combout\ : std_logic;
SIGNAL \hour[11]~53\ : std_logic;
SIGNAL \hour[12]~54_combout\ : std_logic;
SIGNAL \hour[12]~reg0_q\ : std_logic;
SIGNAL \hour[12]~55\ : std_logic;
SIGNAL \hour[13]~56_combout\ : std_logic;
SIGNAL \hour[13]~reg0_q\ : std_logic;
SIGNAL \hour[13]~57\ : std_logic;
SIGNAL \hour[14]~58_combout\ : std_logic;
SIGNAL \hour[14]~reg0_q\ : std_logic;
SIGNAL \hour[14]~59\ : std_logic;
SIGNAL \hour[15]~60_combout\ : std_logic;
SIGNAL \hour[15]~reg0_q\ : std_logic;
SIGNAL \max_vacated_space[2]~2_combout\ : std_logic;
SIGNAL \max_vacated_space[2]~0_combout\ : std_logic;
SIGNAL \hour[15]~61\ : std_logic;
SIGNAL \hour[16]~62_combout\ : std_logic;
SIGNAL \hour[16]~reg0_q\ : std_logic;
SIGNAL \hour[16]~63\ : std_logic;
SIGNAL \hour[17]~64_combout\ : std_logic;
SIGNAL \hour[17]~reg0_q\ : std_logic;
SIGNAL \hour[17]~65\ : std_logic;
SIGNAL \hour[18]~66_combout\ : std_logic;
SIGNAL \hour[18]~reg0_q\ : std_logic;
SIGNAL \hour[18]~67\ : std_logic;
SIGNAL \hour[19]~68_combout\ : std_logic;
SIGNAL \hour[19]~reg0_q\ : std_logic;
SIGNAL \max_vacated_space[2]~3_combout\ : std_logic;
SIGNAL \max_vacated_space[2]~4_combout\ : std_logic;
SIGNAL \hour[19]~69\ : std_logic;
SIGNAL \hour[20]~70_combout\ : std_logic;
SIGNAL \hour[20]~reg0_q\ : std_logic;
SIGNAL \hour[20]~71\ : std_logic;
SIGNAL \hour[21]~72_combout\ : std_logic;
SIGNAL \hour[21]~reg0_q\ : std_logic;
SIGNAL \hour[21]~73\ : std_logic;
SIGNAL \hour[22]~74_combout\ : std_logic;
SIGNAL \hour[22]~reg0_q\ : std_logic;
SIGNAL \hour[22]~75\ : std_logic;
SIGNAL \hour[23]~76_combout\ : std_logic;
SIGNAL \hour[23]~reg0_q\ : std_logic;
SIGNAL \hour[23]~77\ : std_logic;
SIGNAL \hour[24]~78_combout\ : std_logic;
SIGNAL \hour[24]~reg0_q\ : std_logic;
SIGNAL \hour[24]~79\ : std_logic;
SIGNAL \hour[25]~80_combout\ : std_logic;
SIGNAL \hour[25]~reg0_q\ : std_logic;
SIGNAL \hour[25]~81\ : std_logic;
SIGNAL \hour[26]~82_combout\ : std_logic;
SIGNAL \hour[26]~reg0_q\ : std_logic;
SIGNAL \hour[26]~83\ : std_logic;
SIGNAL \hour[27]~84_combout\ : std_logic;
SIGNAL \hour[27]~reg0_q\ : std_logic;
SIGNAL \hour[27]~85\ : std_logic;
SIGNAL \hour[28]~86_combout\ : std_logic;
SIGNAL \hour[28]~reg0_q\ : std_logic;
SIGNAL \hour[28]~87\ : std_logic;
SIGNAL \hour[29]~88_combout\ : std_logic;
SIGNAL \hour[29]~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \hour[29]~89\ : std_logic;
SIGNAL \hour[30]~90_combout\ : std_logic;
SIGNAL \hour[30]~reg0_q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \max_vacated_space[2]~5_combout\ : std_logic;
SIGNAL \max_vacated_space[2]~6_combout\ : std_logic;
SIGNAL \max_vacated_space[2]~7_combout\ : std_logic;
SIGNAL \max_vacated_space[2]~8_combout\ : std_logic;
SIGNAL \hour[30]~91\ : std_logic;
SIGNAL \hour[31]~92_combout\ : std_logic;
SIGNAL \hour[31]~reg0_q\ : std_logic;
SIGNAL \max_vacated_space[2]~9_combout\ : std_logic;
SIGNAL \max_vacated_space[2]~9clkctrl_outclk\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add2~92_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~91_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~89_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~88_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~87_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~86_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add2~85_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add2~84_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add2~83_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add2~82_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add2~81_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add2~79_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~78_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~77_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~73_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~71_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add2~69_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add2~67_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add2~63_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \exited_car[1]~37_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add9~1_cout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~17_cout\ : std_logic;
SIGNAL \LessThan3~19_cout\ : std_logic;
SIGNAL \LessThan3~21_cout\ : std_logic;
SIGNAL \LessThan3~23_cout\ : std_logic;
SIGNAL \LessThan3~25_cout\ : std_logic;
SIGNAL \LessThan3~27_cout\ : std_logic;
SIGNAL \LessThan3~29_cout\ : std_logic;
SIGNAL \LessThan3~31_cout\ : std_logic;
SIGNAL \LessThan3~33_cout\ : std_logic;
SIGNAL \LessThan3~35_cout\ : std_logic;
SIGNAL \LessThan3~37_cout\ : std_logic;
SIGNAL \LessThan3~39_cout\ : std_logic;
SIGNAL \LessThan3~41_cout\ : std_logic;
SIGNAL \LessThan3~43_cout\ : std_logic;
SIGNAL \LessThan3~45_cout\ : std_logic;
SIGNAL \LessThan3~47_cout\ : std_logic;
SIGNAL \LessThan3~49_cout\ : std_logic;
SIGNAL \LessThan3~51_cout\ : std_logic;
SIGNAL \LessThan3~53_cout\ : std_logic;
SIGNAL \LessThan3~55_cout\ : std_logic;
SIGNAL \LessThan3~57_cout\ : std_logic;
SIGNAL \LessThan3~59_cout\ : std_logic;
SIGNAL \LessThan3~61_cout\ : std_logic;
SIGNAL \LessThan3~62_combout\ : std_logic;
SIGNAL \vacated_space~31_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \vacated_space~11_combout\ : std_logic;
SIGNAL \vacated_space~8_combout\ : std_logic;
SIGNAL \vacated_space~9_combout\ : std_logic;
SIGNAL \vacated_space~10_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \vacated_space~5_combout\ : std_logic;
SIGNAL \vacated_space~4_combout\ : std_logic;
SIGNAL \vacated_space~6_combout\ : std_logic;
SIGNAL \vacated_space~7_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \vacated_space~13_combout\ : std_logic;
SIGNAL \vacated_space~12_combout\ : std_logic;
SIGNAL \vacated_space~15_combout\ : std_logic;
SIGNAL \vacated_space~14_combout\ : std_logic;
SIGNAL \LessThan5~5_combout\ : std_logic;
SIGNAL \LessThan5~6_combout\ : std_logic;
SIGNAL \vacated_space~30_combout\ : std_logic;
SIGNAL \vacated_space~28_combout\ : std_logic;
SIGNAL \vacated_space~29_combout\ : std_logic;
SIGNAL \LessThan5~10_combout\ : std_logic;
SIGNAL \vacated_space~23_combout\ : std_logic;
SIGNAL \vacated_space~20_combout\ : std_logic;
SIGNAL \vacated_space~21_combout\ : std_logic;
SIGNAL \vacated_space~22_combout\ : std_logic;
SIGNAL \LessThan5~8_combout\ : std_logic;
SIGNAL \vacated_space~27_combout\ : std_logic;
SIGNAL \vacated_space~25_combout\ : std_logic;
SIGNAL \vacated_space~24_combout\ : std_logic;
SIGNAL \vacated_space~26_combout\ : std_logic;
SIGNAL \LessThan5~9_combout\ : std_logic;
SIGNAL \vacated_space~18_combout\ : std_logic;
SIGNAL \vacated_space~17_combout\ : std_logic;
SIGNAL \vacated_space~16_combout\ : std_logic;
SIGNAL \vacated_space~19_combout\ : std_logic;
SIGNAL \LessThan5~7_combout\ : std_logic;
SIGNAL \LessThan5~11_combout\ : std_logic;
SIGNAL \entered_car[8]~31_combout\ : std_logic;
SIGNAL \entered_car[0]~32_combout\ : std_logic;
SIGNAL \entered_car[1]~33_combout\ : std_logic;
SIGNAL \entered_car[1]~34\ : std_logic;
SIGNAL \entered_car[2]~35_combout\ : std_logic;
SIGNAL \entered_car[2]~36\ : std_logic;
SIGNAL \entered_car[3]~37_combout\ : std_logic;
SIGNAL \entered_car[3]~38\ : std_logic;
SIGNAL \entered_car[4]~39_combout\ : std_logic;
SIGNAL \entered_car[4]~40\ : std_logic;
SIGNAL \entered_car[5]~41_combout\ : std_logic;
SIGNAL \entered_car[5]~42\ : std_logic;
SIGNAL \entered_car[6]~43_combout\ : std_logic;
SIGNAL \entered_car[6]~44\ : std_logic;
SIGNAL \entered_car[7]~45_combout\ : std_logic;
SIGNAL \entered_car[7]~46\ : std_logic;
SIGNAL \entered_car[8]~47_combout\ : std_logic;
SIGNAL \entered_car[8]~48\ : std_logic;
SIGNAL \entered_car[9]~49_combout\ : std_logic;
SIGNAL \entered_car[9]~50\ : std_logic;
SIGNAL \entered_car[10]~51_combout\ : std_logic;
SIGNAL \entered_car[10]~52\ : std_logic;
SIGNAL \entered_car[11]~53_combout\ : std_logic;
SIGNAL \entered_car[11]~54\ : std_logic;
SIGNAL \entered_car[12]~55_combout\ : std_logic;
SIGNAL \entered_car[12]~56\ : std_logic;
SIGNAL \entered_car[13]~57_combout\ : std_logic;
SIGNAL \entered_car[13]~58\ : std_logic;
SIGNAL \entered_car[14]~59_combout\ : std_logic;
SIGNAL \entered_car[14]~60\ : std_logic;
SIGNAL \entered_car[15]~61_combout\ : std_logic;
SIGNAL \entered_car[15]~62\ : std_logic;
SIGNAL \entered_car[16]~63_combout\ : std_logic;
SIGNAL \entered_car[16]~64\ : std_logic;
SIGNAL \entered_car[17]~65_combout\ : std_logic;
SIGNAL \entered_car[17]~66\ : std_logic;
SIGNAL \entered_car[18]~67_combout\ : std_logic;
SIGNAL \entered_car[18]~68\ : std_logic;
SIGNAL \entered_car[19]~69_combout\ : std_logic;
SIGNAL \entered_car[19]~70\ : std_logic;
SIGNAL \entered_car[20]~71_combout\ : std_logic;
SIGNAL \entered_car[20]~72\ : std_logic;
SIGNAL \entered_car[21]~73_combout\ : std_logic;
SIGNAL \entered_car[21]~74\ : std_logic;
SIGNAL \entered_car[22]~75_combout\ : std_logic;
SIGNAL \entered_car[22]~76\ : std_logic;
SIGNAL \entered_car[23]~77_combout\ : std_logic;
SIGNAL \entered_car[23]~78\ : std_logic;
SIGNAL \entered_car[24]~79_combout\ : std_logic;
SIGNAL \entered_car[24]~80\ : std_logic;
SIGNAL \entered_car[25]~81_combout\ : std_logic;
SIGNAL \entered_car[25]~82\ : std_logic;
SIGNAL \entered_car[26]~83_combout\ : std_logic;
SIGNAL \entered_car[26]~84\ : std_logic;
SIGNAL \entered_car[27]~85_combout\ : std_logic;
SIGNAL \entered_car[27]~86\ : std_logic;
SIGNAL \entered_car[28]~87_combout\ : std_logic;
SIGNAL \entered_car[28]~88\ : std_logic;
SIGNAL \entered_car[29]~89_combout\ : std_logic;
SIGNAL \entered_car[29]~90\ : std_logic;
SIGNAL \entered_car[30]~91_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \exited_car[31]~31_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \exited_car[31]~32_combout\ : std_logic;
SIGNAL \exited_car[31]~33_combout\ : std_logic;
SIGNAL \exited_car[31]~34_combout\ : std_logic;
SIGNAL \exited_car[31]~35_combout\ : std_logic;
SIGNAL \exited_car[0]~36_combout\ : std_logic;
SIGNAL \exited_car[1]~38\ : std_logic;
SIGNAL \exited_car[2]~39_combout\ : std_logic;
SIGNAL \exited_car[2]~40\ : std_logic;
SIGNAL \exited_car[3]~41_combout\ : std_logic;
SIGNAL \exited_car[3]~42\ : std_logic;
SIGNAL \exited_car[4]~43_combout\ : std_logic;
SIGNAL \exited_car[4]~44\ : std_logic;
SIGNAL \exited_car[5]~45_combout\ : std_logic;
SIGNAL \exited_car[5]~46\ : std_logic;
SIGNAL \exited_car[6]~47_combout\ : std_logic;
SIGNAL \exited_car[6]~48\ : std_logic;
SIGNAL \exited_car[7]~49_combout\ : std_logic;
SIGNAL \exited_car[7]~50\ : std_logic;
SIGNAL \exited_car[8]~51_combout\ : std_logic;
SIGNAL \exited_car[8]~52\ : std_logic;
SIGNAL \exited_car[9]~53_combout\ : std_logic;
SIGNAL \exited_car[9]~54\ : std_logic;
SIGNAL \exited_car[10]~55_combout\ : std_logic;
SIGNAL \exited_car[10]~56\ : std_logic;
SIGNAL \exited_car[11]~57_combout\ : std_logic;
SIGNAL \exited_car[11]~feeder_combout\ : std_logic;
SIGNAL \exited_car[11]~58\ : std_logic;
SIGNAL \exited_car[12]~59_combout\ : std_logic;
SIGNAL \exited_car[12]~60\ : std_logic;
SIGNAL \exited_car[13]~61_combout\ : std_logic;
SIGNAL \exited_car[13]~62\ : std_logic;
SIGNAL \exited_car[14]~63_combout\ : std_logic;
SIGNAL \exited_car[14]~64\ : std_logic;
SIGNAL \exited_car[15]~65_combout\ : std_logic;
SIGNAL \exited_car[15]~66\ : std_logic;
SIGNAL \exited_car[16]~67_combout\ : std_logic;
SIGNAL \exited_car[16]~68\ : std_logic;
SIGNAL \exited_car[17]~69_combout\ : std_logic;
SIGNAL \exited_car[17]~70\ : std_logic;
SIGNAL \exited_car[18]~71_combout\ : std_logic;
SIGNAL \exited_car[18]~72\ : std_logic;
SIGNAL \exited_car[19]~73_combout\ : std_logic;
SIGNAL \exited_car[19]~74\ : std_logic;
SIGNAL \exited_car[20]~75_combout\ : std_logic;
SIGNAL \exited_car[20]~feeder_combout\ : std_logic;
SIGNAL \exited_car[20]~76\ : std_logic;
SIGNAL \exited_car[21]~77_combout\ : std_logic;
SIGNAL \exited_car[21]~78\ : std_logic;
SIGNAL \exited_car[22]~79_combout\ : std_logic;
SIGNAL \exited_car[22]~80\ : std_logic;
SIGNAL \exited_car[23]~81_combout\ : std_logic;
SIGNAL \exited_car[23]~82\ : std_logic;
SIGNAL \exited_car[24]~83_combout\ : std_logic;
SIGNAL \exited_car[24]~84\ : std_logic;
SIGNAL \exited_car[25]~85_combout\ : std_logic;
SIGNAL \exited_car[25]~feeder_combout\ : std_logic;
SIGNAL \exited_car[25]~86\ : std_logic;
SIGNAL \exited_car[26]~87_combout\ : std_logic;
SIGNAL \exited_car[26]~88\ : std_logic;
SIGNAL \exited_car[27]~89_combout\ : std_logic;
SIGNAL \exited_car[27]~90\ : std_logic;
SIGNAL \exited_car[28]~91_combout\ : std_logic;
SIGNAL \exited_car[28]~92\ : std_logic;
SIGNAL \exited_car[29]~93_combout\ : std_logic;
SIGNAL \exited_car[29]~94\ : std_logic;
SIGNAL \exited_car[30]~95_combout\ : std_logic;
SIGNAL \exited_car[30]~96\ : std_logic;
SIGNAL \exited_car[31]~97_combout\ : std_logic;
SIGNAL \entered_car[30]~92\ : std_logic;
SIGNAL \entered_car[31]~93_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~19_cout\ : std_logic;
SIGNAL \LessThan2~21_cout\ : std_logic;
SIGNAL \LessThan2~23_cout\ : std_logic;
SIGNAL \LessThan2~25_cout\ : std_logic;
SIGNAL \LessThan2~27_cout\ : std_logic;
SIGNAL \LessThan2~29_cout\ : std_logic;
SIGNAL \LessThan2~31_cout\ : std_logic;
SIGNAL \LessThan2~33_cout\ : std_logic;
SIGNAL \LessThan2~35_cout\ : std_logic;
SIGNAL \LessThan2~37_cout\ : std_logic;
SIGNAL \LessThan2~39_cout\ : std_logic;
SIGNAL \LessThan2~41_cout\ : std_logic;
SIGNAL \LessThan2~43_cout\ : std_logic;
SIGNAL \LessThan2~45_cout\ : std_logic;
SIGNAL \LessThan2~47_cout\ : std_logic;
SIGNAL \LessThan2~49_cout\ : std_logic;
SIGNAL \LessThan2~51_cout\ : std_logic;
SIGNAL \LessThan2~53_cout\ : std_logic;
SIGNAL \LessThan2~55_cout\ : std_logic;
SIGNAL \LessThan2~57_cout\ : std_logic;
SIGNAL \LessThan2~59_cout\ : std_logic;
SIGNAL \LessThan2~61_cout\ : std_logic;
SIGNAL \LessThan2~62_combout\ : std_logic;
SIGNAL \uni_vacated_space~31_combout\ : std_logic;
SIGNAL \uni_vacated_space~29_combout\ : std_logic;
SIGNAL \uni_vacated_space~30_combout\ : std_logic;
SIGNAL \uni_vacated_space~28_combout\ : std_logic;
SIGNAL \LessThan4~8_combout\ : std_logic;
SIGNAL \uni_vacated_space~16_combout\ : std_logic;
SIGNAL \uni_vacated_space~19_combout\ : std_logic;
SIGNAL \uni_vacated_space~18_combout\ : std_logic;
SIGNAL \uni_vacated_space~17_combout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \uni_vacated_space~26_combout\ : std_logic;
SIGNAL \uni_vacated_space~24_combout\ : std_logic;
SIGNAL \uni_vacated_space~27_combout\ : std_logic;
SIGNAL \uni_vacated_space~25_combout\ : std_logic;
SIGNAL \LessThan4~7_combout\ : std_logic;
SIGNAL \uni_vacated_space~21_combout\ : std_logic;
SIGNAL \uni_vacated_space~20_combout\ : std_logic;
SIGNAL \uni_vacated_space~23_combout\ : std_logic;
SIGNAL \uni_vacated_space~22_combout\ : std_logic;
SIGNAL \LessThan4~6_combout\ : std_logic;
SIGNAL \LessThan4~9_combout\ : std_logic;
SIGNAL \uni_vacated_space~2_combout\ : std_logic;
SIGNAL \uni_vacated_space~1_combout\ : std_logic;
SIGNAL \uni_vacated_space~3_combout\ : std_logic;
SIGNAL \uni_vacated_space~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \uni_vacated_space~11_combout\ : std_logic;
SIGNAL \uni_vacated_space~10_combout\ : std_logic;
SIGNAL \uni_vacated_space~9_combout\ : std_logic;
SIGNAL \uni_vacated_space~8_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \uni_vacated_space~13_combout\ : std_logic;
SIGNAL \uni_vacated_space~15_combout\ : std_logic;
SIGNAL \uni_vacated_space~14_combout\ : std_logic;
SIGNAL \uni_vacated_space~12_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \uni_vacated_space~4_combout\ : std_logic;
SIGNAL \uni_vacated_space~7_combout\ : std_logic;
SIGNAL \uni_vacated_space~5_combout\ : std_logic;
SIGNAL \uni_vacated_space~6_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \uni_entered_car[31]~31_combout\ : std_logic;
SIGNAL \uni_entered_car[0]~32_combout\ : std_logic;
SIGNAL \uni_entered_car[1]~33_combout\ : std_logic;
SIGNAL \uni_entered_car[1]~34\ : std_logic;
SIGNAL \uni_entered_car[2]~35_combout\ : std_logic;
SIGNAL \uni_entered_car[2]~36\ : std_logic;
SIGNAL \uni_entered_car[3]~37_combout\ : std_logic;
SIGNAL \uni_entered_car[3]~38\ : std_logic;
SIGNAL \uni_entered_car[4]~39_combout\ : std_logic;
SIGNAL \uni_entered_car[4]~40\ : std_logic;
SIGNAL \uni_entered_car[5]~41_combout\ : std_logic;
SIGNAL \uni_entered_car[5]~42\ : std_logic;
SIGNAL \uni_entered_car[6]~43_combout\ : std_logic;
SIGNAL \uni_entered_car[6]~44\ : std_logic;
SIGNAL \uni_entered_car[7]~45_combout\ : std_logic;
SIGNAL \uni_entered_car[7]~46\ : std_logic;
SIGNAL \uni_entered_car[8]~47_combout\ : std_logic;
SIGNAL \uni_entered_car[8]~48\ : std_logic;
SIGNAL \uni_entered_car[9]~49_combout\ : std_logic;
SIGNAL \uni_entered_car[9]~50\ : std_logic;
SIGNAL \uni_entered_car[10]~51_combout\ : std_logic;
SIGNAL \uni_entered_car[10]~52\ : std_logic;
SIGNAL \uni_entered_car[11]~53_combout\ : std_logic;
SIGNAL \uni_entered_car[11]~54\ : std_logic;
SIGNAL \uni_entered_car[12]~55_combout\ : std_logic;
SIGNAL \uni_entered_car[12]~56\ : std_logic;
SIGNAL \uni_entered_car[13]~57_combout\ : std_logic;
SIGNAL \uni_entered_car[13]~58\ : std_logic;
SIGNAL \uni_entered_car[14]~59_combout\ : std_logic;
SIGNAL \uni_entered_car[14]~60\ : std_logic;
SIGNAL \uni_entered_car[15]~61_combout\ : std_logic;
SIGNAL \uni_entered_car[15]~62\ : std_logic;
SIGNAL \uni_entered_car[16]~63_combout\ : std_logic;
SIGNAL \uni_entered_car[16]~64\ : std_logic;
SIGNAL \uni_entered_car[17]~65_combout\ : std_logic;
SIGNAL \uni_entered_car[17]~66\ : std_logic;
SIGNAL \uni_entered_car[18]~67_combout\ : std_logic;
SIGNAL \uni_entered_car[18]~68\ : std_logic;
SIGNAL \uni_entered_car[19]~69_combout\ : std_logic;
SIGNAL \uni_entered_car[19]~70\ : std_logic;
SIGNAL \uni_entered_car[20]~71_combout\ : std_logic;
SIGNAL \uni_entered_car[20]~72\ : std_logic;
SIGNAL \uni_entered_car[21]~73_combout\ : std_logic;
SIGNAL \uni_entered_car[21]~74\ : std_logic;
SIGNAL \uni_entered_car[22]~75_combout\ : std_logic;
SIGNAL \uni_entered_car[22]~76\ : std_logic;
SIGNAL \uni_entered_car[23]~77_combout\ : std_logic;
SIGNAL \uni_entered_car[23]~78\ : std_logic;
SIGNAL \uni_entered_car[24]~79_combout\ : std_logic;
SIGNAL \uni_entered_car[24]~80\ : std_logic;
SIGNAL \uni_entered_car[25]~81_combout\ : std_logic;
SIGNAL \uni_entered_car[25]~82\ : std_logic;
SIGNAL \uni_entered_car[26]~83_combout\ : std_logic;
SIGNAL \uni_entered_car[26]~84\ : std_logic;
SIGNAL \uni_entered_car[27]~85_combout\ : std_logic;
SIGNAL \uni_entered_car[27]~86\ : std_logic;
SIGNAL \uni_entered_car[28]~87_combout\ : std_logic;
SIGNAL \uni_entered_car[28]~88\ : std_logic;
SIGNAL \uni_entered_car[29]~89_combout\ : std_logic;
SIGNAL \uni_entered_car[29]~90\ : std_logic;
SIGNAL \uni_entered_car[30]~91_combout\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \uni_exited_car[31]~32_combout\ : std_logic;
SIGNAL \LessThan6~5_combout\ : std_logic;
SIGNAL \uni_exited_car[31]~31_combout\ : std_logic;
SIGNAL \uni_exited_car[31]~33_combout\ : std_logic;
SIGNAL \uni_exited_car[31]~34_combout\ : std_logic;
SIGNAL \uni_exited_car[31]~35_combout\ : std_logic;
SIGNAL \uni_exited_car[0]~36_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \vacated_space~0_combout\ : std_logic;
SIGNAL \vacated_space~1_combout\ : std_logic;
SIGNAL \vacated_space~2_combout\ : std_logic;
SIGNAL \vacated_space~3_combout\ : std_logic;
SIGNAL \LessThan4~10_combout\ : std_logic;
SIGNAL \LessThan5~12_combout\ : std_logic;
SIGNAL uni_exited_car : std_logic_vector(31 DOWNTO 0);
SIGNAL uni_entered_car : std_logic_vector(31 DOWNTO 0);
SIGNAL second_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL max_vacated_space : std_logic_vector(31 DOWNTO 0);
SIGNAL exited_car : std_logic_vector(31 DOWNTO 0);
SIGNAL entered_car : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_car_entered <= car_entered;
ww_is_uni_car_entered <= is_uni_car_entered;
ww_car_exited <= car_exited;
ww_is_uni_car_exited <= is_uni_car_exited;
uni_parked_car <= ww_uni_parked_car;
parked_car <= ww_parked_car;
uni_vacated_space <= ww_uni_vacated_space;
vacated_space <= ww_vacated_space;
hour <= ww_hour;
uni_is_vacated_space <= ww_uni_is_vacated_space;
is_vacated_space <= ww_is_vacated_space;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\max_vacated_space[2]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \max_vacated_space[2]~9_combout\);

\car_entered~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \car_entered~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\car_exited~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \car_exited~input_o\);

-- Location: IOOBUF_X63_Y67_N9
\uni_parked_car[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~0_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[0]~output_o\);

-- Location: IOOBUF_X81_Y49_N2
\uni_parked_car[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~2_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[1]~output_o\);

-- Location: IOOBUF_X81_Y65_N9
\uni_parked_car[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~4_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[2]~output_o\);

-- Location: IOOBUF_X65_Y67_N2
\uni_parked_car[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~6_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[3]~output_o\);

-- Location: IOOBUF_X68_Y67_N2
\uni_parked_car[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~8_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[4]~output_o\);

-- Location: IOOBUF_X81_Y49_N16
\uni_parked_car[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~10_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[5]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\uni_parked_car[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~12_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[6]~output_o\);

-- Location: IOOBUF_X81_Y44_N2
\uni_parked_car[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~14_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[7]~output_o\);

-- Location: IOOBUF_X70_Y67_N23
\uni_parked_car[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~16_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[8]~output_o\);

-- Location: IOOBUF_X81_Y47_N2
\uni_parked_car[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~18_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[9]~output_o\);

-- Location: IOOBUF_X70_Y67_N2
\uni_parked_car[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~20_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[10]~output_o\);

-- Location: IOOBUF_X81_Y53_N9
\uni_parked_car[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~22_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[11]~output_o\);

-- Location: IOOBUF_X81_Y43_N2
\uni_parked_car[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~24_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[12]~output_o\);

-- Location: IOOBUF_X81_Y49_N9
\uni_parked_car[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~26_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[13]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\uni_parked_car[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~28_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[14]~output_o\);

-- Location: IOOBUF_X81_Y44_N9
\uni_parked_car[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~30_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[15]~output_o\);

-- Location: IOOBUF_X81_Y58_N9
\uni_parked_car[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~32_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[16]~output_o\);

-- Location: IOOBUF_X81_Y47_N9
\uni_parked_car[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~34_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[17]~output_o\);

-- Location: IOOBUF_X65_Y67_N16
\uni_parked_car[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~36_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[18]~output_o\);

-- Location: IOOBUF_X65_Y67_N9
\uni_parked_car[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~38_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[19]~output_o\);

-- Location: IOOBUF_X81_Y46_N2
\uni_parked_car[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~40_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[20]~output_o\);

-- Location: IOOBUF_X63_Y67_N16
\uni_parked_car[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~42_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[21]~output_o\);

-- Location: IOOBUF_X81_Y56_N2
\uni_parked_car[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~44_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[22]~output_o\);

-- Location: IOOBUF_X81_Y50_N9
\uni_parked_car[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~46_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[23]~output_o\);

-- Location: IOOBUF_X81_Y65_N23
\uni_parked_car[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~48_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[24]~output_o\);

-- Location: IOOBUF_X81_Y55_N9
\uni_parked_car[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~50_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[25]~output_o\);

-- Location: IOOBUF_X81_Y42_N2
\uni_parked_car[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~52_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[26]~output_o\);

-- Location: IOOBUF_X81_Y42_N9
\uni_parked_car[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~54_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[27]~output_o\);

-- Location: IOOBUF_X81_Y41_N2
\uni_parked_car[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~56_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[28]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\uni_parked_car[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~58_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[29]~output_o\);

-- Location: IOOBUF_X81_Y19_N2
\uni_parked_car[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~60_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[30]~output_o\);

-- Location: IOOBUF_X81_Y64_N23
\uni_parked_car[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~62_combout\,
	devoe => ww_devoe,
	o => \uni_parked_car[31]~output_o\);

-- Location: IOOBUF_X81_Y26_N2
\parked_car[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~0_combout\,
	devoe => ww_devoe,
	o => \parked_car[0]~output_o\);

-- Location: IOOBUF_X56_Y67_N9
\parked_car[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~2_combout\,
	devoe => ww_devoe,
	o => \parked_car[1]~output_o\);

-- Location: IOOBUF_X56_Y67_N23
\parked_car[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~4_combout\,
	devoe => ww_devoe,
	o => \parked_car[2]~output_o\);

-- Location: IOOBUF_X81_Y46_N9
\parked_car[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~6_combout\,
	devoe => ww_devoe,
	o => \parked_car[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\parked_car[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~8_combout\,
	devoe => ww_devoe,
	o => \parked_car[4]~output_o\);

-- Location: IOOBUF_X56_Y67_N16
\parked_car[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~10_combout\,
	devoe => ww_devoe,
	o => \parked_car[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\parked_car[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~12_combout\,
	devoe => ww_devoe,
	o => \parked_car[6]~output_o\);

-- Location: IOOBUF_X63_Y67_N2
\parked_car[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~14_combout\,
	devoe => ww_devoe,
	o => \parked_car[7]~output_o\);

-- Location: IOOBUF_X81_Y39_N2
\parked_car[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~16_combout\,
	devoe => ww_devoe,
	o => \parked_car[8]~output_o\);

-- Location: IOOBUF_X81_Y26_N9
\parked_car[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~18_combout\,
	devoe => ww_devoe,
	o => \parked_car[9]~output_o\);

-- Location: IOOBUF_X81_Y39_N9
\parked_car[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~20_combout\,
	devoe => ww_devoe,
	o => \parked_car[10]~output_o\);

-- Location: IOOBUF_X81_Y21_N9
\parked_car[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~22_combout\,
	devoe => ww_devoe,
	o => \parked_car[11]~output_o\);

-- Location: IOOBUF_X81_Y53_N2
\parked_car[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~24_combout\,
	devoe => ww_devoe,
	o => \parked_car[12]~output_o\);

-- Location: IOOBUF_X81_Y55_N2
\parked_car[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~26_combout\,
	devoe => ww_devoe,
	o => \parked_car[13]~output_o\);

-- Location: IOOBUF_X81_Y50_N2
\parked_car[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~28_combout\,
	devoe => ww_devoe,
	o => \parked_car[14]~output_o\);

-- Location: IOOBUF_X81_Y52_N2
\parked_car[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~30_combout\,
	devoe => ww_devoe,
	o => \parked_car[15]~output_o\);

-- Location: IOOBUF_X81_Y16_N2
\parked_car[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~32_combout\,
	devoe => ww_devoe,
	o => \parked_car[16]~output_o\);

-- Location: IOOBUF_X81_Y25_N2
\parked_car[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~34_combout\,
	devoe => ww_devoe,
	o => \parked_car[17]~output_o\);

-- Location: IOOBUF_X58_Y67_N9
\parked_car[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~36_combout\,
	devoe => ww_devoe,
	o => \parked_car[18]~output_o\);

-- Location: IOOBUF_X52_Y67_N2
\parked_car[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~38_combout\,
	devoe => ww_devoe,
	o => \parked_car[19]~output_o\);

-- Location: IOOBUF_X61_Y67_N9
\parked_car[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~40_combout\,
	devoe => ww_devoe,
	o => \parked_car[20]~output_o\);

-- Location: IOOBUF_X81_Y20_N2
\parked_car[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~42_combout\,
	devoe => ww_devoe,
	o => \parked_car[21]~output_o\);

-- Location: IOOBUF_X81_Y20_N9
\parked_car[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~44_combout\,
	devoe => ww_devoe,
	o => \parked_car[22]~output_o\);

-- Location: IOOBUF_X81_Y52_N16
\parked_car[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~46_combout\,
	devoe => ww_devoe,
	o => \parked_car[23]~output_o\);

-- Location: IOOBUF_X81_Y25_N16
\parked_car[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~48_combout\,
	devoe => ww_devoe,
	o => \parked_car[24]~output_o\);

-- Location: IOOBUF_X81_Y25_N9
\parked_car[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~50_combout\,
	devoe => ww_devoe,
	o => \parked_car[25]~output_o\);

-- Location: IOOBUF_X81_Y46_N16
\parked_car[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~52_combout\,
	devoe => ww_devoe,
	o => \parked_car[26]~output_o\);

-- Location: IOOBUF_X58_Y67_N2
\parked_car[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~54_combout\,
	devoe => ww_devoe,
	o => \parked_car[27]~output_o\);

-- Location: IOOBUF_X61_Y67_N2
\parked_car[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~56_combout\,
	devoe => ww_devoe,
	o => \parked_car[28]~output_o\);

-- Location: IOOBUF_X81_Y23_N9
\parked_car[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~58_combout\,
	devoe => ww_devoe,
	o => \parked_car[29]~output_o\);

-- Location: IOOBUF_X81_Y21_N2
\parked_car[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~60_combout\,
	devoe => ww_devoe,
	o => \parked_car[30]~output_o\);

-- Location: IOOBUF_X81_Y52_N9
\parked_car[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~62_combout\,
	devoe => ww_devoe,
	o => \parked_car[31]~output_o\);

-- Location: IOOBUF_X81_Y8_N9
\uni_vacated_space[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~0_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[0]~output_o\);

-- Location: IOOBUF_X81_Y7_N2
\uni_vacated_space[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~1_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[1]~output_o\);

-- Location: IOOBUF_X81_Y64_N9
\uni_vacated_space[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~2_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[2]~output_o\);

-- Location: IOOBUF_X81_Y8_N2
\uni_vacated_space[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~3_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[3]~output_o\);

-- Location: IOOBUF_X81_Y65_N2
\uni_vacated_space[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~4_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[4]~output_o\);

-- Location: IOOBUF_X81_Y59_N2
\uni_vacated_space[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~5_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[5]~output_o\);

-- Location: IOOBUF_X81_Y61_N2
\uni_vacated_space[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~6_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[6]~output_o\);

-- Location: IOOBUF_X81_Y56_N9
\uni_vacated_space[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~7_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[7]~output_o\);

-- Location: IOOBUF_X81_Y16_N9
\uni_vacated_space[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~8_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[8]~output_o\);

-- Location: IOOBUF_X81_Y64_N16
\uni_vacated_space[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~9_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[9]~output_o\);

-- Location: IOOBUF_X81_Y58_N2
\uni_vacated_space[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~10_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[10]~output_o\);

-- Location: IOOBUF_X81_Y63_N2
\uni_vacated_space[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~11_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[11]~output_o\);

-- Location: IOOBUF_X81_Y12_N9
\uni_vacated_space[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~12_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[12]~output_o\);

-- Location: IOOBUF_X81_Y10_N2
\uni_vacated_space[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~13_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[13]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\uni_vacated_space[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~14_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[14]~output_o\);

-- Location: IOOBUF_X81_Y59_N9
\uni_vacated_space[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~15_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[15]~output_o\);

-- Location: IOOBUF_X81_Y62_N16
\uni_vacated_space[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~16_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[16]~output_o\);

-- Location: IOOBUF_X81_Y6_N9
\uni_vacated_space[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~17_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[17]~output_o\);

-- Location: IOOBUF_X81_Y61_N9
\uni_vacated_space[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~18_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[18]~output_o\);

-- Location: IOOBUF_X81_Y17_N9
\uni_vacated_space[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~19_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[19]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\uni_vacated_space[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~20_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[20]~output_o\);

-- Location: IOOBUF_X81_Y4_N16
\uni_vacated_space[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~21_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[21]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\uni_vacated_space[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~22_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[22]~output_o\);

-- Location: IOOBUF_X81_Y5_N2
\uni_vacated_space[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~23_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[23]~output_o\);

-- Location: IOOBUF_X81_Y6_N16
\uni_vacated_space[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~24_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[24]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\uni_vacated_space[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~25_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[25]~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\uni_vacated_space[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~26_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[26]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\uni_vacated_space[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~27_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[27]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\uni_vacated_space[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~28_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[28]~output_o\);

-- Location: IOOBUF_X81_Y4_N23
\uni_vacated_space[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~29_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[29]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\uni_vacated_space[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~30_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[30]~output_o\);

-- Location: IOOBUF_X81_Y61_N16
\uni_vacated_space[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space~31_combout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[31]~output_o\);

-- Location: IOOBUF_X81_Y11_N2
\vacated_space[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~0_combout\,
	devoe => ww_devoe,
	o => \vacated_space[0]~output_o\);

-- Location: IOOBUF_X52_Y67_N9
\vacated_space[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~1_combout\,
	devoe => ww_devoe,
	o => \vacated_space[1]~output_o\);

-- Location: IOOBUF_X58_Y67_N23
\vacated_space[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~2_combout\,
	devoe => ww_devoe,
	o => \vacated_space[2]~output_o\);

-- Location: IOOBUF_X81_Y59_N16
\vacated_space[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~3_combout\,
	devoe => ww_devoe,
	o => \vacated_space[3]~output_o\);

-- Location: IOOBUF_X54_Y67_N23
\vacated_space[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~4_combout\,
	devoe => ww_devoe,
	o => \vacated_space[4]~output_o\);

-- Location: IOOBUF_X54_Y67_N9
\vacated_space[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~5_combout\,
	devoe => ww_devoe,
	o => \vacated_space[5]~output_o\);

-- Location: IOOBUF_X81_Y3_N9
\vacated_space[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~6_combout\,
	devoe => ww_devoe,
	o => \vacated_space[6]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\vacated_space[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~7_combout\,
	devoe => ww_devoe,
	o => \vacated_space[7]~output_o\);

-- Location: IOOBUF_X81_Y2_N16
\vacated_space[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~8_combout\,
	devoe => ww_devoe,
	o => \vacated_space[8]~output_o\);

-- Location: IOOBUF_X81_Y14_N16
\vacated_space[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~9_combout\,
	devoe => ww_devoe,
	o => \vacated_space[9]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\vacated_space[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~10_combout\,
	devoe => ww_devoe,
	o => \vacated_space[10]~output_o\);

-- Location: IOOBUF_X56_Y67_N2
\vacated_space[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~11_combout\,
	devoe => ww_devoe,
	o => \vacated_space[11]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\vacated_space[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~12_combout\,
	devoe => ww_devoe,
	o => \vacated_space[12]~output_o\);

-- Location: IOOBUF_X58_Y67_N16
\vacated_space[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~13_combout\,
	devoe => ww_devoe,
	o => \vacated_space[13]~output_o\);

-- Location: IOOBUF_X81_Y4_N2
\vacated_space[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~14_combout\,
	devoe => ww_devoe,
	o => \vacated_space[14]~output_o\);

-- Location: IOOBUF_X81_Y3_N2
\vacated_space[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~15_combout\,
	devoe => ww_devoe,
	o => \vacated_space[15]~output_o\);

-- Location: IOOBUF_X54_Y67_N2
\vacated_space[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~16_combout\,
	devoe => ww_devoe,
	o => \vacated_space[16]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\vacated_space[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~17_combout\,
	devoe => ww_devoe,
	o => \vacated_space[17]~output_o\);

-- Location: IOOBUF_X81_Y2_N9
\vacated_space[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~18_combout\,
	devoe => ww_devoe,
	o => \vacated_space[18]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\vacated_space[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~19_combout\,
	devoe => ww_devoe,
	o => \vacated_space[19]~output_o\);

-- Location: IOOBUF_X81_Y2_N23
\vacated_space[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~20_combout\,
	devoe => ww_devoe,
	o => \vacated_space[20]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\vacated_space[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~21_combout\,
	devoe => ww_devoe,
	o => \vacated_space[21]~output_o\);

-- Location: IOOBUF_X81_Y2_N2
\vacated_space[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~22_combout\,
	devoe => ww_devoe,
	o => \vacated_space[22]~output_o\);

-- Location: IOOBUF_X52_Y67_N23
\vacated_space[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~23_combout\,
	devoe => ww_devoe,
	o => \vacated_space[23]~output_o\);

-- Location: IOOBUF_X81_Y65_N16
\vacated_space[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~24_combout\,
	devoe => ww_devoe,
	o => \vacated_space[24]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\vacated_space[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~25_combout\,
	devoe => ww_devoe,
	o => \vacated_space[25]~output_o\);

-- Location: IOOBUF_X81_Y4_N9
\vacated_space[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~26_combout\,
	devoe => ww_devoe,
	o => \vacated_space[26]~output_o\);

-- Location: IOOBUF_X81_Y12_N2
\vacated_space[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~27_combout\,
	devoe => ww_devoe,
	o => \vacated_space[27]~output_o\);

-- Location: IOOBUF_X70_Y0_N9
\vacated_space[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~28_combout\,
	devoe => ww_devoe,
	o => \vacated_space[28]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\vacated_space[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~29_combout\,
	devoe => ww_devoe,
	o => \vacated_space[29]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\vacated_space[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~30_combout\,
	devoe => ww_devoe,
	o => \vacated_space[30]~output_o\);

-- Location: IOOBUF_X81_Y11_N23
\vacated_space[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~31_combout\,
	devoe => ww_devoe,
	o => \vacated_space[31]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\hour[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\hour[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\hour[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\hour[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\hour[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[4]~output_o\);

-- Location: IOOBUF_X44_Y0_N23
\hour[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\hour[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\hour[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[7]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\hour[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[8]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[8]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\hour[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[9]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[9]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\hour[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[10]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\hour[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[11]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[11]~output_o\);

-- Location: IOOBUF_X81_Y9_N2
\hour[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[12]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[12]~output_o\);

-- Location: IOOBUF_X49_Y67_N16
\hour[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[13]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[13]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\hour[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[14]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[14]~output_o\);

-- Location: IOOBUF_X81_Y7_N16
\hour[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[15]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\hour[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[16]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[16]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\hour[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[17]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[17]~output_o\);

-- Location: IOOBUF_X81_Y14_N9
\hour[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[18]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[18]~output_o\);

-- Location: IOOBUF_X81_Y14_N2
\hour[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[19]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[19]~output_o\);

-- Location: IOOBUF_X81_Y19_N9
\hour[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[20]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[20]~output_o\);

-- Location: IOOBUF_X54_Y67_N16
\hour[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[21]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[21]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\hour[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[22]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[22]~output_o\);

-- Location: IOOBUF_X49_Y67_N9
\hour[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[23]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[23]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\hour[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[24]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[24]~output_o\);

-- Location: IOOBUF_X44_Y0_N9
\hour[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[25]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[25]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\hour[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[26]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[26]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\hour[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[27]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[27]~output_o\);

-- Location: IOOBUF_X49_Y67_N2
\hour[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[28]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[28]~output_o\);

-- Location: IOOBUF_X52_Y67_N16
\hour[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[29]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[29]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\hour[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[30]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[30]~output_o\);

-- Location: IOOBUF_X81_Y10_N16
\hour[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour[31]~reg0_q\,
	devoe => ww_devoe,
	o => \hour[31]~output_o\);

-- Location: IOOBUF_X81_Y64_N2
\uni_is_vacated_space~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan4~10_combout\,
	devoe => ww_devoe,
	o => \uni_is_vacated_space~output_o\);

-- Location: IOOBUF_X81_Y7_N9
\is_vacated_space~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan5~12_combout\,
	devoe => ww_devoe,
	o => \is_vacated_space~output_o\);

-- Location: IOIBUF_X38_Y0_N22
\car_exited~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_exited,
	o => \car_exited~input_o\);

-- Location: CLKCTRL_G28
\car_exited~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_exited~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_exited~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y10_N8
\is_uni_car_exited~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_exited,
	o => \is_uni_car_exited~input_o\);

-- Location: LCCOMB_X63_Y41_N2
\uni_exited_car[1]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[1]~37_combout\ = (uni_exited_car(1) & (uni_exited_car(0) $ (VCC))) # (!uni_exited_car(1) & (uni_exited_car(0) & VCC))
-- \uni_exited_car[1]~38\ = CARRY((uni_exited_car(1) & uni_exited_car(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(1),
	datab => uni_exited_car(0),
	datad => VCC,
	combout => \uni_exited_car[1]~37_combout\,
	cout => \uni_exited_car[1]~38\);

-- Location: FF_X64_Y41_N21
\uni_exited_car[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[1]~37_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(1));

-- Location: LCCOMB_X63_Y41_N4
\uni_exited_car[2]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[2]~39_combout\ = (uni_exited_car(2) & (!\uni_exited_car[1]~38\)) # (!uni_exited_car(2) & ((\uni_exited_car[1]~38\) # (GND)))
-- \uni_exited_car[2]~40\ = CARRY((!\uni_exited_car[1]~38\) # (!uni_exited_car(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(2),
	datad => VCC,
	cin => \uni_exited_car[1]~38\,
	combout => \uni_exited_car[2]~39_combout\,
	cout => \uni_exited_car[2]~40\);

-- Location: FF_X63_Y41_N5
\uni_exited_car[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[2]~39_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(2));

-- Location: LCCOMB_X63_Y41_N6
\uni_exited_car[3]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[3]~41_combout\ = (uni_exited_car(3) & (\uni_exited_car[2]~40\ $ (GND))) # (!uni_exited_car(3) & (!\uni_exited_car[2]~40\ & VCC))
-- \uni_exited_car[3]~42\ = CARRY((uni_exited_car(3) & !\uni_exited_car[2]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(3),
	datad => VCC,
	cin => \uni_exited_car[2]~40\,
	combout => \uni_exited_car[3]~41_combout\,
	cout => \uni_exited_car[3]~42\);

-- Location: FF_X63_Y41_N7
\uni_exited_car[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[3]~41_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(3));

-- Location: LCCOMB_X63_Y41_N8
\uni_exited_car[4]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[4]~43_combout\ = (uni_exited_car(4) & (!\uni_exited_car[3]~42\)) # (!uni_exited_car(4) & ((\uni_exited_car[3]~42\) # (GND)))
-- \uni_exited_car[4]~44\ = CARRY((!\uni_exited_car[3]~42\) # (!uni_exited_car(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(4),
	datad => VCC,
	cin => \uni_exited_car[3]~42\,
	combout => \uni_exited_car[4]~43_combout\,
	cout => \uni_exited_car[4]~44\);

-- Location: FF_X64_Y41_N13
\uni_exited_car[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[4]~43_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(4));

-- Location: LCCOMB_X63_Y41_N10
\uni_exited_car[5]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[5]~45_combout\ = (uni_exited_car(5) & (\uni_exited_car[4]~44\ $ (GND))) # (!uni_exited_car(5) & (!\uni_exited_car[4]~44\ & VCC))
-- \uni_exited_car[5]~46\ = CARRY((uni_exited_car(5) & !\uni_exited_car[4]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(5),
	datad => VCC,
	cin => \uni_exited_car[4]~44\,
	combout => \uni_exited_car[5]~45_combout\,
	cout => \uni_exited_car[5]~46\);

-- Location: FF_X63_Y41_N11
\uni_exited_car[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[5]~45_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(5));

-- Location: LCCOMB_X63_Y41_N12
\uni_exited_car[6]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[6]~47_combout\ = (uni_exited_car(6) & (!\uni_exited_car[5]~46\)) # (!uni_exited_car(6) & ((\uni_exited_car[5]~46\) # (GND)))
-- \uni_exited_car[6]~48\ = CARRY((!\uni_exited_car[5]~46\) # (!uni_exited_car(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(6),
	datad => VCC,
	cin => \uni_exited_car[5]~46\,
	combout => \uni_exited_car[6]~47_combout\,
	cout => \uni_exited_car[6]~48\);

-- Location: FF_X64_Y41_N25
\uni_exited_car[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[6]~47_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(6));

-- Location: LCCOMB_X63_Y41_N14
\uni_exited_car[7]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[7]~49_combout\ = (uni_exited_car(7) & (\uni_exited_car[6]~48\ $ (GND))) # (!uni_exited_car(7) & (!\uni_exited_car[6]~48\ & VCC))
-- \uni_exited_car[7]~50\ = CARRY((uni_exited_car(7) & !\uni_exited_car[6]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(7),
	datad => VCC,
	cin => \uni_exited_car[6]~48\,
	combout => \uni_exited_car[7]~49_combout\,
	cout => \uni_exited_car[7]~50\);

-- Location: FF_X63_Y41_N15
\uni_exited_car[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[7]~49_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(7));

-- Location: LCCOMB_X63_Y41_N16
\uni_exited_car[8]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[8]~51_combout\ = (uni_exited_car(8) & (!\uni_exited_car[7]~50\)) # (!uni_exited_car(8) & ((\uni_exited_car[7]~50\) # (GND)))
-- \uni_exited_car[8]~52\ = CARRY((!\uni_exited_car[7]~50\) # (!uni_exited_car(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(8),
	datad => VCC,
	cin => \uni_exited_car[7]~50\,
	combout => \uni_exited_car[8]~51_combout\,
	cout => \uni_exited_car[8]~52\);

-- Location: FF_X63_Y41_N17
\uni_exited_car[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[8]~51_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(8));

-- Location: LCCOMB_X63_Y41_N18
\uni_exited_car[9]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[9]~53_combout\ = (uni_exited_car(9) & (\uni_exited_car[8]~52\ $ (GND))) # (!uni_exited_car(9) & (!\uni_exited_car[8]~52\ & VCC))
-- \uni_exited_car[9]~54\ = CARRY((uni_exited_car(9) & !\uni_exited_car[8]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(9),
	datad => VCC,
	cin => \uni_exited_car[8]~52\,
	combout => \uni_exited_car[9]~53_combout\,
	cout => \uni_exited_car[9]~54\);

-- Location: FF_X64_Y41_N9
\uni_exited_car[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[9]~53_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(9));

-- Location: LCCOMB_X63_Y41_N20
\uni_exited_car[10]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[10]~55_combout\ = (uni_exited_car(10) & (!\uni_exited_car[9]~54\)) # (!uni_exited_car(10) & ((\uni_exited_car[9]~54\) # (GND)))
-- \uni_exited_car[10]~56\ = CARRY((!\uni_exited_car[9]~54\) # (!uni_exited_car(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(10),
	datad => VCC,
	cin => \uni_exited_car[9]~54\,
	combout => \uni_exited_car[10]~55_combout\,
	cout => \uni_exited_car[10]~56\);

-- Location: FF_X64_Y41_N15
\uni_exited_car[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[10]~55_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(10));

-- Location: LCCOMB_X63_Y41_N22
\uni_exited_car[11]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[11]~57_combout\ = (uni_exited_car(11) & (\uni_exited_car[10]~56\ $ (GND))) # (!uni_exited_car(11) & (!\uni_exited_car[10]~56\ & VCC))
-- \uni_exited_car[11]~58\ = CARRY((uni_exited_car(11) & !\uni_exited_car[10]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(11),
	datad => VCC,
	cin => \uni_exited_car[10]~56\,
	combout => \uni_exited_car[11]~57_combout\,
	cout => \uni_exited_car[11]~58\);

-- Location: FF_X63_Y41_N23
\uni_exited_car[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[11]~57_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(11));

-- Location: LCCOMB_X63_Y41_N24
\uni_exited_car[12]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[12]~59_combout\ = (uni_exited_car(12) & (!\uni_exited_car[11]~58\)) # (!uni_exited_car(12) & ((\uni_exited_car[11]~58\) # (GND)))
-- \uni_exited_car[12]~60\ = CARRY((!\uni_exited_car[11]~58\) # (!uni_exited_car(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(12),
	datad => VCC,
	cin => \uni_exited_car[11]~58\,
	combout => \uni_exited_car[12]~59_combout\,
	cout => \uni_exited_car[12]~60\);

-- Location: FF_X64_Y41_N17
\uni_exited_car[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[12]~59_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(12));

-- Location: LCCOMB_X63_Y41_N26
\uni_exited_car[13]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[13]~61_combout\ = (uni_exited_car(13) & (\uni_exited_car[12]~60\ $ (GND))) # (!uni_exited_car(13) & (!\uni_exited_car[12]~60\ & VCC))
-- \uni_exited_car[13]~62\ = CARRY((uni_exited_car(13) & !\uni_exited_car[12]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(13),
	datad => VCC,
	cin => \uni_exited_car[12]~60\,
	combout => \uni_exited_car[13]~61_combout\,
	cout => \uni_exited_car[13]~62\);

-- Location: FF_X64_Y41_N7
\uni_exited_car[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[13]~61_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(13));

-- Location: LCCOMB_X63_Y41_N28
\uni_exited_car[14]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[14]~63_combout\ = (uni_exited_car(14) & (!\uni_exited_car[13]~62\)) # (!uni_exited_car(14) & ((\uni_exited_car[13]~62\) # (GND)))
-- \uni_exited_car[14]~64\ = CARRY((!\uni_exited_car[13]~62\) # (!uni_exited_car(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(14),
	datad => VCC,
	cin => \uni_exited_car[13]~62\,
	combout => \uni_exited_car[14]~63_combout\,
	cout => \uni_exited_car[14]~64\);

-- Location: FF_X63_Y41_N29
\uni_exited_car[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[14]~63_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(14));

-- Location: LCCOMB_X63_Y41_N30
\uni_exited_car[15]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[15]~65_combout\ = (uni_exited_car(15) & (\uni_exited_car[14]~64\ $ (GND))) # (!uni_exited_car(15) & (!\uni_exited_car[14]~64\ & VCC))
-- \uni_exited_car[15]~66\ = CARRY((uni_exited_car(15) & !\uni_exited_car[14]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(15),
	datad => VCC,
	cin => \uni_exited_car[14]~64\,
	combout => \uni_exited_car[15]~65_combout\,
	cout => \uni_exited_car[15]~66\);

-- Location: FF_X63_Y41_N31
\uni_exited_car[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[15]~65_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(15));

-- Location: LCCOMB_X63_Y40_N0
\uni_exited_car[16]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[16]~67_combout\ = (uni_exited_car(16) & (!\uni_exited_car[15]~66\)) # (!uni_exited_car(16) & ((\uni_exited_car[15]~66\) # (GND)))
-- \uni_exited_car[16]~68\ = CARRY((!\uni_exited_car[15]~66\) # (!uni_exited_car(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(16),
	datad => VCC,
	cin => \uni_exited_car[15]~66\,
	combout => \uni_exited_car[16]~67_combout\,
	cout => \uni_exited_car[16]~68\);

-- Location: FF_X63_Y40_N1
\uni_exited_car[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[16]~67_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(16));

-- Location: LCCOMB_X63_Y40_N2
\uni_exited_car[17]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[17]~69_combout\ = (uni_exited_car(17) & (\uni_exited_car[16]~68\ $ (GND))) # (!uni_exited_car(17) & (!\uni_exited_car[16]~68\ & VCC))
-- \uni_exited_car[17]~70\ = CARRY((uni_exited_car(17) & !\uni_exited_car[16]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(17),
	datad => VCC,
	cin => \uni_exited_car[16]~68\,
	combout => \uni_exited_car[17]~69_combout\,
	cout => \uni_exited_car[17]~70\);

-- Location: FF_X63_Y40_N3
\uni_exited_car[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[17]~69_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(17));

-- Location: LCCOMB_X63_Y40_N4
\uni_exited_car[18]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[18]~71_combout\ = (uni_exited_car(18) & (!\uni_exited_car[17]~70\)) # (!uni_exited_car(18) & ((\uni_exited_car[17]~70\) # (GND)))
-- \uni_exited_car[18]~72\ = CARRY((!\uni_exited_car[17]~70\) # (!uni_exited_car(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(18),
	datad => VCC,
	cin => \uni_exited_car[17]~70\,
	combout => \uni_exited_car[18]~71_combout\,
	cout => \uni_exited_car[18]~72\);

-- Location: FF_X63_Y40_N5
\uni_exited_car[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[18]~71_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(18));

-- Location: LCCOMB_X63_Y40_N6
\uni_exited_car[19]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[19]~73_combout\ = (uni_exited_car(19) & (\uni_exited_car[18]~72\ $ (GND))) # (!uni_exited_car(19) & (!\uni_exited_car[18]~72\ & VCC))
-- \uni_exited_car[19]~74\ = CARRY((uni_exited_car(19) & !\uni_exited_car[18]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(19),
	datad => VCC,
	cin => \uni_exited_car[18]~72\,
	combout => \uni_exited_car[19]~73_combout\,
	cout => \uni_exited_car[19]~74\);

-- Location: FF_X64_Y40_N11
\uni_exited_car[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[19]~73_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(19));

-- Location: LCCOMB_X63_Y40_N8
\uni_exited_car[20]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[20]~75_combout\ = (uni_exited_car(20) & (!\uni_exited_car[19]~74\)) # (!uni_exited_car(20) & ((\uni_exited_car[19]~74\) # (GND)))
-- \uni_exited_car[20]~76\ = CARRY((!\uni_exited_car[19]~74\) # (!uni_exited_car(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(20),
	datad => VCC,
	cin => \uni_exited_car[19]~74\,
	combout => \uni_exited_car[20]~75_combout\,
	cout => \uni_exited_car[20]~76\);

-- Location: FF_X64_Y40_N9
\uni_exited_car[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[20]~75_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(20));

-- Location: LCCOMB_X63_Y40_N10
\uni_exited_car[21]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[21]~77_combout\ = (uni_exited_car(21) & (\uni_exited_car[20]~76\ $ (GND))) # (!uni_exited_car(21) & (!\uni_exited_car[20]~76\ & VCC))
-- \uni_exited_car[21]~78\ = CARRY((uni_exited_car(21) & !\uni_exited_car[20]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(21),
	datad => VCC,
	cin => \uni_exited_car[20]~76\,
	combout => \uni_exited_car[21]~77_combout\,
	cout => \uni_exited_car[21]~78\);

-- Location: FF_X64_Y40_N27
\uni_exited_car[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[21]~77_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(21));

-- Location: LCCOMB_X63_Y40_N12
\uni_exited_car[22]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[22]~79_combout\ = (uni_exited_car(22) & (!\uni_exited_car[21]~78\)) # (!uni_exited_car(22) & ((\uni_exited_car[21]~78\) # (GND)))
-- \uni_exited_car[22]~80\ = CARRY((!\uni_exited_car[21]~78\) # (!uni_exited_car(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(22),
	datad => VCC,
	cin => \uni_exited_car[21]~78\,
	combout => \uni_exited_car[22]~79_combout\,
	cout => \uni_exited_car[22]~80\);

-- Location: FF_X63_Y40_N13
\uni_exited_car[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[22]~79_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(22));

-- Location: LCCOMB_X63_Y40_N14
\uni_exited_car[23]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[23]~81_combout\ = (uni_exited_car(23) & (\uni_exited_car[22]~80\ $ (GND))) # (!uni_exited_car(23) & (!\uni_exited_car[22]~80\ & VCC))
-- \uni_exited_car[23]~82\ = CARRY((uni_exited_car(23) & !\uni_exited_car[22]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(23),
	datad => VCC,
	cin => \uni_exited_car[22]~80\,
	combout => \uni_exited_car[23]~81_combout\,
	cout => \uni_exited_car[23]~82\);

-- Location: FF_X63_Y40_N15
\uni_exited_car[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[23]~81_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(23));

-- Location: LCCOMB_X63_Y40_N16
\uni_exited_car[24]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[24]~83_combout\ = (uni_exited_car(24) & (!\uni_exited_car[23]~82\)) # (!uni_exited_car(24) & ((\uni_exited_car[23]~82\) # (GND)))
-- \uni_exited_car[24]~84\ = CARRY((!\uni_exited_car[23]~82\) # (!uni_exited_car(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(24),
	datad => VCC,
	cin => \uni_exited_car[23]~82\,
	combout => \uni_exited_car[24]~83_combout\,
	cout => \uni_exited_car[24]~84\);

-- Location: FF_X64_Y40_N19
\uni_exited_car[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[24]~83_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(24));

-- Location: LCCOMB_X63_Y40_N18
\uni_exited_car[25]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[25]~85_combout\ = (uni_exited_car(25) & (\uni_exited_car[24]~84\ $ (GND))) # (!uni_exited_car(25) & (!\uni_exited_car[24]~84\ & VCC))
-- \uni_exited_car[25]~86\ = CARRY((uni_exited_car(25) & !\uni_exited_car[24]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(25),
	datad => VCC,
	cin => \uni_exited_car[24]~84\,
	combout => \uni_exited_car[25]~85_combout\,
	cout => \uni_exited_car[25]~86\);

-- Location: FF_X64_Y40_N7
\uni_exited_car[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[25]~85_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(25));

-- Location: LCCOMB_X63_Y40_N20
\uni_exited_car[26]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[26]~87_combout\ = (uni_exited_car(26) & (!\uni_exited_car[25]~86\)) # (!uni_exited_car(26) & ((\uni_exited_car[25]~86\) # (GND)))
-- \uni_exited_car[26]~88\ = CARRY((!\uni_exited_car[25]~86\) # (!uni_exited_car(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(26),
	datad => VCC,
	cin => \uni_exited_car[25]~86\,
	combout => \uni_exited_car[26]~87_combout\,
	cout => \uni_exited_car[26]~88\);

-- Location: FF_X64_Y40_N15
\uni_exited_car[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[26]~87_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(26));

-- Location: LCCOMB_X63_Y40_N22
\uni_exited_car[27]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[27]~89_combout\ = (uni_exited_car(27) & (\uni_exited_car[26]~88\ $ (GND))) # (!uni_exited_car(27) & (!\uni_exited_car[26]~88\ & VCC))
-- \uni_exited_car[27]~90\ = CARRY((uni_exited_car(27) & !\uni_exited_car[26]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(27),
	datad => VCC,
	cin => \uni_exited_car[26]~88\,
	combout => \uni_exited_car[27]~89_combout\,
	cout => \uni_exited_car[27]~90\);

-- Location: FF_X64_Y40_N1
\uni_exited_car[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \uni_exited_car[27]~89_combout\,
	sload => VCC,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(27));

-- Location: LCCOMB_X63_Y40_N24
\uni_exited_car[28]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[28]~91_combout\ = (uni_exited_car(28) & (!\uni_exited_car[27]~90\)) # (!uni_exited_car(28) & ((\uni_exited_car[27]~90\) # (GND)))
-- \uni_exited_car[28]~92\ = CARRY((!\uni_exited_car[27]~90\) # (!uni_exited_car(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(28),
	datad => VCC,
	cin => \uni_exited_car[27]~90\,
	combout => \uni_exited_car[28]~91_combout\,
	cout => \uni_exited_car[28]~92\);

-- Location: FF_X63_Y40_N25
\uni_exited_car[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[28]~91_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(28));

-- Location: LCCOMB_X63_Y40_N26
\uni_exited_car[29]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[29]~93_combout\ = (uni_exited_car(29) & (\uni_exited_car[28]~92\ $ (GND))) # (!uni_exited_car(29) & (!\uni_exited_car[28]~92\ & VCC))
-- \uni_exited_car[29]~94\ = CARRY((uni_exited_car(29) & !\uni_exited_car[28]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(29),
	datad => VCC,
	cin => \uni_exited_car[28]~92\,
	combout => \uni_exited_car[29]~93_combout\,
	cout => \uni_exited_car[29]~94\);

-- Location: FF_X63_Y40_N27
\uni_exited_car[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[29]~93_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(29));

-- Location: LCCOMB_X63_Y40_N28
\uni_exited_car[30]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[30]~95_combout\ = (uni_exited_car(30) & (!\uni_exited_car[29]~94\)) # (!uni_exited_car(30) & ((\uni_exited_car[29]~94\) # (GND)))
-- \uni_exited_car[30]~96\ = CARRY((!\uni_exited_car[29]~94\) # (!uni_exited_car(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(30),
	datad => VCC,
	cin => \uni_exited_car[29]~94\,
	combout => \uni_exited_car[30]~95_combout\,
	cout => \uni_exited_car[30]~96\);

-- Location: FF_X63_Y40_N29
\uni_exited_car[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[30]~95_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(30));

-- Location: IOIBUF_X38_Y0_N15
\car_entered~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_entered,
	o => \car_entered~input_o\);

-- Location: CLKCTRL_G29
\car_entered~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_entered~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_entered~inputclkctrl_outclk\);

-- Location: LCCOMB_X63_Y40_N30
\uni_exited_car[31]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[31]~97_combout\ = uni_exited_car(31) $ (!\uni_exited_car[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(31),
	cin => \uni_exited_car[30]~96\,
	combout => \uni_exited_car[31]~97_combout\);

-- Location: FF_X63_Y40_N31
\uni_exited_car[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[31]~97_combout\,
	ena => \uni_exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(31));

-- Location: LCCOMB_X68_Y40_N28
\uni_entered_car[30]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[30]~91_combout\ = (uni_entered_car(30) & (!\uni_entered_car[29]~90\)) # (!uni_entered_car(30) & ((\uni_entered_car[29]~90\) # (GND)))
-- \uni_entered_car[30]~92\ = CARRY((!\uni_entered_car[29]~90\) # (!uni_entered_car(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(30),
	datad => VCC,
	cin => \uni_entered_car[29]~90\,
	combout => \uni_entered_car[30]~91_combout\,
	cout => \uni_entered_car[30]~92\);

-- Location: LCCOMB_X68_Y40_N30
\uni_entered_car[31]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[31]~93_combout\ = uni_entered_car(31) $ (!\uni_entered_car[30]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(31),
	cin => \uni_entered_car[30]~92\,
	combout => \uni_entered_car[31]~93_combout\);

-- Location: FF_X68_Y40_N31
\uni_entered_car[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[31]~93_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(31));

-- Location: LCCOMB_X64_Y41_N0
\Add6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (uni_exited_car(0) & (uni_entered_car(0) $ (VCC))) # (!uni_exited_car(0) & ((uni_entered_car(0)) # (GND)))
-- \Add6~1\ = CARRY((uni_entered_car(0)) # (!uni_exited_car(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(0),
	datab => uni_entered_car(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X64_Y41_N2
\Add6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (uni_entered_car(1) & ((uni_exited_car(1) & (!\Add6~1\)) # (!uni_exited_car(1) & (\Add6~1\ & VCC)))) # (!uni_entered_car(1) & ((uni_exited_car(1) & ((\Add6~1\) # (GND))) # (!uni_exited_car(1) & (!\Add6~1\))))
-- \Add6~3\ = CARRY((uni_entered_car(1) & (uni_exited_car(1) & !\Add6~1\)) # (!uni_entered_car(1) & ((uni_exited_car(1)) # (!\Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(1),
	datab => uni_exited_car(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X64_Y41_N4
\Add6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((uni_entered_car(2) $ (uni_exited_car(2) $ (\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((uni_entered_car(2) & ((!\Add6~3\) # (!uni_exited_car(2)))) # (!uni_entered_car(2) & (!uni_exited_car(2) & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(2),
	datab => uni_exited_car(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X64_Y41_N6
\Add6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (uni_exited_car(3) & ((uni_entered_car(3) & (!\Add6~5\)) # (!uni_entered_car(3) & ((\Add6~5\) # (GND))))) # (!uni_exited_car(3) & ((uni_entered_car(3) & (\Add6~5\ & VCC)) # (!uni_entered_car(3) & (!\Add6~5\))))
-- \Add6~7\ = CARRY((uni_exited_car(3) & ((!\Add6~5\) # (!uni_entered_car(3)))) # (!uni_exited_car(3) & (!uni_entered_car(3) & !\Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(3),
	datab => uni_entered_car(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X64_Y41_N8
\Add6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((uni_exited_car(4) $ (uni_entered_car(4) $ (\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((uni_exited_car(4) & (uni_entered_car(4) & !\Add6~7\)) # (!uni_exited_car(4) & ((uni_entered_car(4)) # (!\Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(4),
	datab => uni_entered_car(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X64_Y41_N10
\Add6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (uni_entered_car(5) & ((uni_exited_car(5) & (!\Add6~9\)) # (!uni_exited_car(5) & (\Add6~9\ & VCC)))) # (!uni_entered_car(5) & ((uni_exited_car(5) & ((\Add6~9\) # (GND))) # (!uni_exited_car(5) & (!\Add6~9\))))
-- \Add6~11\ = CARRY((uni_entered_car(5) & (uni_exited_car(5) & !\Add6~9\)) # (!uni_entered_car(5) & ((uni_exited_car(5)) # (!\Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(5),
	datab => uni_exited_car(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X64_Y41_N12
\Add6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((uni_entered_car(6) $ (uni_exited_car(6) $ (\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((uni_entered_car(6) & ((!\Add6~11\) # (!uni_exited_car(6)))) # (!uni_entered_car(6) & (!uni_exited_car(6) & !\Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(6),
	datab => uni_exited_car(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X64_Y41_N14
\Add6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (uni_exited_car(7) & ((uni_entered_car(7) & (!\Add6~13\)) # (!uni_entered_car(7) & ((\Add6~13\) # (GND))))) # (!uni_exited_car(7) & ((uni_entered_car(7) & (\Add6~13\ & VCC)) # (!uni_entered_car(7) & (!\Add6~13\))))
-- \Add6~15\ = CARRY((uni_exited_car(7) & ((!\Add6~13\) # (!uni_entered_car(7)))) # (!uni_exited_car(7) & (!uni_entered_car(7) & !\Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(7),
	datab => uni_entered_car(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X64_Y41_N16
\Add6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = ((uni_entered_car(8) $ (uni_exited_car(8) $ (\Add6~15\)))) # (GND)
-- \Add6~17\ = CARRY((uni_entered_car(8) & ((!\Add6~15\) # (!uni_exited_car(8)))) # (!uni_entered_car(8) & (!uni_exited_car(8) & !\Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(8),
	datab => uni_exited_car(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X64_Y41_N18
\Add6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (uni_entered_car(9) & ((uni_exited_car(9) & (!\Add6~17\)) # (!uni_exited_car(9) & (\Add6~17\ & VCC)))) # (!uni_entered_car(9) & ((uni_exited_car(9) & ((\Add6~17\) # (GND))) # (!uni_exited_car(9) & (!\Add6~17\))))
-- \Add6~19\ = CARRY((uni_entered_car(9) & (uni_exited_car(9) & !\Add6~17\)) # (!uni_entered_car(9) & ((uni_exited_car(9)) # (!\Add6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(9),
	datab => uni_exited_car(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X64_Y41_N20
\Add6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = ((uni_entered_car(10) $ (uni_exited_car(10) $ (\Add6~19\)))) # (GND)
-- \Add6~21\ = CARRY((uni_entered_car(10) & ((!\Add6~19\) # (!uni_exited_car(10)))) # (!uni_entered_car(10) & (!uni_exited_car(10) & !\Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(10),
	datab => uni_exited_car(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X64_Y41_N22
\Add6~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (uni_exited_car(11) & ((uni_entered_car(11) & (!\Add6~21\)) # (!uni_entered_car(11) & ((\Add6~21\) # (GND))))) # (!uni_exited_car(11) & ((uni_entered_car(11) & (\Add6~21\ & VCC)) # (!uni_entered_car(11) & (!\Add6~21\))))
-- \Add6~23\ = CARRY((uni_exited_car(11) & ((!\Add6~21\) # (!uni_entered_car(11)))) # (!uni_exited_car(11) & (!uni_entered_car(11) & !\Add6~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(11),
	datab => uni_entered_car(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X64_Y41_N24
\Add6~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = ((uni_entered_car(12) $ (uni_exited_car(12) $ (\Add6~23\)))) # (GND)
-- \Add6~25\ = CARRY((uni_entered_car(12) & ((!\Add6~23\) # (!uni_exited_car(12)))) # (!uni_entered_car(12) & (!uni_exited_car(12) & !\Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(12),
	datab => uni_exited_car(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X64_Y41_N26
\Add6~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (uni_exited_car(13) & ((uni_entered_car(13) & (!\Add6~25\)) # (!uni_entered_car(13) & ((\Add6~25\) # (GND))))) # (!uni_exited_car(13) & ((uni_entered_car(13) & (\Add6~25\ & VCC)) # (!uni_entered_car(13) & (!\Add6~25\))))
-- \Add6~27\ = CARRY((uni_exited_car(13) & ((!\Add6~25\) # (!uni_entered_car(13)))) # (!uni_exited_car(13) & (!uni_entered_car(13) & !\Add6~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(13),
	datab => uni_entered_car(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X64_Y41_N28
\Add6~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = ((uni_exited_car(14) $ (uni_entered_car(14) $ (\Add6~27\)))) # (GND)
-- \Add6~29\ = CARRY((uni_exited_car(14) & (uni_entered_car(14) & !\Add6~27\)) # (!uni_exited_car(14) & ((uni_entered_car(14)) # (!\Add6~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(14),
	datab => uni_entered_car(14),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X64_Y41_N30
\Add6~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (uni_entered_car(15) & ((uni_exited_car(15) & (!\Add6~29\)) # (!uni_exited_car(15) & (\Add6~29\ & VCC)))) # (!uni_entered_car(15) & ((uni_exited_car(15) & ((\Add6~29\) # (GND))) # (!uni_exited_car(15) & (!\Add6~29\))))
-- \Add6~31\ = CARRY((uni_entered_car(15) & (uni_exited_car(15) & !\Add6~29\)) # (!uni_entered_car(15) & ((uni_exited_car(15)) # (!\Add6~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(15),
	datab => uni_exited_car(15),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X64_Y40_N0
\Add6~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = ((uni_entered_car(16) $ (uni_exited_car(16) $ (\Add6~31\)))) # (GND)
-- \Add6~33\ = CARRY((uni_entered_car(16) & ((!\Add6~31\) # (!uni_exited_car(16)))) # (!uni_entered_car(16) & (!uni_exited_car(16) & !\Add6~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(16),
	datab => uni_exited_car(16),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X64_Y40_N2
\Add6~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (uni_exited_car(17) & ((uni_entered_car(17) & (!\Add6~33\)) # (!uni_entered_car(17) & ((\Add6~33\) # (GND))))) # (!uni_exited_car(17) & ((uni_entered_car(17) & (\Add6~33\ & VCC)) # (!uni_entered_car(17) & (!\Add6~33\))))
-- \Add6~35\ = CARRY((uni_exited_car(17) & ((!\Add6~33\) # (!uni_entered_car(17)))) # (!uni_exited_car(17) & (!uni_entered_car(17) & !\Add6~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(17),
	datab => uni_entered_car(17),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: LCCOMB_X64_Y40_N4
\Add6~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = ((uni_entered_car(18) $ (uni_exited_car(18) $ (\Add6~35\)))) # (GND)
-- \Add6~37\ = CARRY((uni_entered_car(18) & ((!\Add6~35\) # (!uni_exited_car(18)))) # (!uni_entered_car(18) & (!uni_exited_car(18) & !\Add6~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(18),
	datab => uni_exited_car(18),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: LCCOMB_X64_Y40_N6
\Add6~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (uni_exited_car(19) & ((uni_entered_car(19) & (!\Add6~37\)) # (!uni_entered_car(19) & ((\Add6~37\) # (GND))))) # (!uni_exited_car(19) & ((uni_entered_car(19) & (\Add6~37\ & VCC)) # (!uni_entered_car(19) & (!\Add6~37\))))
-- \Add6~39\ = CARRY((uni_exited_car(19) & ((!\Add6~37\) # (!uni_entered_car(19)))) # (!uni_exited_car(19) & (!uni_entered_car(19) & !\Add6~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(19),
	datab => uni_entered_car(19),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X64_Y40_N8
\Add6~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = ((uni_entered_car(20) $ (uni_exited_car(20) $ (\Add6~39\)))) # (GND)
-- \Add6~41\ = CARRY((uni_entered_car(20) & ((!\Add6~39\) # (!uni_exited_car(20)))) # (!uni_entered_car(20) & (!uni_exited_car(20) & !\Add6~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(20),
	datab => uni_exited_car(20),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: LCCOMB_X64_Y40_N10
\Add6~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (uni_exited_car(21) & ((uni_entered_car(21) & (!\Add6~41\)) # (!uni_entered_car(21) & ((\Add6~41\) # (GND))))) # (!uni_exited_car(21) & ((uni_entered_car(21) & (\Add6~41\ & VCC)) # (!uni_entered_car(21) & (!\Add6~41\))))
-- \Add6~43\ = CARRY((uni_exited_car(21) & ((!\Add6~41\) # (!uni_entered_car(21)))) # (!uni_exited_car(21) & (!uni_entered_car(21) & !\Add6~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(21),
	datab => uni_entered_car(21),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X64_Y40_N12
\Add6~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = ((uni_exited_car(22) $ (uni_entered_car(22) $ (\Add6~43\)))) # (GND)
-- \Add6~45\ = CARRY((uni_exited_car(22) & (uni_entered_car(22) & !\Add6~43\)) # (!uni_exited_car(22) & ((uni_entered_car(22)) # (!\Add6~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(22),
	datab => uni_entered_car(22),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X64_Y40_N14
\Add6~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (uni_exited_car(23) & ((uni_entered_car(23) & (!\Add6~45\)) # (!uni_entered_car(23) & ((\Add6~45\) # (GND))))) # (!uni_exited_car(23) & ((uni_entered_car(23) & (\Add6~45\ & VCC)) # (!uni_entered_car(23) & (!\Add6~45\))))
-- \Add6~47\ = CARRY((uni_exited_car(23) & ((!\Add6~45\) # (!uni_entered_car(23)))) # (!uni_exited_car(23) & (!uni_entered_car(23) & !\Add6~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(23),
	datab => uni_entered_car(23),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: LCCOMB_X64_Y40_N16
\Add6~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = ((uni_entered_car(24) $ (uni_exited_car(24) $ (\Add6~47\)))) # (GND)
-- \Add6~49\ = CARRY((uni_entered_car(24) & ((!\Add6~47\) # (!uni_exited_car(24)))) # (!uni_entered_car(24) & (!uni_exited_car(24) & !\Add6~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(24),
	datab => uni_exited_car(24),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: LCCOMB_X64_Y40_N18
\Add6~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (uni_exited_car(25) & ((uni_entered_car(25) & (!\Add6~49\)) # (!uni_entered_car(25) & ((\Add6~49\) # (GND))))) # (!uni_exited_car(25) & ((uni_entered_car(25) & (\Add6~49\ & VCC)) # (!uni_entered_car(25) & (!\Add6~49\))))
-- \Add6~51\ = CARRY((uni_exited_car(25) & ((!\Add6~49\) # (!uni_entered_car(25)))) # (!uni_exited_car(25) & (!uni_entered_car(25) & !\Add6~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(25),
	datab => uni_entered_car(25),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: LCCOMB_X64_Y40_N20
\Add6~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = ((uni_entered_car(26) $ (uni_exited_car(26) $ (\Add6~51\)))) # (GND)
-- \Add6~53\ = CARRY((uni_entered_car(26) & ((!\Add6~51\) # (!uni_exited_car(26)))) # (!uni_entered_car(26) & (!uni_exited_car(26) & !\Add6~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(26),
	datab => uni_exited_car(26),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: LCCOMB_X64_Y40_N22
\Add6~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (uni_entered_car(27) & ((uni_exited_car(27) & (!\Add6~53\)) # (!uni_exited_car(27) & (\Add6~53\ & VCC)))) # (!uni_entered_car(27) & ((uni_exited_car(27) & ((\Add6~53\) # (GND))) # (!uni_exited_car(27) & (!\Add6~53\))))
-- \Add6~55\ = CARRY((uni_entered_car(27) & (uni_exited_car(27) & !\Add6~53\)) # (!uni_entered_car(27) & ((uni_exited_car(27)) # (!\Add6~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(27),
	datab => uni_exited_car(27),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X64_Y40_N24
\Add6~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = ((uni_exited_car(28) $ (uni_entered_car(28) $ (\Add6~55\)))) # (GND)
-- \Add6~57\ = CARRY((uni_exited_car(28) & (uni_entered_car(28) & !\Add6~55\)) # (!uni_exited_car(28) & ((uni_entered_car(28)) # (!\Add6~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(28),
	datab => uni_entered_car(28),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: LCCOMB_X64_Y40_N26
\Add6~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (uni_exited_car(29) & ((uni_entered_car(29) & (!\Add6~57\)) # (!uni_entered_car(29) & ((\Add6~57\) # (GND))))) # (!uni_exited_car(29) & ((uni_entered_car(29) & (\Add6~57\ & VCC)) # (!uni_entered_car(29) & (!\Add6~57\))))
-- \Add6~59\ = CARRY((uni_exited_car(29) & ((!\Add6~57\) # (!uni_entered_car(29)))) # (!uni_exited_car(29) & (!uni_entered_car(29) & !\Add6~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(29),
	datab => uni_entered_car(29),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: LCCOMB_X64_Y40_N28
\Add6~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = ((uni_exited_car(30) $ (uni_entered_car(30) $ (\Add6~59\)))) # (GND)
-- \Add6~61\ = CARRY((uni_exited_car(30) & (uni_entered_car(30) & !\Add6~59\)) # (!uni_exited_car(30) & ((uni_entered_car(30)) # (!\Add6~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_exited_car(30),
	datab => uni_entered_car(30),
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: LCCOMB_X64_Y40_N30
\Add6~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = uni_exited_car(31) $ (\Add6~61\ $ (!uni_entered_car(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_exited_car(31),
	datad => uni_entered_car(31),
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: LCCOMB_X69_Y41_N0
\Add8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~1_cout\ = CARRY(!\Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~0_combout\,
	datad => VCC,
	cout => \Add8~1_cout\);

-- Location: LCCOMB_X69_Y41_N2
\Add8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add6~2_combout\ & ((\Add8~1_cout\) # (GND))) # (!\Add6~2_combout\ & (!\Add8~1_cout\))
-- \Add8~3\ = CARRY((\Add6~2_combout\) # (!\Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datad => VCC,
	cin => \Add8~1_cout\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X69_Y41_N4
\Add8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add6~4_combout\ & (\Add8~3\ $ (GND))) # (!\Add6~4_combout\ & ((GND) # (!\Add8~3\)))
-- \Add8~5\ = CARRY((!\Add8~3\) # (!\Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X69_Y41_N6
\Add8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add6~6_combout\ & ((\Add8~5\) # (GND))) # (!\Add6~6_combout\ & (!\Add8~5\))
-- \Add8~7\ = CARRY((\Add6~6_combout\) # (!\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X69_Y41_N8
\Add8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add6~8_combout\ & (\Add8~7\ $ (GND))) # (!\Add6~8_combout\ & ((GND) # (!\Add8~7\)))
-- \Add8~9\ = CARRY((!\Add8~7\) # (!\Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X69_Y41_N10
\Add8~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add6~10_combout\ & (!\Add8~9\)) # (!\Add6~10_combout\ & (\Add8~9\ & VCC))
-- \Add8~11\ = CARRY((\Add6~10_combout\ & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X69_Y41_N12
\Add8~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\Add6~12_combout\ & (\Add8~11\ $ (GND))) # (!\Add6~12_combout\ & ((GND) # (!\Add8~11\)))
-- \Add8~13\ = CARRY((!\Add8~11\) # (!\Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X69_Y41_N14
\Add8~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\Add6~14_combout\ & (!\Add8~13\)) # (!\Add6~14_combout\ & (\Add8~13\ & VCC))
-- \Add8~15\ = CARRY((\Add6~14_combout\ & !\Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X69_Y41_N16
\Add8~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (\Add6~16_combout\ & (\Add8~15\ $ (GND))) # (!\Add6~16_combout\ & ((GND) # (!\Add8~15\)))
-- \Add8~17\ = CARRY((!\Add8~15\) # (!\Add6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~16_combout\,
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X69_Y41_N18
\Add8~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (\Add6~18_combout\ & ((\Add8~17\) # (GND))) # (!\Add6~18_combout\ & (!\Add8~17\))
-- \Add8~19\ = CARRY((\Add6~18_combout\) # (!\Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~18_combout\,
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X69_Y41_N20
\Add8~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (\Add6~20_combout\ & (!\Add8~19\ & VCC)) # (!\Add6~20_combout\ & (\Add8~19\ $ (GND)))
-- \Add8~21\ = CARRY((!\Add6~20_combout\ & !\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~20_combout\,
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X69_Y41_N22
\Add8~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (\Add6~22_combout\ & ((\Add8~21\) # (GND))) # (!\Add6~22_combout\ & (!\Add8~21\))
-- \Add8~23\ = CARRY((\Add6~22_combout\) # (!\Add8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~22_combout\,
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X69_Y41_N24
\Add8~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (\Add6~24_combout\ & (!\Add8~23\ & VCC)) # (!\Add6~24_combout\ & (\Add8~23\ $ (GND)))
-- \Add8~25\ = CARRY((!\Add6~24_combout\ & !\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~24_combout\,
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X69_Y41_N26
\Add8~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (\Add6~26_combout\ & ((\Add8~25\) # (GND))) # (!\Add6~26_combout\ & (!\Add8~25\))
-- \Add8~27\ = CARRY((\Add6~26_combout\) # (!\Add8~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~26_combout\,
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X69_Y41_N28
\Add8~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (\Add6~28_combout\ & (!\Add8~27\ & VCC)) # (!\Add6~28_combout\ & (\Add8~27\ $ (GND)))
-- \Add8~29\ = CARRY((!\Add6~28_combout\ & !\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~28_combout\,
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X69_Y41_N30
\Add8~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (\Add6~30_combout\ & ((\Add8~29\) # (GND))) # (!\Add6~30_combout\ & (!\Add8~29\))
-- \Add8~31\ = CARRY((\Add6~30_combout\) # (!\Add8~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~30_combout\,
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: LCCOMB_X69_Y40_N0
\Add8~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (\Add6~32_combout\ & (!\Add8~31\ & VCC)) # (!\Add6~32_combout\ & (\Add8~31\ $ (GND)))
-- \Add8~33\ = CARRY((!\Add6~32_combout\ & !\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~32_combout\,
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: LCCOMB_X69_Y40_N2
\Add8~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (\Add6~34_combout\ & ((\Add8~33\) # (GND))) # (!\Add6~34_combout\ & (!\Add8~33\))
-- \Add8~35\ = CARRY((\Add6~34_combout\) # (!\Add8~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~34_combout\,
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X69_Y40_N4
\Add8~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (\Add6~36_combout\ & (!\Add8~35\ & VCC)) # (!\Add6~36_combout\ & (\Add8~35\ $ (GND)))
-- \Add8~37\ = CARRY((!\Add6~36_combout\ & !\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~36_combout\,
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

-- Location: LCCOMB_X69_Y40_N6
\Add8~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (\Add6~38_combout\ & ((\Add8~37\) # (GND))) # (!\Add6~38_combout\ & (!\Add8~37\))
-- \Add8~39\ = CARRY((\Add6~38_combout\) # (!\Add8~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~38_combout\,
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

-- Location: LCCOMB_X69_Y40_N8
\Add8~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (\Add6~40_combout\ & (!\Add8~39\ & VCC)) # (!\Add6~40_combout\ & (\Add8~39\ $ (GND)))
-- \Add8~41\ = CARRY((!\Add6~40_combout\ & !\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~40_combout\,
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: LCCOMB_X69_Y40_N10
\Add8~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (\Add6~42_combout\ & ((\Add8~41\) # (GND))) # (!\Add6~42_combout\ & (!\Add8~41\))
-- \Add8~43\ = CARRY((\Add6~42_combout\) # (!\Add8~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~42_combout\,
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X69_Y40_N12
\Add8~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (\Add6~44_combout\ & (!\Add8~43\ & VCC)) # (!\Add6~44_combout\ & (\Add8~43\ $ (GND)))
-- \Add8~45\ = CARRY((!\Add6~44_combout\ & !\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~44_combout\,
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

-- Location: LCCOMB_X69_Y40_N14
\Add8~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (\Add6~46_combout\ & ((\Add8~45\) # (GND))) # (!\Add6~46_combout\ & (!\Add8~45\))
-- \Add8~47\ = CARRY((\Add6~46_combout\) # (!\Add8~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~46_combout\,
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

-- Location: LCCOMB_X69_Y40_N16
\Add8~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (\Add6~48_combout\ & (!\Add8~47\ & VCC)) # (!\Add6~48_combout\ & (\Add8~47\ $ (GND)))
-- \Add8~49\ = CARRY((!\Add6~48_combout\ & !\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~48_combout\,
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

-- Location: LCCOMB_X69_Y40_N18
\Add8~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~50_combout\ = (\Add6~50_combout\ & ((\Add8~49\) # (GND))) # (!\Add6~50_combout\ & (!\Add8~49\))
-- \Add8~51\ = CARRY((\Add6~50_combout\) # (!\Add8~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~50_combout\,
	datad => VCC,
	cin => \Add8~49\,
	combout => \Add8~50_combout\,
	cout => \Add8~51\);

-- Location: LCCOMB_X69_Y40_N20
\Add8~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~52_combout\ = (\Add6~52_combout\ & (!\Add8~51\ & VCC)) # (!\Add6~52_combout\ & (\Add8~51\ $ (GND)))
-- \Add8~53\ = CARRY((!\Add6~52_combout\ & !\Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~52_combout\,
	datad => VCC,
	cin => \Add8~51\,
	combout => \Add8~52_combout\,
	cout => \Add8~53\);

-- Location: LCCOMB_X69_Y40_N22
\Add8~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~54_combout\ = (\Add6~54_combout\ & ((\Add8~53\) # (GND))) # (!\Add6~54_combout\ & (!\Add8~53\))
-- \Add8~55\ = CARRY((\Add6~54_combout\) # (!\Add8~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~54_combout\,
	datad => VCC,
	cin => \Add8~53\,
	combout => \Add8~54_combout\,
	cout => \Add8~55\);

-- Location: LCCOMB_X69_Y40_N24
\Add8~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (\Add6~56_combout\ & (!\Add8~55\ & VCC)) # (!\Add6~56_combout\ & (\Add8~55\ $ (GND)))
-- \Add8~57\ = CARRY((!\Add6~56_combout\ & !\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~56_combout\,
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

-- Location: LCCOMB_X69_Y40_N26
\Add8~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~58_combout\ = (\Add6~58_combout\ & ((\Add8~57\) # (GND))) # (!\Add6~58_combout\ & (!\Add8~57\))
-- \Add8~59\ = CARRY((\Add6~58_combout\) # (!\Add8~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~58_combout\,
	datad => VCC,
	cin => \Add8~57\,
	combout => \Add8~58_combout\,
	cout => \Add8~59\);

-- Location: LCCOMB_X69_Y40_N28
\Add8~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~60_combout\ = (\Add6~60_combout\ & (!\Add8~59\ & VCC)) # (!\Add6~60_combout\ & (\Add8~59\ $ (GND)))
-- \Add8~61\ = CARRY((!\Add6~60_combout\ & !\Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~60_combout\,
	datad => VCC,
	cin => \Add8~59\,
	combout => \Add8~60_combout\,
	cout => \Add8~61\);

-- Location: LCCOMB_X69_Y40_N30
\Add8~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~62_combout\ = \Add8~61\ $ (!\Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add6~62_combout\,
	cin => \Add8~61\,
	combout => \Add8~62_combout\);

-- Location: IOIBUF_X38_Y0_N8
\is_uni_car_entered~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_entered,
	o => \is_uni_car_entered~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G27
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y33_N4
\second_counter[0]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[0]~93_combout\ = !second_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => second_counter(0),
	combout => \second_counter[0]~93_combout\);

-- Location: FF_X54_Y33_N5
\second_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(0));

-- Location: LCCOMB_X53_Y33_N2
\second_counter[1]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[1]~31_combout\ = (second_counter(0) & (second_counter(1) $ (VCC))) # (!second_counter(0) & (second_counter(1) & VCC))
-- \second_counter[1]~32\ = CARRY((second_counter(0) & second_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(0),
	datab => second_counter(1),
	datad => VCC,
	combout => \second_counter[1]~31_combout\,
	cout => \second_counter[1]~32\);

-- Location: FF_X53_Y33_N3
\second_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(1));

-- Location: LCCOMB_X53_Y33_N4
\second_counter[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[2]~33_combout\ = (second_counter(2) & (!\second_counter[1]~32\)) # (!second_counter(2) & ((\second_counter[1]~32\) # (GND)))
-- \second_counter[2]~34\ = CARRY((!\second_counter[1]~32\) # (!second_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(2),
	datad => VCC,
	cin => \second_counter[1]~32\,
	combout => \second_counter[2]~33_combout\,
	cout => \second_counter[2]~34\);

-- Location: FF_X53_Y33_N5
\second_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(2));

-- Location: LCCOMB_X53_Y33_N6
\second_counter[3]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[3]~35_combout\ = (second_counter(3) & (\second_counter[2]~34\ $ (GND))) # (!second_counter(3) & (!\second_counter[2]~34\ & VCC))
-- \second_counter[3]~36\ = CARRY((second_counter(3) & !\second_counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(3),
	datad => VCC,
	cin => \second_counter[2]~34\,
	combout => \second_counter[3]~35_combout\,
	cout => \second_counter[3]~36\);

-- Location: FF_X53_Y33_N7
\second_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(3));

-- Location: LCCOMB_X53_Y33_N8
\second_counter[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[4]~37_combout\ = (\second_counter[3]~36\ & ((\Equal0~10_combout\) # ((!second_counter(4))))) # (!\second_counter[3]~36\ & (((!\Equal0~10_combout\ & second_counter(4))) # (GND)))
-- \second_counter[4]~38\ = CARRY((\Equal0~10_combout\) # ((!\second_counter[3]~36\) # (!second_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => second_counter(4),
	datad => VCC,
	cin => \second_counter[3]~36\,
	combout => \second_counter[4]~37_combout\,
	cout => \second_counter[4]~38\);

-- Location: FF_X53_Y33_N9
\second_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(4));

-- Location: LCCOMB_X53_Y33_N10
\second_counter[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[5]~39_combout\ = (second_counter(5) & (\second_counter[4]~38\ $ (GND))) # (!second_counter(5) & (!\second_counter[4]~38\ & VCC))
-- \second_counter[5]~40\ = CARRY((second_counter(5) & !\second_counter[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(5),
	datad => VCC,
	cin => \second_counter[4]~38\,
	combout => \second_counter[5]~39_combout\,
	cout => \second_counter[5]~40\);

-- Location: FF_X53_Y33_N11
\second_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(5));

-- Location: LCCOMB_X53_Y33_N12
\second_counter[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[6]~41_combout\ = (second_counter(6) & (!\second_counter[5]~40\)) # (!second_counter(6) & ((\second_counter[5]~40\) # (GND)))
-- \second_counter[6]~42\ = CARRY((!\second_counter[5]~40\) # (!second_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(6),
	datad => VCC,
	cin => \second_counter[5]~40\,
	combout => \second_counter[6]~41_combout\,
	cout => \second_counter[6]~42\);

-- Location: FF_X53_Y33_N13
\second_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(6));

-- Location: LCCOMB_X53_Y33_N14
\second_counter[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[7]~43_combout\ = (second_counter(7) & (\second_counter[6]~42\ $ (GND))) # (!second_counter(7) & (!\second_counter[6]~42\ & VCC))
-- \second_counter[7]~44\ = CARRY((second_counter(7) & !\second_counter[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(7),
	datad => VCC,
	cin => \second_counter[6]~42\,
	combout => \second_counter[7]~43_combout\,
	cout => \second_counter[7]~44\);

-- Location: FF_X53_Y33_N15
\second_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(7));

-- Location: LCCOMB_X53_Y33_N16
\second_counter[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[8]~45_combout\ = (second_counter(8) & (!\second_counter[7]~44\)) # (!second_counter(8) & ((\second_counter[7]~44\) # (GND)))
-- \second_counter[8]~46\ = CARRY((!\second_counter[7]~44\) # (!second_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(8),
	datad => VCC,
	cin => \second_counter[7]~44\,
	combout => \second_counter[8]~45_combout\,
	cout => \second_counter[8]~46\);

-- Location: FF_X53_Y33_N17
\second_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(8));

-- Location: LCCOMB_X53_Y33_N18
\second_counter[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[9]~47_combout\ = (\second_counter[8]~46\ & (!\Equal0~10_combout\ & (second_counter(9) & VCC))) # (!\second_counter[8]~46\ & ((((!\Equal0~10_combout\ & second_counter(9))))))
-- \second_counter[9]~48\ = CARRY((!\Equal0~10_combout\ & (second_counter(9) & !\second_counter[8]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => second_counter(9),
	datad => VCC,
	cin => \second_counter[8]~46\,
	combout => \second_counter[9]~47_combout\,
	cout => \second_counter[9]~48\);

-- Location: FF_X53_Y33_N19
\second_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(9));

-- Location: LCCOMB_X53_Y33_N20
\second_counter[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[10]~49_combout\ = (\second_counter[9]~48\ & ((\Equal0~10_combout\) # ((!second_counter(10))))) # (!\second_counter[9]~48\ & (((!\Equal0~10_combout\ & second_counter(10))) # (GND)))
-- \second_counter[10]~50\ = CARRY((\Equal0~10_combout\) # ((!\second_counter[9]~48\) # (!second_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => second_counter(10),
	datad => VCC,
	cin => \second_counter[9]~48\,
	combout => \second_counter[10]~49_combout\,
	cout => \second_counter[10]~50\);

-- Location: FF_X53_Y33_N21
\second_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(10));

-- Location: LCCOMB_X53_Y33_N22
\second_counter[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[11]~51_combout\ = (\second_counter[10]~50\ & (!\Equal0~10_combout\ & (second_counter(11) & VCC))) # (!\second_counter[10]~50\ & ((((!\Equal0~10_combout\ & second_counter(11))))))
-- \second_counter[11]~52\ = CARRY((!\Equal0~10_combout\ & (second_counter(11) & !\second_counter[10]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => second_counter(11),
	datad => VCC,
	cin => \second_counter[10]~50\,
	combout => \second_counter[11]~51_combout\,
	cout => \second_counter[11]~52\);

-- Location: FF_X53_Y33_N23
\second_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(11));

-- Location: LCCOMB_X53_Y33_N24
\second_counter[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[12]~53_combout\ = (second_counter(12) & (!\second_counter[11]~52\)) # (!second_counter(12) & ((\second_counter[11]~52\) # (GND)))
-- \second_counter[12]~54\ = CARRY((!\second_counter[11]~52\) # (!second_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(12),
	datad => VCC,
	cin => \second_counter[11]~52\,
	combout => \second_counter[12]~53_combout\,
	cout => \second_counter[12]~54\);

-- Location: FF_X53_Y33_N25
\second_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(12));

-- Location: LCCOMB_X53_Y33_N26
\second_counter[13]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[13]~55_combout\ = (second_counter(13) & (\second_counter[12]~54\ $ (GND))) # (!second_counter(13) & (!\second_counter[12]~54\ & VCC))
-- \second_counter[13]~56\ = CARRY((second_counter(13) & !\second_counter[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(13),
	datad => VCC,
	cin => \second_counter[12]~54\,
	combout => \second_counter[13]~55_combout\,
	cout => \second_counter[13]~56\);

-- Location: FF_X53_Y33_N27
\second_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(13));

-- Location: LCCOMB_X53_Y33_N28
\second_counter[14]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[14]~57_combout\ = (second_counter(14) & (!\second_counter[13]~56\)) # (!second_counter(14) & ((\second_counter[13]~56\) # (GND)))
-- \second_counter[14]~58\ = CARRY((!\second_counter[13]~56\) # (!second_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(14),
	datad => VCC,
	cin => \second_counter[13]~56\,
	combout => \second_counter[14]~57_combout\,
	cout => \second_counter[14]~58\);

-- Location: FF_X53_Y33_N29
\second_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(14));

-- Location: LCCOMB_X53_Y33_N30
\second_counter[15]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[15]~59_combout\ = (second_counter(15) & (\second_counter[14]~58\ $ (GND))) # (!second_counter(15) & (!\second_counter[14]~58\ & VCC))
-- \second_counter[15]~60\ = CARRY((second_counter(15) & !\second_counter[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(15),
	datad => VCC,
	cin => \second_counter[14]~58\,
	combout => \second_counter[15]~59_combout\,
	cout => \second_counter[15]~60\);

-- Location: FF_X53_Y33_N31
\second_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(15));

-- Location: LCCOMB_X53_Y32_N0
\second_counter[16]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[16]~61_combout\ = (second_counter(16) & (!\second_counter[15]~60\)) # (!second_counter(16) & ((\second_counter[15]~60\) # (GND)))
-- \second_counter[16]~62\ = CARRY((!\second_counter[15]~60\) # (!second_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(16),
	datad => VCC,
	cin => \second_counter[15]~60\,
	combout => \second_counter[16]~61_combout\,
	cout => \second_counter[16]~62\);

-- Location: FF_X53_Y32_N1
\second_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(16));

-- Location: LCCOMB_X53_Y32_N2
\second_counter[17]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[17]~63_combout\ = (second_counter(17) & (\second_counter[16]~62\ $ (GND))) # (!second_counter(17) & (!\second_counter[16]~62\ & VCC))
-- \second_counter[17]~64\ = CARRY((second_counter(17) & !\second_counter[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(17),
	datad => VCC,
	cin => \second_counter[16]~62\,
	combout => \second_counter[17]~63_combout\,
	cout => \second_counter[17]~64\);

-- Location: FF_X53_Y32_N3
\second_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(17));

-- Location: LCCOMB_X53_Y32_N4
\second_counter[18]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[18]~65_combout\ = (second_counter(18) & (!\second_counter[17]~64\)) # (!second_counter(18) & ((\second_counter[17]~64\) # (GND)))
-- \second_counter[18]~66\ = CARRY((!\second_counter[17]~64\) # (!second_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(18),
	datad => VCC,
	cin => \second_counter[17]~64\,
	combout => \second_counter[18]~65_combout\,
	cout => \second_counter[18]~66\);

-- Location: FF_X53_Y32_N5
\second_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(18));

-- Location: LCCOMB_X53_Y32_N6
\second_counter[19]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[19]~67_combout\ = (second_counter(19) & (\second_counter[18]~66\ $ (GND))) # (!second_counter(19) & (!\second_counter[18]~66\ & VCC))
-- \second_counter[19]~68\ = CARRY((second_counter(19) & !\second_counter[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(19),
	datad => VCC,
	cin => \second_counter[18]~66\,
	combout => \second_counter[19]~67_combout\,
	cout => \second_counter[19]~68\);

-- Location: FF_X53_Y32_N7
\second_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(19));

-- Location: LCCOMB_X53_Y32_N8
\second_counter[20]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[20]~69_combout\ = (second_counter(20) & (!\second_counter[19]~68\)) # (!second_counter(20) & ((\second_counter[19]~68\) # (GND)))
-- \second_counter[20]~70\ = CARRY((!\second_counter[19]~68\) # (!second_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(20),
	datad => VCC,
	cin => \second_counter[19]~68\,
	combout => \second_counter[20]~69_combout\,
	cout => \second_counter[20]~70\);

-- Location: FF_X53_Y32_N9
\second_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(20));

-- Location: LCCOMB_X53_Y32_N10
\second_counter[21]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[21]~71_combout\ = (second_counter(21) & (\second_counter[20]~70\ $ (GND))) # (!second_counter(21) & (!\second_counter[20]~70\ & VCC))
-- \second_counter[21]~72\ = CARRY((second_counter(21) & !\second_counter[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(21),
	datad => VCC,
	cin => \second_counter[20]~70\,
	combout => \second_counter[21]~71_combout\,
	cout => \second_counter[21]~72\);

-- Location: FF_X53_Y32_N11
\second_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(21));

-- Location: LCCOMB_X53_Y32_N12
\second_counter[22]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[22]~73_combout\ = (second_counter(22) & (!\second_counter[21]~72\)) # (!second_counter(22) & ((\second_counter[21]~72\) # (GND)))
-- \second_counter[22]~74\ = CARRY((!\second_counter[21]~72\) # (!second_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(22),
	datad => VCC,
	cin => \second_counter[21]~72\,
	combout => \second_counter[22]~73_combout\,
	cout => \second_counter[22]~74\);

-- Location: FF_X53_Y32_N13
\second_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(22));

-- Location: LCCOMB_X53_Y32_N14
\second_counter[23]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[23]~75_combout\ = (second_counter(23) & (\second_counter[22]~74\ $ (GND))) # (!second_counter(23) & (!\second_counter[22]~74\ & VCC))
-- \second_counter[23]~76\ = CARRY((second_counter(23) & !\second_counter[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(23),
	datad => VCC,
	cin => \second_counter[22]~74\,
	combout => \second_counter[23]~75_combout\,
	cout => \second_counter[23]~76\);

-- Location: FF_X53_Y32_N15
\second_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(23));

-- Location: LCCOMB_X53_Y32_N16
\second_counter[24]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[24]~77_combout\ = (second_counter(24) & (!\second_counter[23]~76\)) # (!second_counter(24) & ((\second_counter[23]~76\) # (GND)))
-- \second_counter[24]~78\ = CARRY((!\second_counter[23]~76\) # (!second_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(24),
	datad => VCC,
	cin => \second_counter[23]~76\,
	combout => \second_counter[24]~77_combout\,
	cout => \second_counter[24]~78\);

-- Location: FF_X53_Y32_N17
\second_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(24));

-- Location: LCCOMB_X53_Y32_N18
\second_counter[25]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[25]~79_combout\ = (second_counter(25) & (\second_counter[24]~78\ $ (GND))) # (!second_counter(25) & (!\second_counter[24]~78\ & VCC))
-- \second_counter[25]~80\ = CARRY((second_counter(25) & !\second_counter[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(25),
	datad => VCC,
	cin => \second_counter[24]~78\,
	combout => \second_counter[25]~79_combout\,
	cout => \second_counter[25]~80\);

-- Location: FF_X53_Y32_N19
\second_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(25));

-- Location: LCCOMB_X53_Y32_N20
\second_counter[26]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[26]~81_combout\ = (second_counter(26) & (!\second_counter[25]~80\)) # (!second_counter(26) & ((\second_counter[25]~80\) # (GND)))
-- \second_counter[26]~82\ = CARRY((!\second_counter[25]~80\) # (!second_counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(26),
	datad => VCC,
	cin => \second_counter[25]~80\,
	combout => \second_counter[26]~81_combout\,
	cout => \second_counter[26]~82\);

-- Location: FF_X53_Y32_N21
\second_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(26));

-- Location: LCCOMB_X53_Y32_N22
\second_counter[27]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[27]~83_combout\ = (second_counter(27) & (\second_counter[26]~82\ $ (GND))) # (!second_counter(27) & (!\second_counter[26]~82\ & VCC))
-- \second_counter[27]~84\ = CARRY((second_counter(27) & !\second_counter[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(27),
	datad => VCC,
	cin => \second_counter[26]~82\,
	combout => \second_counter[27]~83_combout\,
	cout => \second_counter[27]~84\);

-- Location: FF_X53_Y32_N23
\second_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(27));

-- Location: LCCOMB_X53_Y32_N24
\second_counter[28]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[28]~85_combout\ = (second_counter(28) & (!\second_counter[27]~84\)) # (!second_counter(28) & ((\second_counter[27]~84\) # (GND)))
-- \second_counter[28]~86\ = CARRY((!\second_counter[27]~84\) # (!second_counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(28),
	datad => VCC,
	cin => \second_counter[27]~84\,
	combout => \second_counter[28]~85_combout\,
	cout => \second_counter[28]~86\);

-- Location: FF_X53_Y32_N25
\second_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(28));

-- Location: LCCOMB_X53_Y32_N26
\second_counter[29]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[29]~87_combout\ = (second_counter(29) & (\second_counter[28]~86\ $ (GND))) # (!second_counter(29) & (!\second_counter[28]~86\ & VCC))
-- \second_counter[29]~88\ = CARRY((second_counter(29) & !\second_counter[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(29),
	datad => VCC,
	cin => \second_counter[28]~86\,
	combout => \second_counter[29]~87_combout\,
	cout => \second_counter[29]~88\);

-- Location: FF_X53_Y32_N27
\second_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(29));

-- Location: LCCOMB_X53_Y32_N28
\second_counter[30]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[30]~89_combout\ = (second_counter(30) & (!\second_counter[29]~88\)) # (!second_counter(30) & ((\second_counter[29]~88\) # (GND)))
-- \second_counter[30]~90\ = CARRY((!\second_counter[29]~88\) # (!second_counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => second_counter(30),
	datad => VCC,
	cin => \second_counter[29]~88\,
	combout => \second_counter[30]~89_combout\,
	cout => \second_counter[30]~90\);

-- Location: FF_X53_Y32_N29
\second_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(30));

-- Location: LCCOMB_X53_Y32_N30
\second_counter[31]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \second_counter[31]~91_combout\ = second_counter(31) $ (!\second_counter[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(31),
	cin => \second_counter[30]~90\,
	combout => \second_counter[31]~91_combout\);

-- Location: FF_X53_Y32_N31
\second_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second_counter[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_counter(31));

-- Location: LCCOMB_X54_Y33_N22
\Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!second_counter(31) & (!second_counter(0) & (!second_counter(30) & !second_counter(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(31),
	datab => second_counter(0),
	datac => second_counter(30),
	datad => second_counter(29),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X54_Y33_N14
\Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!second_counter(26) & (!second_counter(28) & (!second_counter(25) & !second_counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(26),
	datab => second_counter(28),
	datac => second_counter(25),
	datad => second_counter(27),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X54_Y33_N26
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!second_counter(5) & (!second_counter(7) & (!second_counter(8) & !second_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(5),
	datab => second_counter(7),
	datac => second_counter(8),
	datad => second_counter(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X54_Y33_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (second_counter(4) & (!second_counter(2) & (!second_counter(3) & !second_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(4),
	datab => second_counter(2),
	datac => second_counter(3),
	datad => second_counter(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X53_Y33_N0
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (second_counter(11) & (second_counter(9) & (second_counter(10) & !second_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(11),
	datab => second_counter(9),
	datac => second_counter(10),
	datad => second_counter(12),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X54_Y33_N16
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!second_counter(13) & (!second_counter(14) & (!second_counter(16) & !second_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(13),
	datab => second_counter(14),
	datac => second_counter(16),
	datad => second_counter(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X54_Y33_N30
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X54_Y33_N8
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!second_counter(22) & (!second_counter(24) & (!second_counter(21) & !second_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(22),
	datab => second_counter(24),
	datac => second_counter(21),
	datad => second_counter(23),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X54_Y33_N18
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!second_counter(20) & !second_counter(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => second_counter(20),
	datad => second_counter(17),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X54_Y33_N28
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!second_counter(18) & (!second_counter(19) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter(18),
	datab => second_counter(19),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X54_Y33_N20
\Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~8_combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X55_Y23_N0
\hour[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[0]~31_combout\ = \hour[0]~reg0_q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hour[0]~reg0_q\,
	datad => \Equal0~10_combout\,
	combout => \hour[0]~31_combout\);

-- Location: FF_X54_Y23_N3
\hour[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour[0]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[0]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N2
\hour[1]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[1]~32_combout\ = (\hour[1]~reg0_q\ & (\hour[0]~reg0_q\ $ (VCC))) # (!\hour[1]~reg0_q\ & (\hour[0]~reg0_q\ & VCC))
-- \hour[1]~33\ = CARRY((\hour[1]~reg0_q\ & \hour[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[1]~reg0_q\,
	datab => \hour[0]~reg0_q\,
	datad => VCC,
	combout => \hour[1]~32_combout\,
	cout => \hour[1]~33\);

-- Location: LCCOMB_X55_Y23_N6
\hour[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[1]~reg0feeder_combout\ = \hour[1]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hour[1]~32_combout\,
	combout => \hour[1]~reg0feeder_combout\);

-- Location: FF_X55_Y23_N7
\hour[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[1]~reg0feeder_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[1]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N4
\hour[2]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[2]~34_combout\ = (\hour[2]~reg0_q\ & (!\hour[1]~33\)) # (!\hour[2]~reg0_q\ & ((\hour[1]~33\) # (GND)))
-- \hour[2]~35\ = CARRY((!\hour[1]~33\) # (!\hour[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[2]~reg0_q\,
	datad => VCC,
	cin => \hour[1]~33\,
	combout => \hour[2]~34_combout\,
	cout => \hour[2]~35\);

-- Location: FF_X54_Y23_N5
\hour[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[2]~34_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[2]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N6
\hour[3]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[3]~36_combout\ = (\hour[3]~reg0_q\ & (\hour[2]~35\ $ (GND))) # (!\hour[3]~reg0_q\ & (!\hour[2]~35\ & VCC))
-- \hour[3]~37\ = CARRY((\hour[3]~reg0_q\ & !\hour[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[3]~reg0_q\,
	datad => VCC,
	cin => \hour[2]~35\,
	combout => \hour[3]~36_combout\,
	cout => \hour[3]~37\);

-- Location: FF_X54_Y23_N7
\hour[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[3]~36_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[3]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N8
\hour[4]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[4]~38_combout\ = (\hour[4]~reg0_q\ & (!\hour[3]~37\)) # (!\hour[4]~reg0_q\ & ((\hour[3]~37\) # (GND)))
-- \hour[4]~39\ = CARRY((!\hour[3]~37\) # (!\hour[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[4]~reg0_q\,
	datad => VCC,
	cin => \hour[3]~37\,
	combout => \hour[4]~38_combout\,
	cout => \hour[4]~39\);

-- Location: FF_X54_Y23_N9
\hour[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[4]~38_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[4]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N10
\hour[5]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[5]~40_combout\ = (\hour[5]~reg0_q\ & (\hour[4]~39\ $ (GND))) # (!\hour[5]~reg0_q\ & (!\hour[4]~39\ & VCC))
-- \hour[5]~41\ = CARRY((\hour[5]~reg0_q\ & !\hour[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[5]~reg0_q\,
	datad => VCC,
	cin => \hour[4]~39\,
	combout => \hour[5]~40_combout\,
	cout => \hour[5]~41\);

-- Location: FF_X54_Y23_N11
\hour[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[5]~40_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[5]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N12
\hour[6]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[6]~42_combout\ = (\hour[6]~reg0_q\ & (!\hour[5]~41\)) # (!\hour[6]~reg0_q\ & ((\hour[5]~41\) # (GND)))
-- \hour[6]~43\ = CARRY((!\hour[5]~41\) # (!\hour[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[6]~reg0_q\,
	datad => VCC,
	cin => \hour[5]~41\,
	combout => \hour[6]~42_combout\,
	cout => \hour[6]~43\);

-- Location: FF_X54_Y23_N13
\hour[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[6]~42_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[6]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N14
\hour[7]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[7]~44_combout\ = (\hour[7]~reg0_q\ & (\hour[6]~43\ $ (GND))) # (!\hour[7]~reg0_q\ & (!\hour[6]~43\ & VCC))
-- \hour[7]~45\ = CARRY((\hour[7]~reg0_q\ & !\hour[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[7]~reg0_q\,
	datad => VCC,
	cin => \hour[6]~43\,
	combout => \hour[7]~44_combout\,
	cout => \hour[7]~45\);

-- Location: FF_X54_Y23_N15
\hour[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[7]~44_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[7]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N16
\hour[8]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[8]~46_combout\ = (\hour[8]~reg0_q\ & (!\hour[7]~45\)) # (!\hour[8]~reg0_q\ & ((\hour[7]~45\) # (GND)))
-- \hour[8]~47\ = CARRY((!\hour[7]~45\) # (!\hour[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[8]~reg0_q\,
	datad => VCC,
	cin => \hour[7]~45\,
	combout => \hour[8]~46_combout\,
	cout => \hour[8]~47\);

-- Location: FF_X54_Y23_N17
\hour[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[8]~46_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[8]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N18
\hour[9]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[9]~48_combout\ = (\hour[9]~reg0_q\ & (\hour[8]~47\ $ (GND))) # (!\hour[9]~reg0_q\ & (!\hour[8]~47\ & VCC))
-- \hour[9]~49\ = CARRY((\hour[9]~reg0_q\ & !\hour[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[9]~reg0_q\,
	datad => VCC,
	cin => \hour[8]~47\,
	combout => \hour[9]~48_combout\,
	cout => \hour[9]~49\);

-- Location: FF_X54_Y23_N19
\hour[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[9]~48_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[9]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N20
\hour[10]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[10]~50_combout\ = (\hour[10]~reg0_q\ & (!\hour[9]~49\)) # (!\hour[10]~reg0_q\ & ((\hour[9]~49\) # (GND)))
-- \hour[10]~51\ = CARRY((!\hour[9]~49\) # (!\hour[10]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[10]~reg0_q\,
	datad => VCC,
	cin => \hour[9]~49\,
	combout => \hour[10]~50_combout\,
	cout => \hour[10]~51\);

-- Location: FF_X54_Y23_N21
\hour[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[10]~50_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[10]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N22
\hour[11]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[11]~52_combout\ = (\hour[11]~reg0_q\ & (\hour[10]~51\ $ (GND))) # (!\hour[11]~reg0_q\ & (!\hour[10]~51\ & VCC))
-- \hour[11]~53\ = CARRY((\hour[11]~reg0_q\ & !\hour[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[11]~reg0_q\,
	datad => VCC,
	cin => \hour[10]~51\,
	combout => \hour[11]~52_combout\,
	cout => \hour[11]~53\);

-- Location: FF_X54_Y23_N23
\hour[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[11]~52_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[11]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N0
\max_vacated_space[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~1_combout\ = (!\hour[11]~reg0_q\ & (!\hour[8]~reg0_q\ & (!\hour[10]~reg0_q\ & !\hour[9]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[11]~reg0_q\,
	datab => \hour[8]~reg0_q\,
	datac => \hour[10]~reg0_q\,
	datad => \hour[9]~reg0_q\,
	combout => \max_vacated_space[2]~1_combout\);

-- Location: LCCOMB_X54_Y23_N24
\hour[12]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[12]~54_combout\ = (\hour[12]~reg0_q\ & (!\hour[11]~53\)) # (!\hour[12]~reg0_q\ & ((\hour[11]~53\) # (GND)))
-- \hour[12]~55\ = CARRY((!\hour[11]~53\) # (!\hour[12]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[12]~reg0_q\,
	datad => VCC,
	cin => \hour[11]~53\,
	combout => \hour[12]~54_combout\,
	cout => \hour[12]~55\);

-- Location: FF_X54_Y23_N25
\hour[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[12]~54_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[12]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N26
\hour[13]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[13]~56_combout\ = (\hour[13]~reg0_q\ & (\hour[12]~55\ $ (GND))) # (!\hour[13]~reg0_q\ & (!\hour[12]~55\ & VCC))
-- \hour[13]~57\ = CARRY((\hour[13]~reg0_q\ & !\hour[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[13]~reg0_q\,
	datad => VCC,
	cin => \hour[12]~55\,
	combout => \hour[13]~56_combout\,
	cout => \hour[13]~57\);

-- Location: FF_X54_Y23_N27
\hour[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[13]~56_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[13]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N28
\hour[14]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[14]~58_combout\ = (\hour[14]~reg0_q\ & (!\hour[13]~57\)) # (!\hour[14]~reg0_q\ & ((\hour[13]~57\) # (GND)))
-- \hour[14]~59\ = CARRY((!\hour[13]~57\) # (!\hour[14]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[14]~reg0_q\,
	datad => VCC,
	cin => \hour[13]~57\,
	combout => \hour[14]~58_combout\,
	cout => \hour[14]~59\);

-- Location: FF_X54_Y23_N29
\hour[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[14]~58_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[14]~reg0_q\);

-- Location: LCCOMB_X54_Y23_N30
\hour[15]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[15]~60_combout\ = (\hour[15]~reg0_q\ & (\hour[14]~59\ $ (GND))) # (!\hour[15]~reg0_q\ & (!\hour[14]~59\ & VCC))
-- \hour[15]~61\ = CARRY((\hour[15]~reg0_q\ & !\hour[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[15]~reg0_q\,
	datad => VCC,
	cin => \hour[14]~59\,
	combout => \hour[15]~60_combout\,
	cout => \hour[15]~61\);

-- Location: FF_X54_Y23_N31
\hour[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[15]~60_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[15]~reg0_q\);

-- Location: LCCOMB_X55_Y22_N20
\max_vacated_space[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~2_combout\ = (!\hour[12]~reg0_q\ & (!\hour[15]~reg0_q\ & (!\hour[13]~reg0_q\ & !\hour[14]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[12]~reg0_q\,
	datab => \hour[15]~reg0_q\,
	datac => \hour[13]~reg0_q\,
	datad => \hour[14]~reg0_q\,
	combout => \max_vacated_space[2]~2_combout\);

-- Location: LCCOMB_X55_Y22_N8
\max_vacated_space[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~0_combout\ = (!\hour[4]~reg0_q\ & (!\hour[7]~reg0_q\ & (!\hour[6]~reg0_q\ & !\hour[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[4]~reg0_q\,
	datab => \hour[7]~reg0_q\,
	datac => \hour[6]~reg0_q\,
	datad => \hour[5]~reg0_q\,
	combout => \max_vacated_space[2]~0_combout\);

-- Location: LCCOMB_X54_Y22_N0
\hour[16]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[16]~62_combout\ = (\hour[16]~reg0_q\ & (!\hour[15]~61\)) # (!\hour[16]~reg0_q\ & ((\hour[15]~61\) # (GND)))
-- \hour[16]~63\ = CARRY((!\hour[15]~61\) # (!\hour[16]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[16]~reg0_q\,
	datad => VCC,
	cin => \hour[15]~61\,
	combout => \hour[16]~62_combout\,
	cout => \hour[16]~63\);

-- Location: FF_X54_Y22_N1
\hour[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[16]~62_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[16]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N2
\hour[17]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[17]~64_combout\ = (\hour[17]~reg0_q\ & (\hour[16]~63\ $ (GND))) # (!\hour[17]~reg0_q\ & (!\hour[16]~63\ & VCC))
-- \hour[17]~65\ = CARRY((\hour[17]~reg0_q\ & !\hour[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[17]~reg0_q\,
	datad => VCC,
	cin => \hour[16]~63\,
	combout => \hour[17]~64_combout\,
	cout => \hour[17]~65\);

-- Location: FF_X54_Y22_N3
\hour[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[17]~64_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[17]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N4
\hour[18]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[18]~66_combout\ = (\hour[18]~reg0_q\ & (!\hour[17]~65\)) # (!\hour[18]~reg0_q\ & ((\hour[17]~65\) # (GND)))
-- \hour[18]~67\ = CARRY((!\hour[17]~65\) # (!\hour[18]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[18]~reg0_q\,
	datad => VCC,
	cin => \hour[17]~65\,
	combout => \hour[18]~66_combout\,
	cout => \hour[18]~67\);

-- Location: FF_X54_Y22_N5
\hour[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[18]~66_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[18]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N6
\hour[19]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[19]~68_combout\ = (\hour[19]~reg0_q\ & (\hour[18]~67\ $ (GND))) # (!\hour[19]~reg0_q\ & (!\hour[18]~67\ & VCC))
-- \hour[19]~69\ = CARRY((\hour[19]~reg0_q\ & !\hour[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[19]~reg0_q\,
	datad => VCC,
	cin => \hour[18]~67\,
	combout => \hour[19]~68_combout\,
	cout => \hour[19]~69\);

-- Location: FF_X54_Y22_N7
\hour[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[19]~68_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[19]~reg0_q\);

-- Location: LCCOMB_X55_Y22_N16
\max_vacated_space[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~3_combout\ = (!\hour[19]~reg0_q\ & (!\hour[18]~reg0_q\ & (!\hour[17]~reg0_q\ & !\hour[16]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[19]~reg0_q\,
	datab => \hour[18]~reg0_q\,
	datac => \hour[17]~reg0_q\,
	datad => \hour[16]~reg0_q\,
	combout => \max_vacated_space[2]~3_combout\);

-- Location: LCCOMB_X55_Y22_N6
\max_vacated_space[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~4_combout\ = (\max_vacated_space[2]~1_combout\ & (\max_vacated_space[2]~2_combout\ & (\max_vacated_space[2]~0_combout\ & \max_vacated_space[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_vacated_space[2]~1_combout\,
	datab => \max_vacated_space[2]~2_combout\,
	datac => \max_vacated_space[2]~0_combout\,
	datad => \max_vacated_space[2]~3_combout\,
	combout => \max_vacated_space[2]~4_combout\);

-- Location: LCCOMB_X54_Y22_N8
\hour[20]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[20]~70_combout\ = (\hour[20]~reg0_q\ & (!\hour[19]~69\)) # (!\hour[20]~reg0_q\ & ((\hour[19]~69\) # (GND)))
-- \hour[20]~71\ = CARRY((!\hour[19]~69\) # (!\hour[20]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[20]~reg0_q\,
	datad => VCC,
	cin => \hour[19]~69\,
	combout => \hour[20]~70_combout\,
	cout => \hour[20]~71\);

-- Location: FF_X54_Y22_N9
\hour[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[20]~70_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[20]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N10
\hour[21]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[21]~72_combout\ = (\hour[21]~reg0_q\ & (\hour[20]~71\ $ (GND))) # (!\hour[21]~reg0_q\ & (!\hour[20]~71\ & VCC))
-- \hour[21]~73\ = CARRY((\hour[21]~reg0_q\ & !\hour[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[21]~reg0_q\,
	datad => VCC,
	cin => \hour[20]~71\,
	combout => \hour[21]~72_combout\,
	cout => \hour[21]~73\);

-- Location: FF_X54_Y22_N11
\hour[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[21]~72_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[21]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N12
\hour[22]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[22]~74_combout\ = (\hour[22]~reg0_q\ & (!\hour[21]~73\)) # (!\hour[22]~reg0_q\ & ((\hour[21]~73\) # (GND)))
-- \hour[22]~75\ = CARRY((!\hour[21]~73\) # (!\hour[22]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[22]~reg0_q\,
	datad => VCC,
	cin => \hour[21]~73\,
	combout => \hour[22]~74_combout\,
	cout => \hour[22]~75\);

-- Location: FF_X54_Y22_N13
\hour[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[22]~74_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[22]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N14
\hour[23]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[23]~76_combout\ = (\hour[23]~reg0_q\ & (\hour[22]~75\ $ (GND))) # (!\hour[23]~reg0_q\ & (!\hour[22]~75\ & VCC))
-- \hour[23]~77\ = CARRY((\hour[23]~reg0_q\ & !\hour[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[23]~reg0_q\,
	datad => VCC,
	cin => \hour[22]~75\,
	combout => \hour[23]~76_combout\,
	cout => \hour[23]~77\);

-- Location: FF_X54_Y22_N15
\hour[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[23]~76_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[23]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N16
\hour[24]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[24]~78_combout\ = (\hour[24]~reg0_q\ & (!\hour[23]~77\)) # (!\hour[24]~reg0_q\ & ((\hour[23]~77\) # (GND)))
-- \hour[24]~79\ = CARRY((!\hour[23]~77\) # (!\hour[24]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[24]~reg0_q\,
	datad => VCC,
	cin => \hour[23]~77\,
	combout => \hour[24]~78_combout\,
	cout => \hour[24]~79\);

-- Location: FF_X54_Y22_N17
\hour[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[24]~78_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[24]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N18
\hour[25]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[25]~80_combout\ = (\hour[25]~reg0_q\ & (\hour[24]~79\ $ (GND))) # (!\hour[25]~reg0_q\ & (!\hour[24]~79\ & VCC))
-- \hour[25]~81\ = CARRY((\hour[25]~reg0_q\ & !\hour[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[25]~reg0_q\,
	datad => VCC,
	cin => \hour[24]~79\,
	combout => \hour[25]~80_combout\,
	cout => \hour[25]~81\);

-- Location: FF_X54_Y22_N19
\hour[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[25]~80_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[25]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N20
\hour[26]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[26]~82_combout\ = (\hour[26]~reg0_q\ & (!\hour[25]~81\)) # (!\hour[26]~reg0_q\ & ((\hour[25]~81\) # (GND)))
-- \hour[26]~83\ = CARRY((!\hour[25]~81\) # (!\hour[26]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[26]~reg0_q\,
	datad => VCC,
	cin => \hour[25]~81\,
	combout => \hour[26]~82_combout\,
	cout => \hour[26]~83\);

-- Location: FF_X54_Y22_N21
\hour[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[26]~82_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[26]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N22
\hour[27]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[27]~84_combout\ = (\hour[27]~reg0_q\ & (\hour[26]~83\ $ (GND))) # (!\hour[27]~reg0_q\ & (!\hour[26]~83\ & VCC))
-- \hour[27]~85\ = CARRY((\hour[27]~reg0_q\ & !\hour[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[27]~reg0_q\,
	datad => VCC,
	cin => \hour[26]~83\,
	combout => \hour[27]~84_combout\,
	cout => \hour[27]~85\);

-- Location: FF_X54_Y22_N23
\hour[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[27]~84_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[27]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N24
\hour[28]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[28]~86_combout\ = (\hour[28]~reg0_q\ & (!\hour[27]~85\)) # (!\hour[28]~reg0_q\ & ((\hour[27]~85\) # (GND)))
-- \hour[28]~87\ = CARRY((!\hour[27]~85\) # (!\hour[28]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[28]~reg0_q\,
	datad => VCC,
	cin => \hour[27]~85\,
	combout => \hour[28]~86_combout\,
	cout => \hour[28]~87\);

-- Location: FF_X54_Y22_N25
\hour[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[28]~86_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[28]~reg0_q\);

-- Location: LCCOMB_X54_Y22_N26
\hour[29]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[29]~88_combout\ = (\hour[29]~reg0_q\ & (\hour[28]~87\ $ (GND))) # (!\hour[29]~reg0_q\ & (!\hour[28]~87\ & VCC))
-- \hour[29]~89\ = CARRY((\hour[29]~reg0_q\ & !\hour[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[29]~reg0_q\,
	datad => VCC,
	cin => \hour[28]~87\,
	combout => \hour[29]~88_combout\,
	cout => \hour[29]~89\);

-- Location: FF_X54_Y22_N27
\hour[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[29]~88_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[29]~reg0_q\);

-- Location: LCCOMB_X55_Y22_N22
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\hour[27]~reg0_q\ & (!\hour[26]~reg0_q\ & (!\hour[25]~reg0_q\ & !\hour[28]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[27]~reg0_q\,
	datab => \hour[26]~reg0_q\,
	datac => \hour[25]~reg0_q\,
	datad => \hour[28]~reg0_q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y22_N28
\hour[30]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[30]~90_combout\ = (\hour[30]~reg0_q\ & (!\hour[29]~89\)) # (!\hour[30]~reg0_q\ & ((\hour[29]~89\) # (GND)))
-- \hour[30]~91\ = CARRY((!\hour[29]~89\) # (!\hour[30]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hour[30]~reg0_q\,
	datad => VCC,
	cin => \hour[29]~89\,
	combout => \hour[30]~90_combout\,
	cout => \hour[30]~91\);

-- Location: FF_X54_Y22_N29
\hour[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[30]~90_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[30]~reg0_q\);

-- Location: LCCOMB_X55_Y22_N4
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\hour[29]~reg0_q\ & (\LessThan0~0_combout\ & !\hour[30]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[29]~reg0_q\,
	datac => \LessThan0~0_combout\,
	datad => \hour[30]~reg0_q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y22_N28
\max_vacated_space[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~5_combout\ = (!\hour[21]~reg0_q\ & (!\hour[22]~reg0_q\ & (!\hour[20]~reg0_q\ & !\hour[23]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[21]~reg0_q\,
	datab => \hour[22]~reg0_q\,
	datac => \hour[20]~reg0_q\,
	datad => \hour[23]~reg0_q\,
	combout => \max_vacated_space[2]~5_combout\);

-- Location: LCCOMB_X55_Y22_N14
\max_vacated_space[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~6_combout\ = (!\hour[24]~reg0_q\ & \max_vacated_space[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hour[24]~reg0_q\,
	datad => \max_vacated_space[2]~5_combout\,
	combout => \max_vacated_space[2]~6_combout\);

-- Location: LCCOMB_X55_Y23_N22
\max_vacated_space[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~7_combout\ = (\hour[3]~reg0_q\ & (\hour[2]~reg0_q\ & ((\hour[1]~reg0_q\) # (\hour[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[1]~reg0_q\,
	datab => \hour[3]~reg0_q\,
	datac => \hour[2]~reg0_q\,
	datad => \hour[0]~reg0_q\,
	combout => \max_vacated_space[2]~7_combout\);

-- Location: LCCOMB_X55_Y22_N26
\max_vacated_space[2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~8_combout\ = (((\max_vacated_space[2]~7_combout\) # (!\max_vacated_space[2]~6_combout\)) # (!\LessThan0~1_combout\)) # (!\max_vacated_space[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_vacated_space[2]~4_combout\,
	datab => \LessThan0~1_combout\,
	datac => \max_vacated_space[2]~6_combout\,
	datad => \max_vacated_space[2]~7_combout\,
	combout => \max_vacated_space[2]~8_combout\);

-- Location: LCCOMB_X54_Y22_N30
\hour[31]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[31]~92_combout\ = \hour[31]~reg0_q\ $ (!\hour[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour[31]~reg0_q\,
	cin => \hour[30]~91\,
	combout => \hour[31]~92_combout\);

-- Location: FF_X54_Y22_N31
\hour[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hour[31]~92_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour[31]~reg0_q\);

-- Location: LCCOMB_X55_Y22_N18
\max_vacated_space[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \max_vacated_space[2]~9_combout\ = (\max_vacated_space[2]~8_combout\ & !\hour[31]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \max_vacated_space[2]~8_combout\,
	datad => \hour[31]~reg0_q\,
	combout => \max_vacated_space[2]~9_combout\);

-- Location: CLKCTRL_G13
\max_vacated_space[2]~9clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \max_vacated_space[2]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \max_vacated_space[2]~9clkctrl_outclk\);

-- Location: LCCOMB_X55_Y22_N10
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\hour[31]~reg0_q\) # ((\LessThan0~1_combout\ & (\max_vacated_space[2]~6_combout\ & \max_vacated_space[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[31]~reg0_q\,
	datab => \LessThan0~1_combout\,
	datac => \max_vacated_space[2]~6_combout\,
	datad => \max_vacated_space[2]~4_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X58_Y37_N2
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = max_vacated_space(1) $ (VCC)
-- \Add2~1\ = CARRY(max_vacated_space(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X56_Y37_N2
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = max_vacated_space(1) $ (VCC)
-- \Add3~1\ = CARRY(max_vacated_space(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(1),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X57_Y37_N14
\Add2~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~92_combout\ = (\LessThan0~2_combout\ & ((\Add3~0_combout\))) # (!\LessThan0~2_combout\ & (\Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Add3~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~92_combout\);

-- Location: LCCOMB_X57_Y37_N4
\max_vacated_space[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(1) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~92_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(1),
	datac => \Add2~92_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(1));

-- Location: LCCOMB_X58_Y37_N4
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (max_vacated_space(2) & (\Add2~1\ & VCC)) # (!max_vacated_space(2) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!max_vacated_space(2) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X56_Y37_N4
\Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (max_vacated_space(2) & (!\Add3~1\)) # (!max_vacated_space(2) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!max_vacated_space(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(2),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X57_Y37_N24
\Add2~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~91_combout\ = (\LessThan0~2_combout\ & ((\Add3~2_combout\))) # (!\LessThan0~2_combout\ & (\Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datac => \Add3~2_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~91_combout\);

-- Location: LCCOMB_X57_Y37_N6
\max_vacated_space[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(2) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~91_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(2),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~91_combout\,
	combout => max_vacated_space(2));

-- Location: LCCOMB_X58_Y37_N6
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (max_vacated_space(3) & (\Add2~3\ $ (GND))) # (!max_vacated_space(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((max_vacated_space(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X56_Y37_N6
\Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (max_vacated_space(3) & (\Add3~3\ $ (GND))) # (!max_vacated_space(3) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((max_vacated_space(3) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(3),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X57_Y37_N26
\Add2~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~90_combout\ = (\LessThan0~2_combout\ & ((\Add3~4_combout\))) # (!\LessThan0~2_combout\ & (\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => \Add3~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~90_combout\);

-- Location: LCCOMB_X57_Y37_N12
\max_vacated_space[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(3) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~90_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(3),
	datac => \Add2~90_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(3));

-- Location: LCCOMB_X56_Y37_N8
\Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (max_vacated_space(4) & (\Add3~5\ & VCC)) # (!max_vacated_space(4) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!max_vacated_space(4) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(4),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X58_Y37_N8
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (max_vacated_space(4) & (\Add2~5\ & VCC)) # (!max_vacated_space(4) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!max_vacated_space(4) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X57_Y37_N20
\Add2~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~89_combout\ = (\LessThan0~2_combout\ & (\Add3~6_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datac => \Add2~6_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~89_combout\);

-- Location: LCCOMB_X58_Y37_N0
\max_vacated_space[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(4) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~89_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(4),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~89_combout\,
	combout => max_vacated_space(4));

-- Location: LCCOMB_X56_Y37_N10
\Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (max_vacated_space(5) & ((GND) # (!\Add3~7\))) # (!max_vacated_space(5) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((max_vacated_space(5)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(5),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X58_Y37_N10
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (max_vacated_space(5) & (\Add2~7\ $ (GND))) # (!max_vacated_space(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((max_vacated_space(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X57_Y37_N18
\Add2~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~88_combout\ = (\LessThan0~2_combout\ & (\Add3~8_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datac => \Add2~8_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~88_combout\);

-- Location: LCCOMB_X57_Y37_N22
\max_vacated_space[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(5) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~88_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(5),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~88_combout\,
	combout => max_vacated_space(5));

-- Location: LCCOMB_X56_Y37_N12
\Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (max_vacated_space(6) & (!\Add3~9\)) # (!max_vacated_space(6) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!max_vacated_space(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(6),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X58_Y37_N12
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (max_vacated_space(6) & (!\Add2~9\)) # (!max_vacated_space(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!max_vacated_space(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X57_Y37_N0
\Add2~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~87_combout\ = (\LessThan0~2_combout\ & (\Add3~10_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datac => \Add2~10_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~87_combout\);

-- Location: LCCOMB_X57_Y37_N28
\max_vacated_space[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(6) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~87_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(6),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~87_combout\,
	combout => max_vacated_space(6));

-- Location: LCCOMB_X56_Y37_N14
\Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (max_vacated_space(7) & (\Add3~11\ $ (GND))) # (!max_vacated_space(7) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((max_vacated_space(7) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(7),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X58_Y37_N14
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (max_vacated_space(7) & ((GND) # (!\Add2~11\))) # (!max_vacated_space(7) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((max_vacated_space(7)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X57_Y37_N2
\Add2~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~86_combout\ = (\LessThan0~2_combout\ & (\Add3~12_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datac => \Add2~12_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~86_combout\);

-- Location: LCCOMB_X57_Y37_N30
\max_vacated_space[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(7) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~86_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(7),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~86_combout\,
	combout => max_vacated_space(7));

-- Location: LCCOMB_X58_Y37_N16
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (max_vacated_space(8) & (!\Add2~13\)) # (!max_vacated_space(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!max_vacated_space(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X56_Y37_N16
\Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (max_vacated_space(8) & (!\Add3~13\)) # (!max_vacated_space(8) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!max_vacated_space(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(8),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X59_Y37_N0
\Add2~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~85_combout\ = (\LessThan0~2_combout\ & ((\Add3~14_combout\))) # (!\LessThan0~2_combout\ & (\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datac => \Add3~14_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~85_combout\);

-- Location: LCCOMB_X59_Y37_N22
\max_vacated_space[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(8) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~85_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(8),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~85_combout\,
	combout => max_vacated_space(8));

-- Location: LCCOMB_X58_Y37_N18
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (max_vacated_space(9) & (\Add2~15\ $ (GND))) # (!max_vacated_space(9) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((max_vacated_space(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X56_Y37_N18
\Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (max_vacated_space(9) & (\Add3~15\ $ (GND))) # (!max_vacated_space(9) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((max_vacated_space(9) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(9),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X59_Y37_N6
\Add2~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~84_combout\ = (\LessThan0~2_combout\ & ((\Add3~16_combout\))) # (!\LessThan0~2_combout\ & (\Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~16_combout\,
	datac => \Add3~16_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~84_combout\);

-- Location: LCCOMB_X59_Y37_N28
\max_vacated_space[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(9) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~84_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(9),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~84_combout\,
	combout => max_vacated_space(9));

-- Location: LCCOMB_X58_Y37_N20
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (max_vacated_space(10) & (!\Add2~17\)) # (!max_vacated_space(10) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!max_vacated_space(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X56_Y37_N20
\Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (max_vacated_space(10) & (!\Add3~17\)) # (!max_vacated_space(10) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!max_vacated_space(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(10),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X59_Y37_N16
\Add2~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~83_combout\ = (\LessThan0~2_combout\ & ((\Add3~18_combout\))) # (!\LessThan0~2_combout\ & (\Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datac => \Add3~18_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~83_combout\);

-- Location: LCCOMB_X59_Y37_N26
\max_vacated_space[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(10) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~83_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(10),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~83_combout\,
	combout => max_vacated_space(10));

-- Location: LCCOMB_X58_Y37_N22
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (max_vacated_space(11) & (\Add2~19\ $ (GND))) # (!max_vacated_space(11) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((max_vacated_space(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X56_Y37_N22
\Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (max_vacated_space(11) & (\Add3~19\ $ (GND))) # (!max_vacated_space(11) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((max_vacated_space(11) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(11),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X59_Y37_N18
\Add2~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~82_combout\ = (\LessThan0~2_combout\ & ((\Add3~20_combout\))) # (!\LessThan0~2_combout\ & (\Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~20_combout\,
	datac => \Add3~20_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~82_combout\);

-- Location: LCCOMB_X59_Y37_N8
\max_vacated_space[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(11) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~82_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(11),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~82_combout\,
	combout => max_vacated_space(11));

-- Location: LCCOMB_X58_Y37_N24
\Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (max_vacated_space(12) & (!\Add2~21\)) # (!max_vacated_space(12) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!max_vacated_space(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X56_Y37_N24
\Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (max_vacated_space(12) & (!\Add3~21\)) # (!max_vacated_space(12) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!max_vacated_space(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(12),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X59_Y37_N12
\Add2~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~81_combout\ = (\LessThan0~2_combout\ & ((\Add3~22_combout\))) # (!\LessThan0~2_combout\ & (\Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~22_combout\,
	datac => \Add3~22_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~81_combout\);

-- Location: LCCOMB_X59_Y37_N2
\max_vacated_space[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(12) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~81_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(12),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~81_combout\,
	combout => max_vacated_space(12));

-- Location: LCCOMB_X56_Y37_N26
\Add3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (max_vacated_space(13) & (\Add3~23\ $ (GND))) # (!max_vacated_space(13) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((max_vacated_space(13) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(13),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X58_Y37_N26
\Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (max_vacated_space(13) & (\Add2~23\ $ (GND))) # (!max_vacated_space(13) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((max_vacated_space(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X59_Y37_N10
\Add2~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~80_combout\ = (\LessThan0~2_combout\ & (\Add3~24_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~24_combout\,
	datac => \Add2~24_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~80_combout\);

-- Location: LCCOMB_X59_Y37_N4
\max_vacated_space[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(13) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~80_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(13),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~80_combout\,
	combout => max_vacated_space(13));

-- Location: LCCOMB_X58_Y37_N28
\Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (max_vacated_space(14) & (!\Add2~25\)) # (!max_vacated_space(14) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!max_vacated_space(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X56_Y37_N28
\Add3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (max_vacated_space(14) & (!\Add3~25\)) # (!max_vacated_space(14) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!max_vacated_space(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(14),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X59_Y37_N24
\Add2~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~79_combout\ = (\LessThan0~2_combout\ & ((\Add3~26_combout\))) # (!\LessThan0~2_combout\ & (\Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~26_combout\,
	datac => \Add3~26_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~79_combout\);

-- Location: LCCOMB_X59_Y37_N14
\max_vacated_space[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(14) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~79_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(14),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~79_combout\,
	combout => max_vacated_space(14));

-- Location: LCCOMB_X56_Y37_N30
\Add3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (max_vacated_space(15) & (\Add3~27\ $ (GND))) # (!max_vacated_space(15) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((max_vacated_space(15) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(15),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X58_Y37_N30
\Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (max_vacated_space(15) & (\Add2~27\ $ (GND))) # (!max_vacated_space(15) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((max_vacated_space(15) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(15),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X57_Y37_N16
\Add2~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~78_combout\ = (\LessThan0~2_combout\ & (\Add3~28_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~28_combout\,
	datac => \Add2~28_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~78_combout\);

-- Location: LCCOMB_X57_Y37_N8
\max_vacated_space[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(15) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~78_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(15),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~78_combout\,
	combout => max_vacated_space(15));

-- Location: LCCOMB_X56_Y36_N0
\Add3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (max_vacated_space(16) & (!\Add3~29\)) # (!max_vacated_space(16) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!max_vacated_space(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(16),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X58_Y36_N0
\Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (max_vacated_space(16) & (!\Add2~29\)) # (!max_vacated_space(16) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!max_vacated_space(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(16),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X57_Y36_N6
\Add2~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~77_combout\ = (\LessThan0~2_combout\ & (\Add3~30_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \Add2~30_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add2~77_combout\);

-- Location: LCCOMB_X57_Y36_N26
\max_vacated_space[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(16) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~77_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(16),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~77_combout\,
	combout => max_vacated_space(16));

-- Location: LCCOMB_X56_Y36_N2
\Add3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (max_vacated_space(17) & (\Add3~31\ $ (GND))) # (!max_vacated_space(17) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((max_vacated_space(17) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(17),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X58_Y36_N2
\Add2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (max_vacated_space(17) & (\Add2~31\ $ (GND))) # (!max_vacated_space(17) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((max_vacated_space(17) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(17),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X57_Y36_N0
\Add2~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = (\LessThan0~2_combout\ & (\Add3~32_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \Add2~32_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add2~76_combout\);

-- Location: LCCOMB_X57_Y36_N4
\max_vacated_space[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(17) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~76_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(17),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~76_combout\,
	combout => max_vacated_space(17));

-- Location: LCCOMB_X56_Y36_N4
\Add3~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (max_vacated_space(18) & (!\Add3~33\)) # (!max_vacated_space(18) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!max_vacated_space(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(18),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X58_Y36_N4
\Add2~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (max_vacated_space(18) & (!\Add2~33\)) # (!max_vacated_space(18) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!max_vacated_space(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(18),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X57_Y36_N10
\Add2~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~75_combout\ = (\LessThan0~2_combout\ & (\Add3~34_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~34_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add2~34_combout\,
	combout => \Add2~75_combout\);

-- Location: LCCOMB_X57_Y36_N30
\max_vacated_space[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(18) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~75_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(18),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~75_combout\,
	combout => max_vacated_space(18));

-- Location: LCCOMB_X58_Y36_N6
\Add2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (max_vacated_space(19) & (\Add2~35\ $ (GND))) # (!max_vacated_space(19) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((max_vacated_space(19) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(19),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X56_Y36_N6
\Add3~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (max_vacated_space(19) & (\Add3~35\ $ (GND))) # (!max_vacated_space(19) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((max_vacated_space(19) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(19),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X57_Y36_N24
\Add2~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (\LessThan0~2_combout\ & ((\Add3~36_combout\))) # (!\LessThan0~2_combout\ & (\Add2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~36_combout\,
	datab => \Add3~36_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add2~74_combout\);

-- Location: LCCOMB_X57_Y36_N16
\max_vacated_space[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(19) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~74_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(19),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~74_combout\,
	combout => max_vacated_space(19));

-- Location: LCCOMB_X56_Y36_N8
\Add3~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (max_vacated_space(20) & (!\Add3~37\)) # (!max_vacated_space(20) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!max_vacated_space(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(20),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X58_Y36_N8
\Add2~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (max_vacated_space(20) & (!\Add2~37\)) # (!max_vacated_space(20) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!max_vacated_space(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(20),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X57_Y36_N14
\Add2~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~73_combout\ = (\LessThan0~2_combout\ & (\Add3~38_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Add2~38_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add2~73_combout\);

-- Location: LCCOMB_X57_Y36_N22
\max_vacated_space[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(20) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~73_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(20),
	datac => \Add2~73_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(20));

-- Location: LCCOMB_X56_Y36_N10
\Add3~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (max_vacated_space(21) & (\Add3~39\ $ (GND))) # (!max_vacated_space(21) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((max_vacated_space(21) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(21),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X58_Y36_N10
\Add2~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (max_vacated_space(21) & (\Add2~39\ $ (GND))) # (!max_vacated_space(21) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((max_vacated_space(21) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(21),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X57_Y36_N8
\Add2~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = (\LessThan0~2_combout\ & (\Add3~40_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~40_combout\,
	datab => \Add2~40_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add2~72_combout\);

-- Location: LCCOMB_X57_Y36_N12
\max_vacated_space[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(21) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~72_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(21),
	datac => \Add2~72_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(21));

-- Location: LCCOMB_X56_Y36_N12
\Add3~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (max_vacated_space(22) & (!\Add3~41\)) # (!max_vacated_space(22) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!max_vacated_space(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(22),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X58_Y36_N12
\Add2~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (max_vacated_space(22) & (!\Add2~41\)) # (!max_vacated_space(22) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!max_vacated_space(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(22),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X57_Y36_N2
\Add2~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~71_combout\ = (\LessThan0~2_combout\ & (\Add3~42_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~42_combout\,
	datab => \Add2~42_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add2~71_combout\);

-- Location: LCCOMB_X57_Y36_N18
\max_vacated_space[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(22) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~71_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(22),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~71_combout\,
	combout => max_vacated_space(22));

-- Location: LCCOMB_X58_Y36_N14
\Add2~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (max_vacated_space(23) & (\Add2~43\ $ (GND))) # (!max_vacated_space(23) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((max_vacated_space(23) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(23),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X56_Y36_N14
\Add3~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (max_vacated_space(23) & (\Add3~43\ $ (GND))) # (!max_vacated_space(23) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((max_vacated_space(23) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(23),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X59_Y36_N30
\Add2~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (\LessThan0~2_combout\ & ((\Add3~44_combout\))) # (!\LessThan0~2_combout\ & (\Add2~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datac => \Add3~44_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~70_combout\);

-- Location: LCCOMB_X59_Y36_N22
\max_vacated_space[23]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(23) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~70_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(23),
	datac => \Add2~70_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(23));

-- Location: LCCOMB_X58_Y36_N16
\Add2~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (max_vacated_space(24) & (!\Add2~45\)) # (!max_vacated_space(24) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!max_vacated_space(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(24),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X56_Y36_N16
\Add3~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (max_vacated_space(24) & (!\Add3~45\)) # (!max_vacated_space(24) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!max_vacated_space(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(24),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X59_Y36_N20
\Add2~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~69_combout\ = (\LessThan0~2_combout\ & ((\Add3~46_combout\))) # (!\LessThan0~2_combout\ & (\Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \Add3~46_combout\,
	datac => \LessThan0~2_combout\,
	combout => \Add2~69_combout\);

-- Location: LCCOMB_X59_Y36_N16
\max_vacated_space[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(24) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~69_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(24),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~69_combout\,
	combout => max_vacated_space(24));

-- Location: LCCOMB_X58_Y36_N18
\Add2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (max_vacated_space(25) & (\Add2~47\ $ (GND))) # (!max_vacated_space(25) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((max_vacated_space(25) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(25),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X56_Y36_N18
\Add3~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (max_vacated_space(25) & (\Add3~47\ $ (GND))) # (!max_vacated_space(25) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((max_vacated_space(25) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(25),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X57_Y36_N20
\Add2~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = (\LessThan0~2_combout\ & ((\Add3~48_combout\))) # (!\LessThan0~2_combout\ & (\Add2~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~48_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add3~48_combout\,
	combout => \Add2~68_combout\);

-- Location: LCCOMB_X57_Y36_N28
\max_vacated_space[25]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(25) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~68_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(25),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~68_combout\,
	combout => max_vacated_space(25));

-- Location: LCCOMB_X58_Y36_N20
\Add2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (max_vacated_space(26) & (!\Add2~49\)) # (!max_vacated_space(26) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!max_vacated_space(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(26),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X56_Y36_N20
\Add3~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (max_vacated_space(26) & (!\Add3~49\)) # (!max_vacated_space(26) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!max_vacated_space(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(26),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X59_Y36_N14
\Add2~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~67_combout\ = (\LessThan0~2_combout\ & ((\Add3~50_combout\))) # (!\LessThan0~2_combout\ & (\Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~50_combout\,
	datac => \Add3~50_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~67_combout\);

-- Location: LCCOMB_X59_Y36_N10
\max_vacated_space[26]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(26) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~67_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(26),
	datac => \Add2~67_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(26));

-- Location: LCCOMB_X58_Y36_N22
\Add2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (max_vacated_space(27) & (\Add2~51\ $ (GND))) # (!max_vacated_space(27) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((max_vacated_space(27) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(27),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X56_Y36_N22
\Add3~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (max_vacated_space(27) & (\Add3~51\ $ (GND))) # (!max_vacated_space(27) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((max_vacated_space(27) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(27),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X59_Y36_N28
\Add2~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (\LessThan0~2_combout\ & ((\Add3~52_combout\))) # (!\LessThan0~2_combout\ & (\Add2~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~52_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add3~52_combout\,
	combout => \Add2~66_combout\);

-- Location: LCCOMB_X59_Y36_N24
\max_vacated_space[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(27) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~66_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(27),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~66_combout\,
	combout => max_vacated_space(27));

-- Location: LCCOMB_X58_Y36_N24
\Add2~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (max_vacated_space(28) & (!\Add2~53\)) # (!max_vacated_space(28) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!max_vacated_space(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(28),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X56_Y36_N24
\Add3~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (max_vacated_space(28) & (!\Add3~53\)) # (!max_vacated_space(28) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!max_vacated_space(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(28),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X59_Y36_N6
\Add2~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~65_combout\ = (\LessThan0~2_combout\ & ((\Add3~54_combout\))) # (!\LessThan0~2_combout\ & (\Add2~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~54_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add3~54_combout\,
	combout => \Add2~65_combout\);

-- Location: LCCOMB_X59_Y36_N18
\max_vacated_space[28]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(28) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~65_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(28),
	datac => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~65_combout\,
	combout => max_vacated_space(28));

-- Location: LCCOMB_X58_Y36_N26
\Add2~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (max_vacated_space(29) & (\Add2~55\ $ (GND))) # (!max_vacated_space(29) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((max_vacated_space(29) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(29),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X56_Y36_N26
\Add3~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (max_vacated_space(29) & (\Add3~55\ $ (GND))) # (!max_vacated_space(29) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((max_vacated_space(29) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(29),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X59_Y36_N4
\Add2~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = (\LessThan0~2_combout\ & ((\Add3~56_combout\))) # (!\LessThan0~2_combout\ & (\Add2~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \Add3~56_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add2~64_combout\);

-- Location: LCCOMB_X59_Y36_N12
\max_vacated_space[29]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(29) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~64_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(29),
	datac => \Add2~64_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(29));

-- Location: LCCOMB_X58_Y36_N28
\Add2~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (max_vacated_space(30) & (!\Add2~57\)) # (!max_vacated_space(30) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!max_vacated_space(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(30),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X56_Y36_N28
\Add3~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (max_vacated_space(30) & (!\Add3~57\)) # (!max_vacated_space(30) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!max_vacated_space(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(30),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X55_Y22_N30
\Add2~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~63_combout\ = (\LessThan0~2_combout\ & ((\Add3~58_combout\))) # (!\LessThan0~2_combout\ & (\Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~58_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add3~58_combout\,
	combout => \Add2~63_combout\);

-- Location: LCCOMB_X55_Y22_N0
\max_vacated_space[30]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(30) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~63_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(30),
	datac => \Add2~63_combout\,
	datad => \max_vacated_space[2]~9clkctrl_outclk\,
	combout => max_vacated_space(30));

-- Location: LCCOMB_X56_Y36_N30
\Add3~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = \Add3~59\ $ (!max_vacated_space(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => max_vacated_space(31),
	cin => \Add3~59\,
	combout => \Add3~60_combout\);

-- Location: LCCOMB_X58_Y36_N30
\Add2~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = max_vacated_space(31) $ (!\Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(31),
	cin => \Add2~59\,
	combout => \Add2~60_combout\);

-- Location: LCCOMB_X55_Y22_N2
\Add2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (\LessThan0~2_combout\ & (\Add3~60_combout\)) # (!\LessThan0~2_combout\ & ((\Add2~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \Add3~60_combout\,
	datad => \Add2~60_combout\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X55_Y22_N12
\max_vacated_space[31]\ : cycloneiv_lcell_comb
-- Equation(s):
-- max_vacated_space(31) = (GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & ((\Add2~62_combout\))) # (!GLOBAL(\max_vacated_space[2]~9clkctrl_outclk\) & (max_vacated_space(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(31),
	datab => \max_vacated_space[2]~9clkctrl_outclk\,
	datad => \Add2~62_combout\,
	combout => max_vacated_space(31));

-- Location: LCCOMB_X64_Y39_N2
\exited_car[1]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[1]~37_combout\ = (exited_car(0) & (exited_car(1) $ (VCC))) # (!exited_car(0) & (exited_car(1) & VCC))
-- \exited_car[1]~38\ = CARRY((exited_car(0) & exited_car(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(0),
	datab => exited_car(1),
	datad => VCC,
	combout => \exited_car[1]~37_combout\,
	cout => \exited_car[1]~38\);

-- Location: FF_X64_Y37_N7
\exited_car[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[1]~37_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(1));

-- Location: LCCOMB_X64_Y37_N0
\Add7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (entered_car(0) & ((GND) # (!exited_car(0)))) # (!entered_car(0) & (exited_car(0) $ (GND)))
-- \Add7~1\ = CARRY((entered_car(0)) # (!exited_car(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(0),
	datab => exited_car(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X64_Y37_N2
\Add7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (entered_car(1) & ((exited_car(1) & (!\Add7~1\)) # (!exited_car(1) & (\Add7~1\ & VCC)))) # (!entered_car(1) & ((exited_car(1) & ((\Add7~1\) # (GND))) # (!exited_car(1) & (!\Add7~1\))))
-- \Add7~3\ = CARRY((entered_car(1) & (exited_car(1) & !\Add7~1\)) # (!entered_car(1) & ((exited_car(1)) # (!\Add7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(1),
	datab => exited_car(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X64_Y37_N4
\Add7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((exited_car(2) $ (entered_car(2) $ (\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((exited_car(2) & (entered_car(2) & !\Add7~3\)) # (!exited_car(2) & ((entered_car(2)) # (!\Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(2),
	datab => entered_car(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X64_Y37_N6
\Add7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (exited_car(3) & ((entered_car(3) & (!\Add7~5\)) # (!entered_car(3) & ((\Add7~5\) # (GND))))) # (!exited_car(3) & ((entered_car(3) & (\Add7~5\ & VCC)) # (!entered_car(3) & (!\Add7~5\))))
-- \Add7~7\ = CARRY((exited_car(3) & ((!\Add7~5\) # (!entered_car(3)))) # (!exited_car(3) & (!entered_car(3) & !\Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(3),
	datab => entered_car(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X64_Y37_N8
\Add7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((exited_car(4) $ (entered_car(4) $ (\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((exited_car(4) & (entered_car(4) & !\Add7~7\)) # (!exited_car(4) & ((entered_car(4)) # (!\Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(4),
	datab => entered_car(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X64_Y37_N10
\Add7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (exited_car(5) & ((entered_car(5) & (!\Add7~9\)) # (!entered_car(5) & ((\Add7~9\) # (GND))))) # (!exited_car(5) & ((entered_car(5) & (\Add7~9\ & VCC)) # (!entered_car(5) & (!\Add7~9\))))
-- \Add7~11\ = CARRY((exited_car(5) & ((!\Add7~9\) # (!entered_car(5)))) # (!exited_car(5) & (!entered_car(5) & !\Add7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(5),
	datab => entered_car(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X64_Y37_N12
\Add7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = ((entered_car(6) $ (exited_car(6) $ (\Add7~11\)))) # (GND)
-- \Add7~13\ = CARRY((entered_car(6) & ((!\Add7~11\) # (!exited_car(6)))) # (!entered_car(6) & (!exited_car(6) & !\Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(6),
	datab => exited_car(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X64_Y37_N14
\Add7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (entered_car(7) & ((exited_car(7) & (!\Add7~13\)) # (!exited_car(7) & (\Add7~13\ & VCC)))) # (!entered_car(7) & ((exited_car(7) & ((\Add7~13\) # (GND))) # (!exited_car(7) & (!\Add7~13\))))
-- \Add7~15\ = CARRY((entered_car(7) & (exited_car(7) & !\Add7~13\)) # (!entered_car(7) & ((exited_car(7)) # (!\Add7~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(7),
	datab => exited_car(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X64_Y37_N16
\Add7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = ((exited_car(8) $ (entered_car(8) $ (\Add7~15\)))) # (GND)
-- \Add7~17\ = CARRY((exited_car(8) & (entered_car(8) & !\Add7~15\)) # (!exited_car(8) & ((entered_car(8)) # (!\Add7~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(8),
	datab => entered_car(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X64_Y37_N18
\Add7~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (entered_car(9) & ((exited_car(9) & (!\Add7~17\)) # (!exited_car(9) & (\Add7~17\ & VCC)))) # (!entered_car(9) & ((exited_car(9) & ((\Add7~17\) # (GND))) # (!exited_car(9) & (!\Add7~17\))))
-- \Add7~19\ = CARRY((entered_car(9) & (exited_car(9) & !\Add7~17\)) # (!entered_car(9) & ((exited_car(9)) # (!\Add7~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(9),
	datab => exited_car(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X64_Y37_N20
\Add7~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = ((exited_car(10) $ (entered_car(10) $ (\Add7~19\)))) # (GND)
-- \Add7~21\ = CARRY((exited_car(10) & (entered_car(10) & !\Add7~19\)) # (!exited_car(10) & ((entered_car(10)) # (!\Add7~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(10),
	datab => entered_car(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X64_Y37_N22
\Add7~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (entered_car(11) & ((exited_car(11) & (!\Add7~21\)) # (!exited_car(11) & (\Add7~21\ & VCC)))) # (!entered_car(11) & ((exited_car(11) & ((\Add7~21\) # (GND))) # (!exited_car(11) & (!\Add7~21\))))
-- \Add7~23\ = CARRY((entered_car(11) & (exited_car(11) & !\Add7~21\)) # (!entered_car(11) & ((exited_car(11)) # (!\Add7~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(11),
	datab => exited_car(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X64_Y37_N24
\Add7~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = ((exited_car(12) $ (entered_car(12) $ (\Add7~23\)))) # (GND)
-- \Add7~25\ = CARRY((exited_car(12) & (entered_car(12) & !\Add7~23\)) # (!exited_car(12) & ((entered_car(12)) # (!\Add7~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(12),
	datab => entered_car(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X64_Y37_N26
\Add7~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (exited_car(13) & ((entered_car(13) & (!\Add7~25\)) # (!entered_car(13) & ((\Add7~25\) # (GND))))) # (!exited_car(13) & ((entered_car(13) & (\Add7~25\ & VCC)) # (!entered_car(13) & (!\Add7~25\))))
-- \Add7~27\ = CARRY((exited_car(13) & ((!\Add7~25\) # (!entered_car(13)))) # (!exited_car(13) & (!entered_car(13) & !\Add7~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(13),
	datab => entered_car(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X64_Y37_N28
\Add7~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = ((exited_car(14) $ (entered_car(14) $ (\Add7~27\)))) # (GND)
-- \Add7~29\ = CARRY((exited_car(14) & (entered_car(14) & !\Add7~27\)) # (!exited_car(14) & ((entered_car(14)) # (!\Add7~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(14),
	datab => entered_car(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X64_Y37_N30
\Add7~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (exited_car(15) & ((entered_car(15) & (!\Add7~29\)) # (!entered_car(15) & ((\Add7~29\) # (GND))))) # (!exited_car(15) & ((entered_car(15) & (\Add7~29\ & VCC)) # (!entered_car(15) & (!\Add7~29\))))
-- \Add7~31\ = CARRY((exited_car(15) & ((!\Add7~29\) # (!entered_car(15)))) # (!exited_car(15) & (!entered_car(15) & !\Add7~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(15),
	datab => entered_car(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X64_Y36_N0
\Add7~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = ((entered_car(16) $ (exited_car(16) $ (\Add7~31\)))) # (GND)
-- \Add7~33\ = CARRY((entered_car(16) & ((!\Add7~31\) # (!exited_car(16)))) # (!entered_car(16) & (!exited_car(16) & !\Add7~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(16),
	datab => exited_car(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X64_Y36_N2
\Add7~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (exited_car(17) & ((entered_car(17) & (!\Add7~33\)) # (!entered_car(17) & ((\Add7~33\) # (GND))))) # (!exited_car(17) & ((entered_car(17) & (\Add7~33\ & VCC)) # (!entered_car(17) & (!\Add7~33\))))
-- \Add7~35\ = CARRY((exited_car(17) & ((!\Add7~33\) # (!entered_car(17)))) # (!exited_car(17) & (!entered_car(17) & !\Add7~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(17),
	datab => entered_car(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X64_Y36_N4
\Add7~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = ((entered_car(18) $ (exited_car(18) $ (\Add7~35\)))) # (GND)
-- \Add7~37\ = CARRY((entered_car(18) & ((!\Add7~35\) # (!exited_car(18)))) # (!entered_car(18) & (!exited_car(18) & !\Add7~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(18),
	datab => exited_car(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X64_Y36_N6
\Add7~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (exited_car(19) & ((entered_car(19) & (!\Add7~37\)) # (!entered_car(19) & ((\Add7~37\) # (GND))))) # (!exited_car(19) & ((entered_car(19) & (\Add7~37\ & VCC)) # (!entered_car(19) & (!\Add7~37\))))
-- \Add7~39\ = CARRY((exited_car(19) & ((!\Add7~37\) # (!entered_car(19)))) # (!exited_car(19) & (!entered_car(19) & !\Add7~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(19),
	datab => entered_car(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X64_Y36_N8
\Add7~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = ((entered_car(20) $ (exited_car(20) $ (\Add7~39\)))) # (GND)
-- \Add7~41\ = CARRY((entered_car(20) & ((!\Add7~39\) # (!exited_car(20)))) # (!entered_car(20) & (!exited_car(20) & !\Add7~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(20),
	datab => exited_car(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X64_Y36_N10
\Add7~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (entered_car(21) & ((exited_car(21) & (!\Add7~41\)) # (!exited_car(21) & (\Add7~41\ & VCC)))) # (!entered_car(21) & ((exited_car(21) & ((\Add7~41\) # (GND))) # (!exited_car(21) & (!\Add7~41\))))
-- \Add7~43\ = CARRY((entered_car(21) & (exited_car(21) & !\Add7~41\)) # (!entered_car(21) & ((exited_car(21)) # (!\Add7~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(21),
	datab => exited_car(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X64_Y36_N12
\Add7~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = ((entered_car(22) $ (exited_car(22) $ (\Add7~43\)))) # (GND)
-- \Add7~45\ = CARRY((entered_car(22) & ((!\Add7~43\) # (!exited_car(22)))) # (!entered_car(22) & (!exited_car(22) & !\Add7~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(22),
	datab => exited_car(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X64_Y36_N14
\Add7~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (entered_car(23) & ((exited_car(23) & (!\Add7~45\)) # (!exited_car(23) & (\Add7~45\ & VCC)))) # (!entered_car(23) & ((exited_car(23) & ((\Add7~45\) # (GND))) # (!exited_car(23) & (!\Add7~45\))))
-- \Add7~47\ = CARRY((entered_car(23) & (exited_car(23) & !\Add7~45\)) # (!entered_car(23) & ((exited_car(23)) # (!\Add7~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(23),
	datab => exited_car(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X64_Y36_N16
\Add7~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = ((exited_car(24) $ (entered_car(24) $ (\Add7~47\)))) # (GND)
-- \Add7~49\ = CARRY((exited_car(24) & (entered_car(24) & !\Add7~47\)) # (!exited_car(24) & ((entered_car(24)) # (!\Add7~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(24),
	datab => entered_car(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X64_Y36_N18
\Add7~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (entered_car(25) & ((exited_car(25) & (!\Add7~49\)) # (!exited_car(25) & (\Add7~49\ & VCC)))) # (!entered_car(25) & ((exited_car(25) & ((\Add7~49\) # (GND))) # (!exited_car(25) & (!\Add7~49\))))
-- \Add7~51\ = CARRY((entered_car(25) & (exited_car(25) & !\Add7~49\)) # (!entered_car(25) & ((exited_car(25)) # (!\Add7~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(25),
	datab => exited_car(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X64_Y36_N20
\Add7~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = ((exited_car(26) $ (entered_car(26) $ (\Add7~51\)))) # (GND)
-- \Add7~53\ = CARRY((exited_car(26) & (entered_car(26) & !\Add7~51\)) # (!exited_car(26) & ((entered_car(26)) # (!\Add7~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(26),
	datab => entered_car(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X64_Y36_N22
\Add7~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (entered_car(27) & ((exited_car(27) & (!\Add7~53\)) # (!exited_car(27) & (\Add7~53\ & VCC)))) # (!entered_car(27) & ((exited_car(27) & ((\Add7~53\) # (GND))) # (!exited_car(27) & (!\Add7~53\))))
-- \Add7~55\ = CARRY((entered_car(27) & (exited_car(27) & !\Add7~53\)) # (!entered_car(27) & ((exited_car(27)) # (!\Add7~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(27),
	datab => exited_car(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X64_Y36_N24
\Add7~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = ((entered_car(28) $ (exited_car(28) $ (\Add7~55\)))) # (GND)
-- \Add7~57\ = CARRY((entered_car(28) & ((!\Add7~55\) # (!exited_car(28)))) # (!entered_car(28) & (!exited_car(28) & !\Add7~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(28),
	datab => exited_car(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X64_Y36_N26
\Add7~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (entered_car(29) & ((exited_car(29) & (!\Add7~57\)) # (!exited_car(29) & (\Add7~57\ & VCC)))) # (!entered_car(29) & ((exited_car(29) & ((\Add7~57\) # (GND))) # (!exited_car(29) & (!\Add7~57\))))
-- \Add7~59\ = CARRY((entered_car(29) & (exited_car(29) & !\Add7~57\)) # (!entered_car(29) & ((exited_car(29)) # (!\Add7~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(29),
	datab => exited_car(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: LCCOMB_X61_Y37_N0
\Add9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~1_cout\ = CARRY(!\Add7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~0_combout\,
	datad => VCC,
	cout => \Add9~1_cout\);

-- Location: LCCOMB_X61_Y37_N2
\Add9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Add7~2_combout\ & ((max_vacated_space(1) & (!\Add9~1_cout\)) # (!max_vacated_space(1) & ((\Add9~1_cout\) # (GND))))) # (!\Add7~2_combout\ & ((max_vacated_space(1) & (\Add9~1_cout\ & VCC)) # (!max_vacated_space(1) & (!\Add9~1_cout\))))
-- \Add9~3\ = CARRY((\Add7~2_combout\ & ((!\Add9~1_cout\) # (!max_vacated_space(1)))) # (!\Add7~2_combout\ & (!max_vacated_space(1) & !\Add9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => max_vacated_space(1),
	datad => VCC,
	cin => \Add9~1_cout\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X61_Y37_N4
\Add9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((\Add7~4_combout\ $ (max_vacated_space(2) $ (\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((\Add7~4_combout\ & (max_vacated_space(2) & !\Add9~3\)) # (!\Add7~4_combout\ & ((max_vacated_space(2)) # (!\Add9~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => max_vacated_space(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X61_Y37_N6
\Add9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add7~6_combout\ & ((max_vacated_space(3) & (!\Add9~5\)) # (!max_vacated_space(3) & ((\Add9~5\) # (GND))))) # (!\Add7~6_combout\ & ((max_vacated_space(3) & (\Add9~5\ & VCC)) # (!max_vacated_space(3) & (!\Add9~5\))))
-- \Add9~7\ = CARRY((\Add7~6_combout\ & ((!\Add9~5\) # (!max_vacated_space(3)))) # (!\Add7~6_combout\ & (!max_vacated_space(3) & !\Add9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => max_vacated_space(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X61_Y37_N8
\Add9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\Add7~8_combout\ $ (max_vacated_space(4) $ (\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\Add7~8_combout\ & (max_vacated_space(4) & !\Add9~7\)) # (!\Add7~8_combout\ & ((max_vacated_space(4)) # (!\Add9~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => max_vacated_space(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X61_Y37_N10
\Add9~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (max_vacated_space(5) & ((\Add7~10_combout\ & (!\Add9~9\)) # (!\Add7~10_combout\ & (\Add9~9\ & VCC)))) # (!max_vacated_space(5) & ((\Add7~10_combout\ & ((\Add9~9\) # (GND))) # (!\Add7~10_combout\ & (!\Add9~9\))))
-- \Add9~11\ = CARRY((max_vacated_space(5) & (\Add7~10_combout\ & !\Add9~9\)) # (!max_vacated_space(5) & ((\Add7~10_combout\) # (!\Add9~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(5),
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X61_Y37_N12
\Add9~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((\Add7~12_combout\ $ (max_vacated_space(6) $ (\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((\Add7~12_combout\ & (max_vacated_space(6) & !\Add9~11\)) # (!\Add7~12_combout\ & ((max_vacated_space(6)) # (!\Add9~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => max_vacated_space(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X61_Y37_N14
\Add9~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (max_vacated_space(7) & ((\Add7~14_combout\ & (!\Add9~13\)) # (!\Add7~14_combout\ & (\Add9~13\ & VCC)))) # (!max_vacated_space(7) & ((\Add7~14_combout\ & ((\Add9~13\) # (GND))) # (!\Add7~14_combout\ & (!\Add9~13\))))
-- \Add9~15\ = CARRY((max_vacated_space(7) & (\Add7~14_combout\ & !\Add9~13\)) # (!max_vacated_space(7) & ((\Add7~14_combout\) # (!\Add9~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(7),
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X61_Y37_N16
\Add9~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = ((\Add7~16_combout\ $ (max_vacated_space(8) $ (\Add9~15\)))) # (GND)
-- \Add9~17\ = CARRY((\Add7~16_combout\ & (max_vacated_space(8) & !\Add9~15\)) # (!\Add7~16_combout\ & ((max_vacated_space(8)) # (!\Add9~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datab => max_vacated_space(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X61_Y37_N18
\Add9~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (max_vacated_space(9) & ((\Add7~18_combout\ & (!\Add9~17\)) # (!\Add7~18_combout\ & (\Add9~17\ & VCC)))) # (!max_vacated_space(9) & ((\Add7~18_combout\ & ((\Add9~17\) # (GND))) # (!\Add7~18_combout\ & (!\Add9~17\))))
-- \Add9~19\ = CARRY((max_vacated_space(9) & (\Add7~18_combout\ & !\Add9~17\)) # (!max_vacated_space(9) & ((\Add7~18_combout\) # (!\Add9~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(9),
	datab => \Add7~18_combout\,
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X61_Y37_N20
\Add9~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = ((max_vacated_space(10) $ (\Add7~20_combout\ $ (\Add9~19\)))) # (GND)
-- \Add9~21\ = CARRY((max_vacated_space(10) & ((!\Add9~19\) # (!\Add7~20_combout\))) # (!max_vacated_space(10) & (!\Add7~20_combout\ & !\Add9~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(10),
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X61_Y37_N22
\Add9~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (\Add7~22_combout\ & ((max_vacated_space(11) & (!\Add9~21\)) # (!max_vacated_space(11) & ((\Add9~21\) # (GND))))) # (!\Add7~22_combout\ & ((max_vacated_space(11) & (\Add9~21\ & VCC)) # (!max_vacated_space(11) & (!\Add9~21\))))
-- \Add9~23\ = CARRY((\Add7~22_combout\ & ((!\Add9~21\) # (!max_vacated_space(11)))) # (!\Add7~22_combout\ & (!max_vacated_space(11) & !\Add9~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~22_combout\,
	datab => max_vacated_space(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X61_Y37_N24
\Add9~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = ((max_vacated_space(12) $ (\Add7~24_combout\ $ (\Add9~23\)))) # (GND)
-- \Add9~25\ = CARRY((max_vacated_space(12) & ((!\Add9~23\) # (!\Add7~24_combout\))) # (!max_vacated_space(12) & (!\Add7~24_combout\ & !\Add9~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(12),
	datab => \Add7~24_combout\,
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X61_Y37_N26
\Add9~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (max_vacated_space(13) & ((\Add7~26_combout\ & (!\Add9~25\)) # (!\Add7~26_combout\ & (\Add9~25\ & VCC)))) # (!max_vacated_space(13) & ((\Add7~26_combout\ & ((\Add9~25\) # (GND))) # (!\Add7~26_combout\ & (!\Add9~25\))))
-- \Add9~27\ = CARRY((max_vacated_space(13) & (\Add7~26_combout\ & !\Add9~25\)) # (!max_vacated_space(13) & ((\Add7~26_combout\) # (!\Add9~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(13),
	datab => \Add7~26_combout\,
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X61_Y37_N28
\Add9~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = ((\Add7~28_combout\ $ (max_vacated_space(14) $ (\Add9~27\)))) # (GND)
-- \Add9~29\ = CARRY((\Add7~28_combout\ & (max_vacated_space(14) & !\Add9~27\)) # (!\Add7~28_combout\ & ((max_vacated_space(14)) # (!\Add9~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~28_combout\,
	datab => max_vacated_space(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X61_Y37_N30
\Add9~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (\Add7~30_combout\ & ((max_vacated_space(15) & (!\Add9~29\)) # (!max_vacated_space(15) & ((\Add9~29\) # (GND))))) # (!\Add7~30_combout\ & ((max_vacated_space(15) & (\Add9~29\ & VCC)) # (!max_vacated_space(15) & (!\Add9~29\))))
-- \Add9~31\ = CARRY((\Add7~30_combout\ & ((!\Add9~29\) # (!max_vacated_space(15)))) # (!\Add7~30_combout\ & (!max_vacated_space(15) & !\Add9~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~30_combout\,
	datab => max_vacated_space(15),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X61_Y36_N0
\Add9~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = ((\Add7~32_combout\ $ (max_vacated_space(16) $ (\Add9~31\)))) # (GND)
-- \Add9~33\ = CARRY((\Add7~32_combout\ & (max_vacated_space(16) & !\Add9~31\)) # (!\Add7~32_combout\ & ((max_vacated_space(16)) # (!\Add9~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~32_combout\,
	datab => max_vacated_space(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X61_Y36_N2
\Add9~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (max_vacated_space(17) & ((\Add7~34_combout\ & (!\Add9~33\)) # (!\Add7~34_combout\ & (\Add9~33\ & VCC)))) # (!max_vacated_space(17) & ((\Add7~34_combout\ & ((\Add9~33\) # (GND))) # (!\Add7~34_combout\ & (!\Add9~33\))))
-- \Add9~35\ = CARRY((max_vacated_space(17) & (\Add7~34_combout\ & !\Add9~33\)) # (!max_vacated_space(17) & ((\Add7~34_combout\) # (!\Add9~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(17),
	datab => \Add7~34_combout\,
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X61_Y36_N4
\Add9~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = ((max_vacated_space(18) $ (\Add7~36_combout\ $ (\Add9~35\)))) # (GND)
-- \Add9~37\ = CARRY((max_vacated_space(18) & ((!\Add9~35\) # (!\Add7~36_combout\))) # (!max_vacated_space(18) & (!\Add7~36_combout\ & !\Add9~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(18),
	datab => \Add7~36_combout\,
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X61_Y36_N6
\Add9~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (max_vacated_space(19) & ((\Add7~38_combout\ & (!\Add9~37\)) # (!\Add7~38_combout\ & (\Add9~37\ & VCC)))) # (!max_vacated_space(19) & ((\Add7~38_combout\ & ((\Add9~37\) # (GND))) # (!\Add7~38_combout\ & (!\Add9~37\))))
-- \Add9~39\ = CARRY((max_vacated_space(19) & (\Add7~38_combout\ & !\Add9~37\)) # (!max_vacated_space(19) & ((\Add7~38_combout\) # (!\Add9~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(19),
	datab => \Add7~38_combout\,
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X61_Y36_N8
\Add9~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = ((max_vacated_space(20) $ (\Add7~40_combout\ $ (\Add9~39\)))) # (GND)
-- \Add9~41\ = CARRY((max_vacated_space(20) & ((!\Add9~39\) # (!\Add7~40_combout\))) # (!max_vacated_space(20) & (!\Add7~40_combout\ & !\Add9~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(20),
	datab => \Add7~40_combout\,
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X61_Y36_N10
\Add9~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (\Add7~42_combout\ & ((max_vacated_space(21) & (!\Add9~41\)) # (!max_vacated_space(21) & ((\Add9~41\) # (GND))))) # (!\Add7~42_combout\ & ((max_vacated_space(21) & (\Add9~41\ & VCC)) # (!max_vacated_space(21) & (!\Add9~41\))))
-- \Add9~43\ = CARRY((\Add7~42_combout\ & ((!\Add9~41\) # (!max_vacated_space(21)))) # (!\Add7~42_combout\ & (!max_vacated_space(21) & !\Add9~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datab => max_vacated_space(21),
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X61_Y36_N12
\Add9~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = ((\Add7~44_combout\ $ (max_vacated_space(22) $ (\Add9~43\)))) # (GND)
-- \Add9~45\ = CARRY((\Add7~44_combout\ & (max_vacated_space(22) & !\Add9~43\)) # (!\Add7~44_combout\ & ((max_vacated_space(22)) # (!\Add9~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~44_combout\,
	datab => max_vacated_space(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X61_Y36_N14
\Add9~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (\Add7~46_combout\ & ((max_vacated_space(23) & (!\Add9~45\)) # (!max_vacated_space(23) & ((\Add9~45\) # (GND))))) # (!\Add7~46_combout\ & ((max_vacated_space(23) & (\Add9~45\ & VCC)) # (!max_vacated_space(23) & (!\Add9~45\))))
-- \Add9~47\ = CARRY((\Add7~46_combout\ & ((!\Add9~45\) # (!max_vacated_space(23)))) # (!\Add7~46_combout\ & (!max_vacated_space(23) & !\Add9~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~46_combout\,
	datab => max_vacated_space(23),
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X61_Y36_N16
\Add9~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = ((max_vacated_space(24) $ (\Add7~48_combout\ $ (\Add9~47\)))) # (GND)
-- \Add9~49\ = CARRY((max_vacated_space(24) & ((!\Add9~47\) # (!\Add7~48_combout\))) # (!max_vacated_space(24) & (!\Add7~48_combout\ & !\Add9~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(24),
	datab => \Add7~48_combout\,
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X61_Y36_N18
\Add9~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (\Add7~50_combout\ & ((max_vacated_space(25) & (!\Add9~49\)) # (!max_vacated_space(25) & ((\Add9~49\) # (GND))))) # (!\Add7~50_combout\ & ((max_vacated_space(25) & (\Add9~49\ & VCC)) # (!max_vacated_space(25) & (!\Add9~49\))))
-- \Add9~51\ = CARRY((\Add7~50_combout\ & ((!\Add9~49\) # (!max_vacated_space(25)))) # (!\Add7~50_combout\ & (!max_vacated_space(25) & !\Add9~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~50_combout\,
	datab => max_vacated_space(25),
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X61_Y36_N20
\Add9~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = ((max_vacated_space(26) $ (\Add7~52_combout\ $ (\Add9~51\)))) # (GND)
-- \Add9~53\ = CARRY((max_vacated_space(26) & ((!\Add9~51\) # (!\Add7~52_combout\))) # (!max_vacated_space(26) & (!\Add7~52_combout\ & !\Add9~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(26),
	datab => \Add7~52_combout\,
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X61_Y36_N22
\Add9~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (\Add7~54_combout\ & ((max_vacated_space(27) & (!\Add9~53\)) # (!max_vacated_space(27) & ((\Add9~53\) # (GND))))) # (!\Add7~54_combout\ & ((max_vacated_space(27) & (\Add9~53\ & VCC)) # (!max_vacated_space(27) & (!\Add9~53\))))
-- \Add9~55\ = CARRY((\Add7~54_combout\ & ((!\Add9~53\) # (!max_vacated_space(27)))) # (!\Add7~54_combout\ & (!max_vacated_space(27) & !\Add9~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~54_combout\,
	datab => max_vacated_space(27),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X61_Y36_N24
\Add9~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = ((max_vacated_space(28) $ (\Add7~56_combout\ $ (\Add9~55\)))) # (GND)
-- \Add9~57\ = CARRY((max_vacated_space(28) & ((!\Add9~55\) # (!\Add7~56_combout\))) # (!max_vacated_space(28) & (!\Add7~56_combout\ & !\Add9~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(28),
	datab => \Add7~56_combout\,
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X61_Y36_N26
\Add9~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (\Add7~58_combout\ & ((max_vacated_space(29) & (!\Add9~57\)) # (!max_vacated_space(29) & ((\Add9~57\) # (GND))))) # (!\Add7~58_combout\ & ((max_vacated_space(29) & (\Add9~57\ & VCC)) # (!max_vacated_space(29) & (!\Add9~57\))))
-- \Add9~59\ = CARRY((\Add7~58_combout\ & ((!\Add9~57\) # (!max_vacated_space(29)))) # (!\Add7~58_combout\ & (!max_vacated_space(29) & !\Add9~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~58_combout\,
	datab => max_vacated_space(29),
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: LCCOMB_X61_Y36_N28
\Add9~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = ((max_vacated_space(30) $ (\Add7~60_combout\ $ (\Add9~59\)))) # (GND)
-- \Add9~61\ = CARRY((max_vacated_space(30) & ((!\Add9~59\) # (!\Add7~60_combout\))) # (!max_vacated_space(30) & (!\Add7~60_combout\ & !\Add9~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max_vacated_space(30),
	datab => \Add7~60_combout\,
	datad => VCC,
	cin => \Add9~59\,
	combout => \Add9~60_combout\,
	cout => \Add9~61\);

-- Location: LCCOMB_X61_Y36_N30
\Add9~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = max_vacated_space(31) $ (\Add9~61\ $ (!\Add7~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => max_vacated_space(31),
	datad => \Add7~62_combout\,
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: LCCOMB_X65_Y37_N0
\Add4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Add7~0_combout\ & (!\Add6~0_combout\ & VCC)) # (!\Add7~0_combout\ & (\Add6~0_combout\ $ (GND)))
-- \Add4~1\ = CARRY((!\Add7~0_combout\ & !\Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add6~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X65_Y37_N2
\Add4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add6~2_combout\ & ((\Add7~2_combout\ & ((\Add4~1\) # (GND))) # (!\Add7~2_combout\ & (!\Add4~1\)))) # (!\Add6~2_combout\ & ((\Add7~2_combout\ & (!\Add4~1\)) # (!\Add7~2_combout\ & (\Add4~1\ & VCC))))
-- \Add4~3\ = CARRY((\Add6~2_combout\ & ((\Add7~2_combout\) # (!\Add4~1\))) # (!\Add6~2_combout\ & (\Add7~2_combout\ & !\Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \Add7~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X65_Y37_N4
\Add4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add7~4_combout\ $ (\Add6~4_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add7~4_combout\ & (!\Add6~4_combout\ & !\Add4~3\)) # (!\Add7~4_combout\ & ((!\Add4~3\) # (!\Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X65_Y37_N6
\Add4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add7~6_combout\ & ((\Add6~6_combout\ & ((\Add4~5\) # (GND))) # (!\Add6~6_combout\ & (!\Add4~5\)))) # (!\Add7~6_combout\ & ((\Add6~6_combout\ & (!\Add4~5\)) # (!\Add6~6_combout\ & (\Add4~5\ & VCC))))
-- \Add4~7\ = CARRY((\Add7~6_combout\ & ((\Add6~6_combout\) # (!\Add4~5\))) # (!\Add7~6_combout\ & (\Add6~6_combout\ & !\Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X65_Y37_N8
\Add4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add6~8_combout\ $ (\Add7~8_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add6~8_combout\ & (!\Add7~8_combout\ & !\Add4~7\)) # (!\Add6~8_combout\ & ((!\Add4~7\) # (!\Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \Add7~8_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X65_Y37_N10
\Add4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add6~10_combout\ & ((\Add7~10_combout\ & ((\Add4~9\) # (GND))) # (!\Add7~10_combout\ & (!\Add4~9\)))) # (!\Add6~10_combout\ & ((\Add7~10_combout\ & (!\Add4~9\)) # (!\Add7~10_combout\ & (\Add4~9\ & VCC))))
-- \Add4~11\ = CARRY((\Add6~10_combout\ & ((\Add7~10_combout\) # (!\Add4~9\))) # (!\Add6~10_combout\ & (\Add7~10_combout\ & !\Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X65_Y37_N12
\Add4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((\Add6~12_combout\ $ (\Add7~12_combout\ $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((\Add6~12_combout\ & (!\Add7~12_combout\ & !\Add4~11\)) # (!\Add6~12_combout\ & ((!\Add4~11\) # (!\Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X65_Y37_N14
\Add4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Add6~14_combout\ & ((\Add7~14_combout\ & ((\Add4~13\) # (GND))) # (!\Add7~14_combout\ & (!\Add4~13\)))) # (!\Add6~14_combout\ & ((\Add7~14_combout\ & (!\Add4~13\)) # (!\Add7~14_combout\ & (\Add4~13\ & VCC))))
-- \Add4~15\ = CARRY((\Add6~14_combout\ & ((\Add7~14_combout\) # (!\Add4~13\))) # (!\Add6~14_combout\ & (\Add7~14_combout\ & !\Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X65_Y37_N16
\Add4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((\Add7~16_combout\ $ (\Add6~16_combout\ $ (!\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((\Add7~16_combout\ & (!\Add6~16_combout\ & !\Add4~15\)) # (!\Add7~16_combout\ & ((!\Add4~15\) # (!\Add6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datab => \Add6~16_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X65_Y37_N18
\Add4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\Add7~18_combout\ & ((\Add6~18_combout\ & ((\Add4~17\) # (GND))) # (!\Add6~18_combout\ & (!\Add4~17\)))) # (!\Add7~18_combout\ & ((\Add6~18_combout\ & (!\Add4~17\)) # (!\Add6~18_combout\ & (\Add4~17\ & VCC))))
-- \Add4~19\ = CARRY((\Add7~18_combout\ & ((\Add6~18_combout\) # (!\Add4~17\))) # (!\Add7~18_combout\ & (\Add6~18_combout\ & !\Add4~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \Add6~18_combout\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X65_Y37_N20
\Add4~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = ((\Add7~20_combout\ $ (\Add6~20_combout\ $ (!\Add4~19\)))) # (GND)
-- \Add4~21\ = CARRY((\Add7~20_combout\ & (!\Add6~20_combout\ & !\Add4~19\)) # (!\Add7~20_combout\ & ((!\Add4~19\) # (!\Add6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add6~20_combout\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X65_Y37_N22
\Add4~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Add7~22_combout\ & ((\Add6~22_combout\ & ((\Add4~21\) # (GND))) # (!\Add6~22_combout\ & (!\Add4~21\)))) # (!\Add7~22_combout\ & ((\Add6~22_combout\ & (!\Add4~21\)) # (!\Add6~22_combout\ & (\Add4~21\ & VCC))))
-- \Add4~23\ = CARRY((\Add7~22_combout\ & ((\Add6~22_combout\) # (!\Add4~21\))) # (!\Add7~22_combout\ & (\Add6~22_combout\ & !\Add4~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~22_combout\,
	datab => \Add6~22_combout\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X65_Y37_N24
\Add4~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = ((\Add6~24_combout\ $ (\Add7~24_combout\ $ (!\Add4~23\)))) # (GND)
-- \Add4~25\ = CARRY((\Add6~24_combout\ & (!\Add7~24_combout\ & !\Add4~23\)) # (!\Add6~24_combout\ & ((!\Add4~23\) # (!\Add7~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~24_combout\,
	datab => \Add7~24_combout\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X65_Y37_N26
\Add4~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\Add7~26_combout\ & ((\Add6~26_combout\ & ((\Add4~25\) # (GND))) # (!\Add6~26_combout\ & (!\Add4~25\)))) # (!\Add7~26_combout\ & ((\Add6~26_combout\ & (!\Add4~25\)) # (!\Add6~26_combout\ & (\Add4~25\ & VCC))))
-- \Add4~27\ = CARRY((\Add7~26_combout\ & ((\Add6~26_combout\) # (!\Add4~25\))) # (!\Add7~26_combout\ & (\Add6~26_combout\ & !\Add4~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~26_combout\,
	datab => \Add6~26_combout\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X65_Y37_N28
\Add4~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = ((\Add7~28_combout\ $ (\Add6~28_combout\ $ (!\Add4~27\)))) # (GND)
-- \Add4~29\ = CARRY((\Add7~28_combout\ & (!\Add6~28_combout\ & !\Add4~27\)) # (!\Add7~28_combout\ & ((!\Add4~27\) # (!\Add6~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~28_combout\,
	datab => \Add6~28_combout\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X65_Y37_N30
\Add4~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\Add7~30_combout\ & ((\Add6~30_combout\ & ((\Add4~29\) # (GND))) # (!\Add6~30_combout\ & (!\Add4~29\)))) # (!\Add7~30_combout\ & ((\Add6~30_combout\ & (!\Add4~29\)) # (!\Add6~30_combout\ & (\Add4~29\ & VCC))))
-- \Add4~31\ = CARRY((\Add7~30_combout\ & ((\Add6~30_combout\) # (!\Add4~29\))) # (!\Add7~30_combout\ & (\Add6~30_combout\ & !\Add4~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~30_combout\,
	datab => \Add6~30_combout\,
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X65_Y36_N0
\Add4~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = ((\Add7~32_combout\ $ (\Add6~32_combout\ $ (!\Add4~31\)))) # (GND)
-- \Add4~33\ = CARRY((\Add7~32_combout\ & (!\Add6~32_combout\ & !\Add4~31\)) # (!\Add7~32_combout\ & ((!\Add4~31\) # (!\Add6~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~32_combout\,
	datab => \Add6~32_combout\,
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X65_Y36_N2
\Add4~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (\Add6~34_combout\ & ((\Add7~34_combout\ & ((\Add4~33\) # (GND))) # (!\Add7~34_combout\ & (!\Add4~33\)))) # (!\Add6~34_combout\ & ((\Add7~34_combout\ & (!\Add4~33\)) # (!\Add7~34_combout\ & (\Add4~33\ & VCC))))
-- \Add4~35\ = CARRY((\Add6~34_combout\ & ((\Add7~34_combout\) # (!\Add4~33\))) # (!\Add6~34_combout\ & (\Add7~34_combout\ & !\Add4~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~34_combout\,
	datab => \Add7~34_combout\,
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X65_Y36_N4
\Add4~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = ((\Add7~36_combout\ $ (\Add6~36_combout\ $ (!\Add4~35\)))) # (GND)
-- \Add4~37\ = CARRY((\Add7~36_combout\ & (!\Add6~36_combout\ & !\Add4~35\)) # (!\Add7~36_combout\ & ((!\Add4~35\) # (!\Add6~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~36_combout\,
	datab => \Add6~36_combout\,
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X65_Y36_N6
\Add4~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (\Add6~38_combout\ & ((\Add7~38_combout\ & ((\Add4~37\) # (GND))) # (!\Add7~38_combout\ & (!\Add4~37\)))) # (!\Add6~38_combout\ & ((\Add7~38_combout\ & (!\Add4~37\)) # (!\Add7~38_combout\ & (\Add4~37\ & VCC))))
-- \Add4~39\ = CARRY((\Add6~38_combout\ & ((\Add7~38_combout\) # (!\Add4~37\))) # (!\Add6~38_combout\ & (\Add7~38_combout\ & !\Add4~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~38_combout\,
	datab => \Add7~38_combout\,
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X65_Y36_N8
\Add4~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = ((\Add7~40_combout\ $ (\Add6~40_combout\ $ (!\Add4~39\)))) # (GND)
-- \Add4~41\ = CARRY((\Add7~40_combout\ & (!\Add6~40_combout\ & !\Add4~39\)) # (!\Add7~40_combout\ & ((!\Add4~39\) # (!\Add6~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~40_combout\,
	datab => \Add6~40_combout\,
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X65_Y36_N10
\Add4~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (\Add6~42_combout\ & ((\Add7~42_combout\ & ((\Add4~41\) # (GND))) # (!\Add7~42_combout\ & (!\Add4~41\)))) # (!\Add6~42_combout\ & ((\Add7~42_combout\ & (!\Add4~41\)) # (!\Add7~42_combout\ & (\Add4~41\ & VCC))))
-- \Add4~43\ = CARRY((\Add6~42_combout\ & ((\Add7~42_combout\) # (!\Add4~41\))) # (!\Add6~42_combout\ & (\Add7~42_combout\ & !\Add4~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~42_combout\,
	datab => \Add7~42_combout\,
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X65_Y36_N12
\Add4~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = ((\Add6~44_combout\ $ (\Add7~44_combout\ $ (!\Add4~43\)))) # (GND)
-- \Add4~45\ = CARRY((\Add6~44_combout\ & (!\Add7~44_combout\ & !\Add4~43\)) # (!\Add6~44_combout\ & ((!\Add4~43\) # (!\Add7~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~44_combout\,
	datab => \Add7~44_combout\,
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X65_Y36_N14
\Add4~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (\Add6~46_combout\ & ((\Add7~46_combout\ & ((\Add4~45\) # (GND))) # (!\Add7~46_combout\ & (!\Add4~45\)))) # (!\Add6~46_combout\ & ((\Add7~46_combout\ & (!\Add4~45\)) # (!\Add7~46_combout\ & (\Add4~45\ & VCC))))
-- \Add4~47\ = CARRY((\Add6~46_combout\ & ((\Add7~46_combout\) # (!\Add4~45\))) # (!\Add6~46_combout\ & (\Add7~46_combout\ & !\Add4~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~46_combout\,
	datab => \Add7~46_combout\,
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X65_Y36_N16
\Add4~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = ((\Add7~48_combout\ $ (\Add6~48_combout\ $ (!\Add4~47\)))) # (GND)
-- \Add4~49\ = CARRY((\Add7~48_combout\ & (!\Add6~48_combout\ & !\Add4~47\)) # (!\Add7~48_combout\ & ((!\Add4~47\) # (!\Add6~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~48_combout\,
	datab => \Add6~48_combout\,
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X65_Y36_N18
\Add4~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (\Add7~50_combout\ & ((\Add6~50_combout\ & ((\Add4~49\) # (GND))) # (!\Add6~50_combout\ & (!\Add4~49\)))) # (!\Add7~50_combout\ & ((\Add6~50_combout\ & (!\Add4~49\)) # (!\Add6~50_combout\ & (\Add4~49\ & VCC))))
-- \Add4~51\ = CARRY((\Add7~50_combout\ & ((\Add6~50_combout\) # (!\Add4~49\))) # (!\Add7~50_combout\ & (\Add6~50_combout\ & !\Add4~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~50_combout\,
	datab => \Add6~50_combout\,
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X65_Y36_N20
\Add4~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = ((\Add7~52_combout\ $ (\Add6~52_combout\ $ (!\Add4~51\)))) # (GND)
-- \Add4~53\ = CARRY((\Add7~52_combout\ & (!\Add6~52_combout\ & !\Add4~51\)) # (!\Add7~52_combout\ & ((!\Add4~51\) # (!\Add6~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~52_combout\,
	datab => \Add6~52_combout\,
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X65_Y36_N22
\Add4~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (\Add7~54_combout\ & ((\Add6~54_combout\ & ((\Add4~53\) # (GND))) # (!\Add6~54_combout\ & (!\Add4~53\)))) # (!\Add7~54_combout\ & ((\Add6~54_combout\ & (!\Add4~53\)) # (!\Add6~54_combout\ & (\Add4~53\ & VCC))))
-- \Add4~55\ = CARRY((\Add7~54_combout\ & ((\Add6~54_combout\) # (!\Add4~53\))) # (!\Add7~54_combout\ & (\Add6~54_combout\ & !\Add4~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~54_combout\,
	datab => \Add6~54_combout\,
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X65_Y36_N24
\Add4~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = ((\Add6~56_combout\ $ (\Add7~56_combout\ $ (!\Add4~55\)))) # (GND)
-- \Add4~57\ = CARRY((\Add6~56_combout\ & (!\Add7~56_combout\ & !\Add4~55\)) # (!\Add6~56_combout\ & ((!\Add4~55\) # (!\Add7~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~56_combout\,
	datab => \Add7~56_combout\,
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X65_Y36_N26
\Add4~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (\Add6~58_combout\ & ((\Add7~58_combout\ & ((\Add4~57\) # (GND))) # (!\Add7~58_combout\ & (!\Add4~57\)))) # (!\Add6~58_combout\ & ((\Add7~58_combout\ & (!\Add4~57\)) # (!\Add7~58_combout\ & (\Add4~57\ & VCC))))
-- \Add4~59\ = CARRY((\Add6~58_combout\ & ((\Add7~58_combout\) # (!\Add4~57\))) # (!\Add6~58_combout\ & (\Add7~58_combout\ & !\Add4~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~58_combout\,
	datab => \Add7~58_combout\,
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X65_Y36_N28
\Add4~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = ((\Add7~60_combout\ $ (\Add6~60_combout\ $ (!\Add4~59\)))) # (GND)
-- \Add4~61\ = CARRY((\Add7~60_combout\ & (!\Add6~60_combout\ & !\Add4~59\)) # (!\Add7~60_combout\ & ((!\Add4~59\) # (!\Add6~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~60_combout\,
	datab => \Add6~60_combout\,
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: LCCOMB_X66_Y37_N2
\Add5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \Add4~2_combout\ $ (VCC)
-- \Add5~1\ = CARRY(\Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X66_Y37_N4
\Add5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add4~4_combout\ & (\Add5~1\ & VCC)) # (!\Add4~4_combout\ & (!\Add5~1\))
-- \Add5~3\ = CARRY((!\Add4~4_combout\ & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X66_Y37_N6
\Add5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\Add4~6_combout\ & ((GND) # (!\Add5~3\))) # (!\Add4~6_combout\ & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((\Add4~6_combout\) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~6_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X66_Y37_N8
\Add5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add4~8_combout\ & (\Add5~5\ & VCC)) # (!\Add4~8_combout\ & (!\Add5~5\))
-- \Add5~7\ = CARRY((!\Add4~8_combout\ & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X66_Y37_N10
\Add5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\Add4~10_combout\ & ((GND) # (!\Add5~7\))) # (!\Add4~10_combout\ & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((\Add4~10_combout\) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X66_Y37_N12
\Add5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Add4~12_combout\ & (!\Add5~9\)) # (!\Add4~12_combout\ & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!\Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X66_Y37_N14
\Add5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\Add4~14_combout\ & ((GND) # (!\Add5~11\))) # (!\Add4~14_combout\ & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((\Add4~14_combout\) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X66_Y37_N16
\Add5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\Add4~16_combout\ & (!\Add5~13\)) # (!\Add4~16_combout\ & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!\Add4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X66_Y37_N18
\Add5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\Add4~18_combout\ & ((GND) # (!\Add5~15\))) # (!\Add4~18_combout\ & (\Add5~15\ $ (GND)))
-- \Add5~17\ = CARRY((\Add4~18_combout\) # (!\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~18_combout\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X66_Y37_N20
\Add5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\Add4~20_combout\ & (!\Add5~17\)) # (!\Add4~20_combout\ & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!\Add4~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~20_combout\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X66_Y37_N22
\Add5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\Add4~22_combout\ & (\Add5~19\ $ (GND))) # (!\Add4~22_combout\ & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((\Add4~22_combout\ & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~22_combout\,
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X66_Y37_N24
\Add5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\Add4~24_combout\ & (!\Add5~21\)) # (!\Add4~24_combout\ & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!\Add4~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~24_combout\,
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X66_Y37_N26
\Add5~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\Add4~26_combout\ & (\Add5~23\ $ (GND))) # (!\Add4~26_combout\ & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((\Add4~26_combout\ & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X66_Y37_N28
\Add5~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\Add4~28_combout\ & (!\Add5~25\)) # (!\Add4~28_combout\ & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!\Add4~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~28_combout\,
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X66_Y37_N30
\Add5~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (\Add4~30_combout\ & (\Add5~27\ $ (GND))) # (!\Add4~30_combout\ & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((\Add4~30_combout\ & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~30_combout\,
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X66_Y36_N0
\Add5~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\Add4~32_combout\ & (!\Add5~29\)) # (!\Add4~32_combout\ & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!\Add4~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X66_Y36_N2
\Add5~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (\Add4~34_combout\ & (\Add5~31\ $ (GND))) # (!\Add4~34_combout\ & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((\Add4~34_combout\ & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X66_Y36_N4
\Add5~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (\Add4~36_combout\ & (!\Add5~33\)) # (!\Add4~36_combout\ & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!\Add4~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~36_combout\,
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X66_Y36_N6
\Add5~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (\Add4~38_combout\ & (\Add5~35\ $ (GND))) # (!\Add4~38_combout\ & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((\Add4~38_combout\ & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~38_combout\,
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X66_Y36_N8
\Add5~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (\Add4~40_combout\ & (!\Add5~37\)) # (!\Add4~40_combout\ & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!\Add4~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~40_combout\,
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X66_Y36_N10
\Add5~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (\Add4~42_combout\ & (\Add5~39\ $ (GND))) # (!\Add4~42_combout\ & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((\Add4~42_combout\ & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~42_combout\,
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X66_Y36_N12
\Add5~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (\Add4~44_combout\ & (!\Add5~41\)) # (!\Add4~44_combout\ & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!\Add4~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~44_combout\,
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X66_Y36_N14
\Add5~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (\Add4~46_combout\ & (\Add5~43\ $ (GND))) # (!\Add4~46_combout\ & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((\Add4~46_combout\ & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~46_combout\,
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X66_Y36_N16
\Add5~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (\Add4~48_combout\ & (!\Add5~45\)) # (!\Add4~48_combout\ & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!\Add4~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~48_combout\,
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X66_Y36_N18
\Add5~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (\Add4~50_combout\ & (\Add5~47\ $ (GND))) # (!\Add4~50_combout\ & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((\Add4~50_combout\ & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~50_combout\,
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X66_Y36_N20
\Add5~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (\Add4~52_combout\ & (!\Add5~49\)) # (!\Add4~52_combout\ & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!\Add4~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~52_combout\,
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X66_Y36_N22
\Add5~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (\Add4~54_combout\ & (\Add5~51\ $ (GND))) # (!\Add4~54_combout\ & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((\Add4~54_combout\ & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~54_combout\,
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X66_Y36_N24
\Add5~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (\Add4~56_combout\ & (!\Add5~53\)) # (!\Add4~56_combout\ & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!\Add4~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~56_combout\,
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X66_Y36_N26
\Add5~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (\Add4~58_combout\ & (\Add5~55\ $ (GND))) # (!\Add4~58_combout\ & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((\Add4~58_combout\ & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~58_combout\,
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X66_Y36_N28
\Add5~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (\Add4~60_combout\ & (!\Add5~57\)) # (!\Add4~60_combout\ & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!\Add4~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~60_combout\,
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X62_Y37_N0
\LessThan3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!\Add7~0_combout\ & \Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add4~0_combout\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X62_Y37_N2
\LessThan3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\Add9~2_combout\ & ((!\LessThan3~1_cout\) # (!\Add5~0_combout\))) # (!\Add9~2_combout\ & (!\Add5~0_combout\ & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X62_Y37_N4
\LessThan3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\Add5~2_combout\ & ((!\LessThan3~3_cout\) # (!\Add9~4_combout\))) # (!\Add5~2_combout\ & (!\Add9~4_combout\ & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X62_Y37_N6
\LessThan3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\Add5~4_combout\ & (\Add9~6_combout\ & !\LessThan3~5_cout\)) # (!\Add5~4_combout\ & ((\Add9~6_combout\) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Add9~6_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X62_Y37_N8
\LessThan3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\Add9~8_combout\ & (\Add5~6_combout\ & !\LessThan3~7_cout\)) # (!\Add9~8_combout\ & ((\Add5~6_combout\) # (!\LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \Add5~6_combout\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X62_Y37_N10
\LessThan3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\Add5~8_combout\ & (\Add9~10_combout\ & !\LessThan3~9_cout\)) # (!\Add5~8_combout\ & ((\Add9~10_combout\) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Add9~10_combout\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X62_Y37_N12
\LessThan3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\Add9~12_combout\ & (\Add5~10_combout\ & !\LessThan3~11_cout\)) # (!\Add9~12_combout\ & ((\Add5~10_combout\) # (!\LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datab => \Add5~10_combout\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X62_Y37_N14
\LessThan3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((\Add9~14_combout\ & ((!\LessThan3~13_cout\) # (!\Add5~12_combout\))) # (!\Add9~14_combout\ & (!\Add5~12_combout\ & !\LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => \Add5~12_combout\,
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X62_Y37_N16
\LessThan3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((\Add9~16_combout\ & (\Add5~14_combout\ & !\LessThan3~15_cout\)) # (!\Add9~16_combout\ & ((\Add5~14_combout\) # (!\LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datab => \Add5~14_combout\,
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

-- Location: LCCOMB_X62_Y37_N18
\LessThan3~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~19_cout\ = CARRY((\Add5~16_combout\ & (\Add9~18_combout\ & !\LessThan3~17_cout\)) # (!\Add5~16_combout\ & ((\Add9~18_combout\) # (!\LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \Add9~18_combout\,
	datad => VCC,
	cin => \LessThan3~17_cout\,
	cout => \LessThan3~19_cout\);

-- Location: LCCOMB_X62_Y37_N20
\LessThan3~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~21_cout\ = CARRY((\Add5~18_combout\ & ((!\LessThan3~19_cout\) # (!\Add9~20_combout\))) # (!\Add5~18_combout\ & (!\Add9~20_combout\ & !\LessThan3~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~18_combout\,
	datab => \Add9~20_combout\,
	datad => VCC,
	cin => \LessThan3~19_cout\,
	cout => \LessThan3~21_cout\);

-- Location: LCCOMB_X62_Y37_N22
\LessThan3~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~23_cout\ = CARRY((\Add5~20_combout\ & (\Add9~22_combout\ & !\LessThan3~21_cout\)) # (!\Add5~20_combout\ & ((\Add9~22_combout\) # (!\LessThan3~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~20_combout\,
	datab => \Add9~22_combout\,
	datad => VCC,
	cin => \LessThan3~21_cout\,
	cout => \LessThan3~23_cout\);

-- Location: LCCOMB_X62_Y37_N24
\LessThan3~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~25_cout\ = CARRY((\Add9~24_combout\ & (\Add5~22_combout\ & !\LessThan3~23_cout\)) # (!\Add9~24_combout\ & ((\Add5~22_combout\) # (!\LessThan3~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~24_combout\,
	datab => \Add5~22_combout\,
	datad => VCC,
	cin => \LessThan3~23_cout\,
	cout => \LessThan3~25_cout\);

-- Location: LCCOMB_X62_Y37_N26
\LessThan3~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~27_cout\ = CARRY((\Add5~24_combout\ & (\Add9~26_combout\ & !\LessThan3~25_cout\)) # (!\Add5~24_combout\ & ((\Add9~26_combout\) # (!\LessThan3~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \Add9~26_combout\,
	datad => VCC,
	cin => \LessThan3~25_cout\,
	cout => \LessThan3~27_cout\);

-- Location: LCCOMB_X62_Y37_N28
\LessThan3~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~29_cout\ = CARRY((\Add5~26_combout\ & ((!\LessThan3~27_cout\) # (!\Add9~28_combout\))) # (!\Add5~26_combout\ & (!\Add9~28_combout\ & !\LessThan3~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~26_combout\,
	datab => \Add9~28_combout\,
	datad => VCC,
	cin => \LessThan3~27_cout\,
	cout => \LessThan3~29_cout\);

-- Location: LCCOMB_X62_Y37_N30
\LessThan3~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~31_cout\ = CARRY((\Add5~28_combout\ & (\Add9~30_combout\ & !\LessThan3~29_cout\)) # (!\Add5~28_combout\ & ((\Add9~30_combout\) # (!\LessThan3~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~28_combout\,
	datab => \Add9~30_combout\,
	datad => VCC,
	cin => \LessThan3~29_cout\,
	cout => \LessThan3~31_cout\);

-- Location: LCCOMB_X62_Y36_N0
\LessThan3~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~33_cout\ = CARRY((\Add9~32_combout\ & (\Add5~30_combout\ & !\LessThan3~31_cout\)) # (!\Add9~32_combout\ & ((\Add5~30_combout\) # (!\LessThan3~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~32_combout\,
	datab => \Add5~30_combout\,
	datad => VCC,
	cin => \LessThan3~31_cout\,
	cout => \LessThan3~33_cout\);

-- Location: LCCOMB_X62_Y36_N2
\LessThan3~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~35_cout\ = CARRY((\Add9~34_combout\ & ((!\LessThan3~33_cout\) # (!\Add5~32_combout\))) # (!\Add9~34_combout\ & (!\Add5~32_combout\ & !\LessThan3~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~34_combout\,
	datab => \Add5~32_combout\,
	datad => VCC,
	cin => \LessThan3~33_cout\,
	cout => \LessThan3~35_cout\);

-- Location: LCCOMB_X62_Y36_N4
\LessThan3~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~37_cout\ = CARRY((\Add5~34_combout\ & ((!\LessThan3~35_cout\) # (!\Add9~36_combout\))) # (!\Add5~34_combout\ & (!\Add9~36_combout\ & !\LessThan3~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datab => \Add9~36_combout\,
	datad => VCC,
	cin => \LessThan3~35_cout\,
	cout => \LessThan3~37_cout\);

-- Location: LCCOMB_X62_Y36_N6
\LessThan3~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~39_cout\ = CARRY((\Add5~36_combout\ & (\Add9~38_combout\ & !\LessThan3~37_cout\)) # (!\Add5~36_combout\ & ((\Add9~38_combout\) # (!\LessThan3~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~36_combout\,
	datab => \Add9~38_combout\,
	datad => VCC,
	cin => \LessThan3~37_cout\,
	cout => \LessThan3~39_cout\);

-- Location: LCCOMB_X62_Y36_N8
\LessThan3~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~41_cout\ = CARRY((\Add9~40_combout\ & (\Add5~38_combout\ & !\LessThan3~39_cout\)) # (!\Add9~40_combout\ & ((\Add5~38_combout\) # (!\LessThan3~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~40_combout\,
	datab => \Add5~38_combout\,
	datad => VCC,
	cin => \LessThan3~39_cout\,
	cout => \LessThan3~41_cout\);

-- Location: LCCOMB_X62_Y36_N10
\LessThan3~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~43_cout\ = CARRY((\Add5~40_combout\ & (\Add9~42_combout\ & !\LessThan3~41_cout\)) # (!\Add5~40_combout\ & ((\Add9~42_combout\) # (!\LessThan3~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~40_combout\,
	datab => \Add9~42_combout\,
	datad => VCC,
	cin => \LessThan3~41_cout\,
	cout => \LessThan3~43_cout\);

-- Location: LCCOMB_X62_Y36_N12
\LessThan3~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~45_cout\ = CARRY((\Add9~44_combout\ & (\Add5~42_combout\ & !\LessThan3~43_cout\)) # (!\Add9~44_combout\ & ((\Add5~42_combout\) # (!\LessThan3~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~44_combout\,
	datab => \Add5~42_combout\,
	datad => VCC,
	cin => \LessThan3~43_cout\,
	cout => \LessThan3~45_cout\);

-- Location: LCCOMB_X62_Y36_N14
\LessThan3~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~47_cout\ = CARRY((\Add9~46_combout\ & ((!\LessThan3~45_cout\) # (!\Add5~44_combout\))) # (!\Add9~46_combout\ & (!\Add5~44_combout\ & !\LessThan3~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~46_combout\,
	datab => \Add5~44_combout\,
	datad => VCC,
	cin => \LessThan3~45_cout\,
	cout => \LessThan3~47_cout\);

-- Location: LCCOMB_X62_Y36_N16
\LessThan3~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~49_cout\ = CARRY((\Add9~48_combout\ & (\Add5~46_combout\ & !\LessThan3~47_cout\)) # (!\Add9~48_combout\ & ((\Add5~46_combout\) # (!\LessThan3~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~48_combout\,
	datab => \Add5~46_combout\,
	datad => VCC,
	cin => \LessThan3~47_cout\,
	cout => \LessThan3~49_cout\);

-- Location: LCCOMB_X62_Y36_N18
\LessThan3~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~51_cout\ = CARRY((\Add9~50_combout\ & ((!\LessThan3~49_cout\) # (!\Add5~48_combout\))) # (!\Add9~50_combout\ & (!\Add5~48_combout\ & !\LessThan3~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~50_combout\,
	datab => \Add5~48_combout\,
	datad => VCC,
	cin => \LessThan3~49_cout\,
	cout => \LessThan3~51_cout\);

-- Location: LCCOMB_X62_Y36_N20
\LessThan3~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~53_cout\ = CARRY((\Add5~50_combout\ & ((!\LessThan3~51_cout\) # (!\Add9~52_combout\))) # (!\Add5~50_combout\ & (!\Add9~52_combout\ & !\LessThan3~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~50_combout\,
	datab => \Add9~52_combout\,
	datad => VCC,
	cin => \LessThan3~51_cout\,
	cout => \LessThan3~53_cout\);

-- Location: LCCOMB_X62_Y36_N22
\LessThan3~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~55_cout\ = CARRY((\Add5~52_combout\ & (\Add9~54_combout\ & !\LessThan3~53_cout\)) # (!\Add5~52_combout\ & ((\Add9~54_combout\) # (!\LessThan3~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~52_combout\,
	datab => \Add9~54_combout\,
	datad => VCC,
	cin => \LessThan3~53_cout\,
	cout => \LessThan3~55_cout\);

-- Location: LCCOMB_X62_Y36_N24
\LessThan3~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~57_cout\ = CARRY((\Add5~54_combout\ & ((!\LessThan3~55_cout\) # (!\Add9~56_combout\))) # (!\Add5~54_combout\ & (!\Add9~56_combout\ & !\LessThan3~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~54_combout\,
	datab => \Add9~56_combout\,
	datad => VCC,
	cin => \LessThan3~55_cout\,
	cout => \LessThan3~57_cout\);

-- Location: LCCOMB_X62_Y36_N26
\LessThan3~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~59_cout\ = CARRY((\Add9~58_combout\ & ((!\LessThan3~57_cout\) # (!\Add5~56_combout\))) # (!\Add9~58_combout\ & (!\Add5~56_combout\ & !\LessThan3~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~58_combout\,
	datab => \Add5~56_combout\,
	datad => VCC,
	cin => \LessThan3~57_cout\,
	cout => \LessThan3~59_cout\);

-- Location: LCCOMB_X62_Y36_N28
\LessThan3~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~61_cout\ = CARRY((\Add5~58_combout\ & ((!\LessThan3~59_cout\) # (!\Add9~60_combout\))) # (!\Add5~58_combout\ & (!\Add9~60_combout\ & !\LessThan3~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~58_combout\,
	datab => \Add9~60_combout\,
	datad => VCC,
	cin => \LessThan3~59_cout\,
	cout => \LessThan3~61_cout\);

-- Location: LCCOMB_X62_Y36_N30
\LessThan3~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~62_combout\ = (\Add9~62_combout\ & ((\LessThan3~61_cout\) # (!\Add5~60_combout\))) # (!\Add9~62_combout\ & (\LessThan3~61_cout\ & !\Add5~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~62_combout\,
	datad => \Add5~60_combout\,
	cin => \LessThan3~61_cout\,
	combout => \LessThan3~62_combout\);

-- Location: LCCOMB_X63_Y34_N4
\vacated_space~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~31_combout\ = (\LessThan3~62_combout\ & ((\Add9~62_combout\))) # (!\LessThan3~62_combout\ & (\Add5~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~60_combout\,
	datac => \Add9~62_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~31_combout\);

-- Location: LCCOMB_X66_Y37_N0
\LessThan5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\Add5~2_combout\) # ((\Add4~0_combout\) # (\Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~2_combout\,
	datac => \Add4~0_combout\,
	datad => \Add5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X62_Y35_N12
\LessThan5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Add7~0_combout\) # ((\Add9~4_combout\) # ((\Add9~2_combout\) # (\Add9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add9~4_combout\,
	datac => \Add9~2_combout\,
	datad => \Add9~6_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X61_Y34_N14
\LessThan5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\LessThan3~62_combout\ & (((\LessThan5~0_combout\)))) # (!\LessThan3~62_combout\ & ((\LessThan5~1_combout\) # ((\Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => \Add5~4_combout\,
	datac => \LessThan5~0_combout\,
	datad => \LessThan3~62_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X62_Y34_N10
\vacated_space~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~11_combout\ = (\LessThan3~62_combout\ & ((\Add9~22_combout\))) # (!\LessThan3~62_combout\ & (\Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~20_combout\,
	datac => \Add9~22_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~11_combout\);

-- Location: LCCOMB_X62_Y34_N28
\vacated_space~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~8_combout\ = (\LessThan3~62_combout\ & (\Add9~16_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datab => \Add5~14_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~8_combout\);

-- Location: LCCOMB_X62_Y34_N30
\vacated_space~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~9_combout\ = (\LessThan3~62_combout\ & ((\Add9~18_combout\))) # (!\LessThan3~62_combout\ & (\Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~16_combout\,
	datac => \Add9~18_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~9_combout\);

-- Location: LCCOMB_X62_Y34_N0
\vacated_space~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~10_combout\ = (\LessThan3~62_combout\ & ((\Add9~20_combout\))) # (!\LessThan3~62_combout\ & (\Add5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~18_combout\,
	datac => \Add9~20_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~10_combout\);

-- Location: LCCOMB_X62_Y34_N2
\LessThan5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (\vacated_space~11_combout\) # ((\vacated_space~8_combout\) # ((\vacated_space~9_combout\) # (\vacated_space~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space~11_combout\,
	datab => \vacated_space~8_combout\,
	datac => \vacated_space~9_combout\,
	datad => \vacated_space~10_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X62_Y34_N26
\vacated_space~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~5_combout\ = (\LessThan3~62_combout\ & (\Add9~10_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datac => \Add5~8_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~5_combout\);

-- Location: LCCOMB_X62_Y34_N16
\vacated_space~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~4_combout\ = (\LessThan3~62_combout\ & (\Add9~8_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datac => \Add5~6_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~4_combout\);

-- Location: LCCOMB_X62_Y34_N4
\vacated_space~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~6_combout\ = (\LessThan3~62_combout\ & (\Add9~12_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~12_combout\,
	datac => \Add5~10_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~6_combout\);

-- Location: LCCOMB_X62_Y34_N18
\vacated_space~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~7_combout\ = (\LessThan3~62_combout\ & (\Add9~14_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datac => \Add5~12_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~7_combout\);

-- Location: LCCOMB_X62_Y34_N8
\LessThan5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\vacated_space~5_combout\) # ((\vacated_space~4_combout\) # ((\vacated_space~6_combout\) # (\vacated_space~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space~5_combout\,
	datab => \vacated_space~4_combout\,
	datac => \vacated_space~6_combout\,
	datad => \vacated_space~7_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X62_Y34_N22
\vacated_space~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~13_combout\ = (\LessThan3~62_combout\ & (\Add9~26_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~26_combout\,
	datac => \Add5~24_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~13_combout\);

-- Location: LCCOMB_X62_Y34_N20
\vacated_space~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~12_combout\ = (\LessThan3~62_combout\ & (\Add9~24_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~24_combout\,
	datac => \Add5~22_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~12_combout\);

-- Location: LCCOMB_X62_Y34_N14
\vacated_space~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~15_combout\ = (\LessThan3~62_combout\ & (\Add9~30_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~30_combout\,
	datac => \Add5~28_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~15_combout\);

-- Location: LCCOMB_X62_Y34_N24
\vacated_space~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~14_combout\ = (\LessThan3~62_combout\ & ((\Add9~28_combout\))) # (!\LessThan3~62_combout\ & (\Add5~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~26_combout\,
	datac => \Add9~28_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~14_combout\);

-- Location: LCCOMB_X62_Y34_N12
\LessThan5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~5_combout\ = (\vacated_space~13_combout\) # ((\vacated_space~12_combout\) # ((\vacated_space~15_combout\) # (\vacated_space~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space~13_combout\,
	datab => \vacated_space~12_combout\,
	datac => \vacated_space~15_combout\,
	datad => \vacated_space~14_combout\,
	combout => \LessThan5~5_combout\);

-- Location: LCCOMB_X62_Y34_N6
\LessThan5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~6_combout\ = (\LessThan5~2_combout\) # ((\LessThan5~4_combout\) # ((\LessThan5~3_combout\) # (\LessThan5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \LessThan5~4_combout\,
	datac => \LessThan5~3_combout\,
	datad => \LessThan5~5_combout\,
	combout => \LessThan5~6_combout\);

-- Location: LCCOMB_X63_Y34_N10
\vacated_space~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~30_combout\ = (\LessThan3~62_combout\ & (\Add9~60_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~60_combout\,
	datac => \Add5~58_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~30_combout\);

-- Location: LCCOMB_X63_Y34_N8
\vacated_space~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~28_combout\ = (\LessThan3~62_combout\ & ((\Add9~56_combout\))) # (!\LessThan3~62_combout\ & (\Add5~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~54_combout\,
	datab => \Add9~56_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~28_combout\);

-- Location: LCCOMB_X63_Y34_N16
\vacated_space~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~29_combout\ = (\LessThan3~62_combout\ & ((\Add9~58_combout\))) # (!\LessThan3~62_combout\ & (\Add5~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~56_combout\,
	datab => \Add9~58_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~29_combout\);

-- Location: LCCOMB_X63_Y34_N30
\LessThan5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~10_combout\ = (\vacated_space~30_combout\) # ((\vacated_space~28_combout\) # (\vacated_space~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space~30_combout\,
	datac => \vacated_space~28_combout\,
	datad => \vacated_space~29_combout\,
	combout => \LessThan5~10_combout\);

-- Location: LCCOMB_X63_Y34_N6
\vacated_space~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~23_combout\ = (\LessThan3~62_combout\ & ((\Add9~46_combout\))) # (!\LessThan3~62_combout\ & (\Add5~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~44_combout\,
	datac => \Add9~46_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~23_combout\);

-- Location: LCCOMB_X63_Y34_N24
\vacated_space~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~20_combout\ = (\LessThan3~62_combout\ & (\Add9~40_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~40_combout\,
	datac => \Add5~38_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~20_combout\);

-- Location: LCCOMB_X63_Y34_N26
\vacated_space~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~21_combout\ = (\LessThan3~62_combout\ & (\Add9~42_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~42_combout\,
	datac => \Add5~40_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~21_combout\);

-- Location: LCCOMB_X63_Y34_N0
\vacated_space~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~22_combout\ = (\LessThan3~62_combout\ & ((\Add9~44_combout\))) # (!\LessThan3~62_combout\ & (\Add5~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~42_combout\,
	datac => \Add9~44_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~22_combout\);

-- Location: LCCOMB_X63_Y34_N28
\LessThan5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~8_combout\ = (\vacated_space~23_combout\) # ((\vacated_space~20_combout\) # ((\vacated_space~21_combout\) # (\vacated_space~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space~23_combout\,
	datab => \vacated_space~20_combout\,
	datac => \vacated_space~21_combout\,
	datad => \vacated_space~22_combout\,
	combout => \LessThan5~8_combout\);

-- Location: LCCOMB_X62_Y35_N26
\vacated_space~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~27_combout\ = (\LessThan3~62_combout\ & (\Add9~54_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~54_combout\,
	datac => \LessThan3~62_combout\,
	datad => \Add5~52_combout\,
	combout => \vacated_space~27_combout\);

-- Location: LCCOMB_X62_Y35_N18
\vacated_space~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~25_combout\ = (\LessThan3~62_combout\ & (\Add9~50_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~50_combout\,
	datac => \LessThan3~62_combout\,
	datad => \Add5~48_combout\,
	combout => \vacated_space~25_combout\);

-- Location: LCCOMB_X62_Y35_N8
\vacated_space~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~24_combout\ = (\LessThan3~62_combout\ & (\Add9~48_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~48_combout\,
	datac => \LessThan3~62_combout\,
	datad => \Add5~46_combout\,
	combout => \vacated_space~24_combout\);

-- Location: LCCOMB_X62_Y35_N20
\vacated_space~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~26_combout\ = (\LessThan3~62_combout\ & (\Add9~52_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~52_combout\,
	datac => \LessThan3~62_combout\,
	datad => \Add5~50_combout\,
	combout => \vacated_space~26_combout\);

-- Location: LCCOMB_X62_Y35_N30
\LessThan5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~9_combout\ = (\vacated_space~27_combout\) # ((\vacated_space~25_combout\) # ((\vacated_space~24_combout\) # (\vacated_space~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space~27_combout\,
	datab => \vacated_space~25_combout\,
	datac => \vacated_space~24_combout\,
	datad => \vacated_space~26_combout\,
	combout => \LessThan5~9_combout\);

-- Location: LCCOMB_X63_Y34_N22
\vacated_space~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~18_combout\ = (\LessThan3~62_combout\ & (\Add9~36_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~36_combout\,
	datac => \Add5~34_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~18_combout\);

-- Location: LCCOMB_X63_Y34_N20
\vacated_space~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~17_combout\ = (\LessThan3~62_combout\ & (\Add9~34_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~34_combout\,
	datac => \Add5~32_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~17_combout\);

-- Location: LCCOMB_X63_Y34_N14
\vacated_space~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~16_combout\ = (\LessThan3~62_combout\ & (\Add9~32_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~32_combout\,
	datac => \Add5~30_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~16_combout\);

-- Location: LCCOMB_X61_Y34_N20
\vacated_space~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~19_combout\ = (\LessThan3~62_combout\ & (\Add9~38_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~38_combout\,
	datac => \Add5~36_combout\,
	datad => \LessThan3~62_combout\,
	combout => \vacated_space~19_combout\);

-- Location: LCCOMB_X63_Y34_N18
\LessThan5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~7_combout\ = (\vacated_space~18_combout\) # ((\vacated_space~17_combout\) # ((\vacated_space~16_combout\) # (\vacated_space~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space~18_combout\,
	datab => \vacated_space~17_combout\,
	datac => \vacated_space~16_combout\,
	datad => \vacated_space~19_combout\,
	combout => \LessThan5~7_combout\);

-- Location: LCCOMB_X63_Y34_N12
\LessThan5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~11_combout\ = (\LessThan5~10_combout\) # ((\LessThan5~8_combout\) # ((\LessThan5~9_combout\) # (\LessThan5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~10_combout\,
	datab => \LessThan5~8_combout\,
	datac => \LessThan5~9_combout\,
	datad => \LessThan5~7_combout\,
	combout => \LessThan5~11_combout\);

-- Location: LCCOMB_X63_Y34_N2
\entered_car[8]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[8]~31_combout\ = (!\is_uni_car_entered~input_o\ & (!\vacated_space~31_combout\ & ((\LessThan5~6_combout\) # (\LessThan5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_uni_car_entered~input_o\,
	datab => \vacated_space~31_combout\,
	datac => \LessThan5~6_combout\,
	datad => \LessThan5~11_combout\,
	combout => \entered_car[8]~31_combout\);

-- Location: LCCOMB_X64_Y35_N0
\entered_car[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[0]~32_combout\ = entered_car(0) $ (\entered_car[8]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => entered_car(0),
	datad => \entered_car[8]~31_combout\,
	combout => \entered_car[0]~32_combout\);

-- Location: FF_X64_Y35_N1
\entered_car[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(0));

-- Location: LCCOMB_X64_Y35_N2
\entered_car[1]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[1]~33_combout\ = (entered_car(1) & (entered_car(0) $ (VCC))) # (!entered_car(1) & (entered_car(0) & VCC))
-- \entered_car[1]~34\ = CARRY((entered_car(1) & entered_car(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(1),
	datab => entered_car(0),
	datad => VCC,
	combout => \entered_car[1]~33_combout\,
	cout => \entered_car[1]~34\);

-- Location: FF_X63_Y34_N17
\entered_car[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \entered_car[1]~33_combout\,
	sload => VCC,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(1));

-- Location: LCCOMB_X64_Y35_N4
\entered_car[2]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[2]~35_combout\ = (entered_car(2) & (!\entered_car[1]~34\)) # (!entered_car(2) & ((\entered_car[1]~34\) # (GND)))
-- \entered_car[2]~36\ = CARRY((!\entered_car[1]~34\) # (!entered_car(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(2),
	datad => VCC,
	cin => \entered_car[1]~34\,
	combout => \entered_car[2]~35_combout\,
	cout => \entered_car[2]~36\);

-- Location: FF_X64_Y35_N5
\entered_car[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[2]~35_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(2));

-- Location: LCCOMB_X64_Y35_N6
\entered_car[3]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[3]~37_combout\ = (entered_car(3) & (\entered_car[2]~36\ $ (GND))) # (!entered_car(3) & (!\entered_car[2]~36\ & VCC))
-- \entered_car[3]~38\ = CARRY((entered_car(3) & !\entered_car[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(3),
	datad => VCC,
	cin => \entered_car[2]~36\,
	combout => \entered_car[3]~37_combout\,
	cout => \entered_car[3]~38\);

-- Location: FF_X64_Y35_N7
\entered_car[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[3]~37_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(3));

-- Location: LCCOMB_X64_Y35_N8
\entered_car[4]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[4]~39_combout\ = (entered_car(4) & (!\entered_car[3]~38\)) # (!entered_car(4) & ((\entered_car[3]~38\) # (GND)))
-- \entered_car[4]~40\ = CARRY((!\entered_car[3]~38\) # (!entered_car(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(4),
	datad => VCC,
	cin => \entered_car[3]~38\,
	combout => \entered_car[4]~39_combout\,
	cout => \entered_car[4]~40\);

-- Location: FF_X64_Y35_N9
\entered_car[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[4]~39_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(4));

-- Location: LCCOMB_X64_Y35_N10
\entered_car[5]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[5]~41_combout\ = (entered_car(5) & (\entered_car[4]~40\ $ (GND))) # (!entered_car(5) & (!\entered_car[4]~40\ & VCC))
-- \entered_car[5]~42\ = CARRY((entered_car(5) & !\entered_car[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(5),
	datad => VCC,
	cin => \entered_car[4]~40\,
	combout => \entered_car[5]~41_combout\,
	cout => \entered_car[5]~42\);

-- Location: FF_X64_Y35_N11
\entered_car[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[5]~41_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(5));

-- Location: LCCOMB_X64_Y35_N12
\entered_car[6]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[6]~43_combout\ = (entered_car(6) & (!\entered_car[5]~42\)) # (!entered_car(6) & ((\entered_car[5]~42\) # (GND)))
-- \entered_car[6]~44\ = CARRY((!\entered_car[5]~42\) # (!entered_car(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(6),
	datad => VCC,
	cin => \entered_car[5]~42\,
	combout => \entered_car[6]~43_combout\,
	cout => \entered_car[6]~44\);

-- Location: FF_X64_Y35_N13
\entered_car[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[6]~43_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(6));

-- Location: LCCOMB_X64_Y35_N14
\entered_car[7]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[7]~45_combout\ = (entered_car(7) & (\entered_car[6]~44\ $ (GND))) # (!entered_car(7) & (!\entered_car[6]~44\ & VCC))
-- \entered_car[7]~46\ = CARRY((entered_car(7) & !\entered_car[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(7),
	datad => VCC,
	cin => \entered_car[6]~44\,
	combout => \entered_car[7]~45_combout\,
	cout => \entered_car[7]~46\);

-- Location: FF_X64_Y35_N15
\entered_car[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[7]~45_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(7));

-- Location: LCCOMB_X64_Y35_N16
\entered_car[8]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[8]~47_combout\ = (entered_car(8) & (!\entered_car[7]~46\)) # (!entered_car(8) & ((\entered_car[7]~46\) # (GND)))
-- \entered_car[8]~48\ = CARRY((!\entered_car[7]~46\) # (!entered_car(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(8),
	datad => VCC,
	cin => \entered_car[7]~46\,
	combout => \entered_car[8]~47_combout\,
	cout => \entered_car[8]~48\);

-- Location: FF_X64_Y35_N17
\entered_car[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[8]~47_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(8));

-- Location: LCCOMB_X64_Y35_N18
\entered_car[9]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[9]~49_combout\ = (entered_car(9) & (\entered_car[8]~48\ $ (GND))) # (!entered_car(9) & (!\entered_car[8]~48\ & VCC))
-- \entered_car[9]~50\ = CARRY((entered_car(9) & !\entered_car[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(9),
	datad => VCC,
	cin => \entered_car[8]~48\,
	combout => \entered_car[9]~49_combout\,
	cout => \entered_car[9]~50\);

-- Location: FF_X64_Y35_N19
\entered_car[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[9]~49_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(9));

-- Location: LCCOMB_X64_Y35_N20
\entered_car[10]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[10]~51_combout\ = (entered_car(10) & (!\entered_car[9]~50\)) # (!entered_car(10) & ((\entered_car[9]~50\) # (GND)))
-- \entered_car[10]~52\ = CARRY((!\entered_car[9]~50\) # (!entered_car(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(10),
	datad => VCC,
	cin => \entered_car[9]~50\,
	combout => \entered_car[10]~51_combout\,
	cout => \entered_car[10]~52\);

-- Location: FF_X64_Y35_N21
\entered_car[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[10]~51_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(10));

-- Location: LCCOMB_X64_Y35_N22
\entered_car[11]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[11]~53_combout\ = (entered_car(11) & (\entered_car[10]~52\ $ (GND))) # (!entered_car(11) & (!\entered_car[10]~52\ & VCC))
-- \entered_car[11]~54\ = CARRY((entered_car(11) & !\entered_car[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(11),
	datad => VCC,
	cin => \entered_car[10]~52\,
	combout => \entered_car[11]~53_combout\,
	cout => \entered_car[11]~54\);

-- Location: FF_X64_Y35_N23
\entered_car[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[11]~53_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(11));

-- Location: LCCOMB_X64_Y35_N24
\entered_car[12]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[12]~55_combout\ = (entered_car(12) & (!\entered_car[11]~54\)) # (!entered_car(12) & ((\entered_car[11]~54\) # (GND)))
-- \entered_car[12]~56\ = CARRY((!\entered_car[11]~54\) # (!entered_car(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(12),
	datad => VCC,
	cin => \entered_car[11]~54\,
	combout => \entered_car[12]~55_combout\,
	cout => \entered_car[12]~56\);

-- Location: FF_X64_Y35_N25
\entered_car[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[12]~55_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(12));

-- Location: LCCOMB_X64_Y35_N26
\entered_car[13]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[13]~57_combout\ = (entered_car(13) & (\entered_car[12]~56\ $ (GND))) # (!entered_car(13) & (!\entered_car[12]~56\ & VCC))
-- \entered_car[13]~58\ = CARRY((entered_car(13) & !\entered_car[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(13),
	datad => VCC,
	cin => \entered_car[12]~56\,
	combout => \entered_car[13]~57_combout\,
	cout => \entered_car[13]~58\);

-- Location: FF_X64_Y35_N27
\entered_car[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[13]~57_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(13));

-- Location: LCCOMB_X64_Y35_N28
\entered_car[14]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[14]~59_combout\ = (entered_car(14) & (!\entered_car[13]~58\)) # (!entered_car(14) & ((\entered_car[13]~58\) # (GND)))
-- \entered_car[14]~60\ = CARRY((!\entered_car[13]~58\) # (!entered_car(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(14),
	datad => VCC,
	cin => \entered_car[13]~58\,
	combout => \entered_car[14]~59_combout\,
	cout => \entered_car[14]~60\);

-- Location: FF_X64_Y35_N29
\entered_car[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[14]~59_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(14));

-- Location: LCCOMB_X64_Y35_N30
\entered_car[15]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[15]~61_combout\ = (entered_car(15) & (\entered_car[14]~60\ $ (GND))) # (!entered_car(15) & (!\entered_car[14]~60\ & VCC))
-- \entered_car[15]~62\ = CARRY((entered_car(15) & !\entered_car[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(15),
	datad => VCC,
	cin => \entered_car[14]~60\,
	combout => \entered_car[15]~61_combout\,
	cout => \entered_car[15]~62\);

-- Location: FF_X64_Y35_N31
\entered_car[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[15]~61_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(15));

-- Location: LCCOMB_X64_Y34_N0
\entered_car[16]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[16]~63_combout\ = (entered_car(16) & (!\entered_car[15]~62\)) # (!entered_car(16) & ((\entered_car[15]~62\) # (GND)))
-- \entered_car[16]~64\ = CARRY((!\entered_car[15]~62\) # (!entered_car(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(16),
	datad => VCC,
	cin => \entered_car[15]~62\,
	combout => \entered_car[16]~63_combout\,
	cout => \entered_car[16]~64\);

-- Location: FF_X64_Y34_N1
\entered_car[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[16]~63_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(16));

-- Location: LCCOMB_X64_Y34_N2
\entered_car[17]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[17]~65_combout\ = (entered_car(17) & (\entered_car[16]~64\ $ (GND))) # (!entered_car(17) & (!\entered_car[16]~64\ & VCC))
-- \entered_car[17]~66\ = CARRY((entered_car(17) & !\entered_car[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(17),
	datad => VCC,
	cin => \entered_car[16]~64\,
	combout => \entered_car[17]~65_combout\,
	cout => \entered_car[17]~66\);

-- Location: FF_X64_Y34_N3
\entered_car[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[17]~65_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(17));

-- Location: LCCOMB_X64_Y34_N4
\entered_car[18]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[18]~67_combout\ = (entered_car(18) & (!\entered_car[17]~66\)) # (!entered_car(18) & ((\entered_car[17]~66\) # (GND)))
-- \entered_car[18]~68\ = CARRY((!\entered_car[17]~66\) # (!entered_car(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(18),
	datad => VCC,
	cin => \entered_car[17]~66\,
	combout => \entered_car[18]~67_combout\,
	cout => \entered_car[18]~68\);

-- Location: FF_X64_Y34_N5
\entered_car[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[18]~67_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(18));

-- Location: LCCOMB_X64_Y34_N6
\entered_car[19]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[19]~69_combout\ = (entered_car(19) & (\entered_car[18]~68\ $ (GND))) # (!entered_car(19) & (!\entered_car[18]~68\ & VCC))
-- \entered_car[19]~70\ = CARRY((entered_car(19) & !\entered_car[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(19),
	datad => VCC,
	cin => \entered_car[18]~68\,
	combout => \entered_car[19]~69_combout\,
	cout => \entered_car[19]~70\);

-- Location: FF_X64_Y34_N7
\entered_car[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[19]~69_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(19));

-- Location: LCCOMB_X64_Y34_N8
\entered_car[20]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[20]~71_combout\ = (entered_car(20) & (!\entered_car[19]~70\)) # (!entered_car(20) & ((\entered_car[19]~70\) # (GND)))
-- \entered_car[20]~72\ = CARRY((!\entered_car[19]~70\) # (!entered_car(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(20),
	datad => VCC,
	cin => \entered_car[19]~70\,
	combout => \entered_car[20]~71_combout\,
	cout => \entered_car[20]~72\);

-- Location: FF_X64_Y34_N9
\entered_car[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[20]~71_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(20));

-- Location: LCCOMB_X64_Y34_N10
\entered_car[21]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[21]~73_combout\ = (entered_car(21) & (\entered_car[20]~72\ $ (GND))) # (!entered_car(21) & (!\entered_car[20]~72\ & VCC))
-- \entered_car[21]~74\ = CARRY((entered_car(21) & !\entered_car[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(21),
	datad => VCC,
	cin => \entered_car[20]~72\,
	combout => \entered_car[21]~73_combout\,
	cout => \entered_car[21]~74\);

-- Location: FF_X64_Y34_N11
\entered_car[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[21]~73_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(21));

-- Location: LCCOMB_X64_Y34_N12
\entered_car[22]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[22]~75_combout\ = (entered_car(22) & (!\entered_car[21]~74\)) # (!entered_car(22) & ((\entered_car[21]~74\) # (GND)))
-- \entered_car[22]~76\ = CARRY((!\entered_car[21]~74\) # (!entered_car(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(22),
	datad => VCC,
	cin => \entered_car[21]~74\,
	combout => \entered_car[22]~75_combout\,
	cout => \entered_car[22]~76\);

-- Location: FF_X64_Y34_N13
\entered_car[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[22]~75_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(22));

-- Location: LCCOMB_X64_Y34_N14
\entered_car[23]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[23]~77_combout\ = (entered_car(23) & (\entered_car[22]~76\ $ (GND))) # (!entered_car(23) & (!\entered_car[22]~76\ & VCC))
-- \entered_car[23]~78\ = CARRY((entered_car(23) & !\entered_car[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(23),
	datad => VCC,
	cin => \entered_car[22]~76\,
	combout => \entered_car[23]~77_combout\,
	cout => \entered_car[23]~78\);

-- Location: FF_X64_Y34_N15
\entered_car[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[23]~77_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(23));

-- Location: LCCOMB_X64_Y34_N16
\entered_car[24]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[24]~79_combout\ = (entered_car(24) & (!\entered_car[23]~78\)) # (!entered_car(24) & ((\entered_car[23]~78\) # (GND)))
-- \entered_car[24]~80\ = CARRY((!\entered_car[23]~78\) # (!entered_car(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(24),
	datad => VCC,
	cin => \entered_car[23]~78\,
	combout => \entered_car[24]~79_combout\,
	cout => \entered_car[24]~80\);

-- Location: FF_X64_Y34_N17
\entered_car[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[24]~79_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(24));

-- Location: LCCOMB_X64_Y34_N18
\entered_car[25]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[25]~81_combout\ = (entered_car(25) & (\entered_car[24]~80\ $ (GND))) # (!entered_car(25) & (!\entered_car[24]~80\ & VCC))
-- \entered_car[25]~82\ = CARRY((entered_car(25) & !\entered_car[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(25),
	datad => VCC,
	cin => \entered_car[24]~80\,
	combout => \entered_car[25]~81_combout\,
	cout => \entered_car[25]~82\);

-- Location: FF_X64_Y34_N19
\entered_car[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[25]~81_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(25));

-- Location: LCCOMB_X64_Y34_N20
\entered_car[26]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[26]~83_combout\ = (entered_car(26) & (!\entered_car[25]~82\)) # (!entered_car(26) & ((\entered_car[25]~82\) # (GND)))
-- \entered_car[26]~84\ = CARRY((!\entered_car[25]~82\) # (!entered_car(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(26),
	datad => VCC,
	cin => \entered_car[25]~82\,
	combout => \entered_car[26]~83_combout\,
	cout => \entered_car[26]~84\);

-- Location: FF_X64_Y34_N21
\entered_car[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[26]~83_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(26));

-- Location: LCCOMB_X64_Y34_N22
\entered_car[27]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[27]~85_combout\ = (entered_car(27) & (\entered_car[26]~84\ $ (GND))) # (!entered_car(27) & (!\entered_car[26]~84\ & VCC))
-- \entered_car[27]~86\ = CARRY((entered_car(27) & !\entered_car[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(27),
	datad => VCC,
	cin => \entered_car[26]~84\,
	combout => \entered_car[27]~85_combout\,
	cout => \entered_car[27]~86\);

-- Location: FF_X64_Y34_N23
\entered_car[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[27]~85_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(27));

-- Location: LCCOMB_X64_Y34_N24
\entered_car[28]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[28]~87_combout\ = (entered_car(28) & (!\entered_car[27]~86\)) # (!entered_car(28) & ((\entered_car[27]~86\) # (GND)))
-- \entered_car[28]~88\ = CARRY((!\entered_car[27]~86\) # (!entered_car(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(28),
	datad => VCC,
	cin => \entered_car[27]~86\,
	combout => \entered_car[28]~87_combout\,
	cout => \entered_car[28]~88\);

-- Location: FF_X64_Y34_N25
\entered_car[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[28]~87_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(28));

-- Location: LCCOMB_X64_Y34_N26
\entered_car[29]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[29]~89_combout\ = (entered_car(29) & (\entered_car[28]~88\ $ (GND))) # (!entered_car(29) & (!\entered_car[28]~88\ & VCC))
-- \entered_car[29]~90\ = CARRY((entered_car(29) & !\entered_car[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(29),
	datad => VCC,
	cin => \entered_car[28]~88\,
	combout => \entered_car[29]~89_combout\,
	cout => \entered_car[29]~90\);

-- Location: FF_X64_Y34_N27
\entered_car[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[29]~89_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(29));

-- Location: LCCOMB_X64_Y34_N28
\entered_car[30]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[30]~91_combout\ = (entered_car(30) & (!\entered_car[29]~90\)) # (!entered_car(30) & ((\entered_car[29]~90\) # (GND)))
-- \entered_car[30]~92\ = CARRY((!\entered_car[29]~90\) # (!entered_car(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => entered_car(30),
	datad => VCC,
	cin => \entered_car[29]~90\,
	combout => \entered_car[30]~91_combout\,
	cout => \entered_car[30]~92\);

-- Location: FF_X64_Y34_N29
\entered_car[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[30]~91_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(30));

-- Location: LCCOMB_X64_Y36_N28
\Add7~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = ((exited_car(30) $ (entered_car(30) $ (\Add7~59\)))) # (GND)
-- \Add7~61\ = CARRY((exited_car(30) & (entered_car(30) & !\Add7~59\)) # (!exited_car(30) & ((entered_car(30)) # (!\Add7~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(30),
	datab => entered_car(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: LCCOMB_X63_Y36_N12
\LessThan7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~5_combout\ = (\Add7~34_combout\) # ((\Add7~32_combout\) # ((\Add7~36_combout\) # (\Add7~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~34_combout\,
	datab => \Add7~32_combout\,
	datac => \Add7~36_combout\,
	datad => \Add7~38_combout\,
	combout => \LessThan7~5_combout\);

-- Location: LCCOMB_X63_Y36_N14
\exited_car[31]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[31]~31_combout\ = (\Add7~42_combout\) # ((\Add7~40_combout\) # ((\Add7~46_combout\) # (\LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datab => \Add7~40_combout\,
	datac => \Add7~46_combout\,
	datad => \LessThan7~5_combout\,
	combout => \exited_car[31]~31_combout\);

-- Location: LCCOMB_X63_Y37_N28
\LessThan7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\Add7~2_combout\) # ((\Add7~0_combout\) # ((\Add7~6_combout\) # (\Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~0_combout\,
	datac => \Add7~6_combout\,
	datad => \Add7~4_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X63_Y36_N20
\LessThan7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (\Add7~8_combout\) # ((\Add7~10_combout\) # ((\Add7~12_combout\) # (\Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~10_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~14_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X63_Y36_N30
\LessThan7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\Add7~20_combout\) # ((\Add7~16_combout\) # ((\Add7~18_combout\) # (\Add7~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add7~16_combout\,
	datac => \Add7~18_combout\,
	datad => \Add7~22_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X63_Y36_N28
\LessThan7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = (\Add7~24_combout\) # ((\Add7~30_combout\) # ((\Add7~26_combout\) # (\Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~24_combout\,
	datab => \Add7~30_combout\,
	datac => \Add7~26_combout\,
	datad => \Add7~28_combout\,
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X63_Y36_N26
\LessThan7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (\LessThan7~0_combout\) # ((\LessThan7~1_combout\) # ((\LessThan7~2_combout\) # (\LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \LessThan7~1_combout\,
	datac => \LessThan7~2_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X63_Y36_N0
\exited_car[31]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[31]~32_combout\ = (\Add7~52_combout\) # ((\Add7~50_combout\) # ((\Add7~48_combout\) # (\Add7~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~52_combout\,
	datab => \Add7~50_combout\,
	datac => \Add7~48_combout\,
	datad => \Add7~54_combout\,
	combout => \exited_car[31]~32_combout\);

-- Location: LCCOMB_X63_Y36_N6
\exited_car[31]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[31]~33_combout\ = (\Add7~44_combout\) # ((\exited_car[31]~31_combout\) # ((\LessThan7~4_combout\) # (\exited_car[31]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~44_combout\,
	datab => \exited_car[31]~31_combout\,
	datac => \LessThan7~4_combout\,
	datad => \exited_car[31]~32_combout\,
	combout => \exited_car[31]~33_combout\);

-- Location: LCCOMB_X63_Y36_N16
\exited_car[31]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[31]~34_combout\ = (\Add7~56_combout\) # ((\Add7~58_combout\) # (\exited_car[31]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~56_combout\,
	datac => \Add7~58_combout\,
	datad => \exited_car[31]~33_combout\,
	combout => \exited_car[31]~34_combout\);

-- Location: LCCOMB_X63_Y36_N18
\exited_car[31]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[31]~35_combout\ = (!\is_uni_car_exited~input_o\ & (!\Add7~62_combout\ & ((\Add7~60_combout\) # (\exited_car[31]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_uni_car_exited~input_o\,
	datab => \Add7~60_combout\,
	datac => \Add7~62_combout\,
	datad => \exited_car[31]~34_combout\,
	combout => \exited_car[31]~35_combout\);

-- Location: LCCOMB_X63_Y37_N18
\exited_car[0]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[0]~36_combout\ = exited_car(0) $ (\exited_car[31]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => exited_car(0),
	datad => \exited_car[31]~35_combout\,
	combout => \exited_car[0]~36_combout\);

-- Location: FF_X63_Y37_N19
\exited_car[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(0));

-- Location: LCCOMB_X64_Y39_N4
\exited_car[2]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[2]~39_combout\ = (exited_car(2) & (!\exited_car[1]~38\)) # (!exited_car(2) & ((\exited_car[1]~38\) # (GND)))
-- \exited_car[2]~40\ = CARRY((!\exited_car[1]~38\) # (!exited_car(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(2),
	datad => VCC,
	cin => \exited_car[1]~38\,
	combout => \exited_car[2]~39_combout\,
	cout => \exited_car[2]~40\);

-- Location: FF_X64_Y37_N27
\exited_car[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[2]~39_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(2));

-- Location: LCCOMB_X64_Y39_N6
\exited_car[3]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[3]~41_combout\ = (exited_car(3) & (\exited_car[2]~40\ $ (GND))) # (!exited_car(3) & (!\exited_car[2]~40\ & VCC))
-- \exited_car[3]~42\ = CARRY((exited_car(3) & !\exited_car[2]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(3),
	datad => VCC,
	cin => \exited_car[2]~40\,
	combout => \exited_car[3]~41_combout\,
	cout => \exited_car[3]~42\);

-- Location: FF_X64_Y37_N13
\exited_car[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[3]~41_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(3));

-- Location: LCCOMB_X64_Y39_N8
\exited_car[4]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[4]~43_combout\ = (exited_car(4) & (!\exited_car[3]~42\)) # (!exited_car(4) & ((\exited_car[3]~42\) # (GND)))
-- \exited_car[4]~44\ = CARRY((!\exited_car[3]~42\) # (!exited_car(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(4),
	datad => VCC,
	cin => \exited_car[3]~42\,
	combout => \exited_car[4]~43_combout\,
	cout => \exited_car[4]~44\);

-- Location: FF_X64_Y39_N9
\exited_car[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[4]~43_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(4));

-- Location: LCCOMB_X64_Y39_N10
\exited_car[5]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[5]~45_combout\ = (exited_car(5) & (\exited_car[4]~44\ $ (GND))) # (!exited_car(5) & (!\exited_car[4]~44\ & VCC))
-- \exited_car[5]~46\ = CARRY((exited_car(5) & !\exited_car[4]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(5),
	datad => VCC,
	cin => \exited_car[4]~44\,
	combout => \exited_car[5]~45_combout\,
	cout => \exited_car[5]~46\);

-- Location: FF_X64_Y39_N11
\exited_car[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[5]~45_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(5));

-- Location: LCCOMB_X64_Y39_N12
\exited_car[6]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[6]~47_combout\ = (exited_car(6) & (!\exited_car[5]~46\)) # (!exited_car(6) & ((\exited_car[5]~46\) # (GND)))
-- \exited_car[6]~48\ = CARRY((!\exited_car[5]~46\) # (!exited_car(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(6),
	datad => VCC,
	cin => \exited_car[5]~46\,
	combout => \exited_car[6]~47_combout\,
	cout => \exited_car[6]~48\);

-- Location: FF_X64_Y37_N23
\exited_car[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[6]~47_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(6));

-- Location: LCCOMB_X64_Y39_N14
\exited_car[7]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[7]~49_combout\ = (exited_car(7) & (\exited_car[6]~48\ $ (GND))) # (!exited_car(7) & (!\exited_car[6]~48\ & VCC))
-- \exited_car[7]~50\ = CARRY((exited_car(7) & !\exited_car[6]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(7),
	datad => VCC,
	cin => \exited_car[6]~48\,
	combout => \exited_car[7]~49_combout\,
	cout => \exited_car[7]~50\);

-- Location: FF_X64_Y39_N15
\exited_car[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[7]~49_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(7));

-- Location: LCCOMB_X64_Y39_N16
\exited_car[8]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[8]~51_combout\ = (exited_car(8) & (!\exited_car[7]~50\)) # (!exited_car(8) & ((\exited_car[7]~50\) # (GND)))
-- \exited_car[8]~52\ = CARRY((!\exited_car[7]~50\) # (!exited_car(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(8),
	datad => VCC,
	cin => \exited_car[7]~50\,
	combout => \exited_car[8]~51_combout\,
	cout => \exited_car[8]~52\);

-- Location: FF_X64_Y39_N17
\exited_car[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[8]~51_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(8));

-- Location: LCCOMB_X64_Y39_N18
\exited_car[9]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[9]~53_combout\ = (exited_car(9) & (\exited_car[8]~52\ $ (GND))) # (!exited_car(9) & (!\exited_car[8]~52\ & VCC))
-- \exited_car[9]~54\ = CARRY((exited_car(9) & !\exited_car[8]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(9),
	datad => VCC,
	cin => \exited_car[8]~52\,
	combout => \exited_car[9]~53_combout\,
	cout => \exited_car[9]~54\);

-- Location: FF_X64_Y37_N19
\exited_car[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[9]~53_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(9));

-- Location: LCCOMB_X64_Y39_N20
\exited_car[10]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[10]~55_combout\ = (exited_car(10) & (!\exited_car[9]~54\)) # (!exited_car(10) & ((\exited_car[9]~54\) # (GND)))
-- \exited_car[10]~56\ = CARRY((!\exited_car[9]~54\) # (!exited_car(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(10),
	datad => VCC,
	cin => \exited_car[9]~54\,
	combout => \exited_car[10]~55_combout\,
	cout => \exited_car[10]~56\);

-- Location: FF_X64_Y39_N21
\exited_car[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[10]~55_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(10));

-- Location: LCCOMB_X64_Y39_N22
\exited_car[11]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[11]~57_combout\ = (exited_car(11) & (\exited_car[10]~56\ $ (GND))) # (!exited_car(11) & (!\exited_car[10]~56\ & VCC))
-- \exited_car[11]~58\ = CARRY((exited_car(11) & !\exited_car[10]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(11),
	datad => VCC,
	cin => \exited_car[10]~56\,
	combout => \exited_car[11]~57_combout\,
	cout => \exited_car[11]~58\);

-- Location: LCCOMB_X63_Y37_N20
\exited_car[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[11]~feeder_combout\ = \exited_car[11]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exited_car[11]~57_combout\,
	combout => \exited_car[11]~feeder_combout\);

-- Location: FF_X63_Y37_N21
\exited_car[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[11]~feeder_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(11));

-- Location: LCCOMB_X64_Y39_N24
\exited_car[12]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[12]~59_combout\ = (exited_car(12) & (!\exited_car[11]~58\)) # (!exited_car(12) & ((\exited_car[11]~58\) # (GND)))
-- \exited_car[12]~60\ = CARRY((!\exited_car[11]~58\) # (!exited_car(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(12),
	datad => VCC,
	cin => \exited_car[11]~58\,
	combout => \exited_car[12]~59_combout\,
	cout => \exited_car[12]~60\);

-- Location: FF_X64_Y37_N31
\exited_car[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[12]~59_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(12));

-- Location: LCCOMB_X64_Y39_N26
\exited_car[13]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[13]~61_combout\ = (exited_car(13) & (\exited_car[12]~60\ $ (GND))) # (!exited_car(13) & (!\exited_car[12]~60\ & VCC))
-- \exited_car[13]~62\ = CARRY((exited_car(13) & !\exited_car[12]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(13),
	datad => VCC,
	cin => \exited_car[12]~60\,
	combout => \exited_car[13]~61_combout\,
	cout => \exited_car[13]~62\);

-- Location: FF_X64_Y37_N11
\exited_car[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[13]~61_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(13));

-- Location: LCCOMB_X64_Y39_N28
\exited_car[14]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[14]~63_combout\ = (exited_car(14) & (!\exited_car[13]~62\)) # (!exited_car(14) & ((\exited_car[13]~62\) # (GND)))
-- \exited_car[14]~64\ = CARRY((!\exited_car[13]~62\) # (!exited_car(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(14),
	datad => VCC,
	cin => \exited_car[13]~62\,
	combout => \exited_car[14]~63_combout\,
	cout => \exited_car[14]~64\);

-- Location: FF_X64_Y39_N29
\exited_car[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[14]~63_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(14));

-- Location: LCCOMB_X64_Y39_N30
\exited_car[15]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[15]~65_combout\ = (exited_car(15) & (\exited_car[14]~64\ $ (GND))) # (!exited_car(15) & (!\exited_car[14]~64\ & VCC))
-- \exited_car[15]~66\ = CARRY((exited_car(15) & !\exited_car[14]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(15),
	datad => VCC,
	cin => \exited_car[14]~64\,
	combout => \exited_car[15]~65_combout\,
	cout => \exited_car[15]~66\);

-- Location: FF_X64_Y39_N31
\exited_car[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[15]~65_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(15));

-- Location: LCCOMB_X64_Y38_N0
\exited_car[16]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[16]~67_combout\ = (exited_car(16) & (!\exited_car[15]~66\)) # (!exited_car(16) & ((\exited_car[15]~66\) # (GND)))
-- \exited_car[16]~68\ = CARRY((!\exited_car[15]~66\) # (!exited_car(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(16),
	datad => VCC,
	cin => \exited_car[15]~66\,
	combout => \exited_car[16]~67_combout\,
	cout => \exited_car[16]~68\);

-- Location: FF_X64_Y36_N29
\exited_car[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[16]~67_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(16));

-- Location: LCCOMB_X64_Y38_N2
\exited_car[17]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[17]~69_combout\ = (exited_car(17) & (\exited_car[16]~68\ $ (GND))) # (!exited_car(17) & (!\exited_car[16]~68\ & VCC))
-- \exited_car[17]~70\ = CARRY((exited_car(17) & !\exited_car[16]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(17),
	datad => VCC,
	cin => \exited_car[16]~68\,
	combout => \exited_car[17]~69_combout\,
	cout => \exited_car[17]~70\);

-- Location: FF_X64_Y36_N27
\exited_car[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[17]~69_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(17));

-- Location: LCCOMB_X64_Y38_N4
\exited_car[18]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[18]~71_combout\ = (exited_car(18) & (!\exited_car[17]~70\)) # (!exited_car(18) & ((\exited_car[17]~70\) # (GND)))
-- \exited_car[18]~72\ = CARRY((!\exited_car[17]~70\) # (!exited_car(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(18),
	datad => VCC,
	cin => \exited_car[17]~70\,
	combout => \exited_car[18]~71_combout\,
	cout => \exited_car[18]~72\);

-- Location: FF_X64_Y36_N1
\exited_car[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[18]~71_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(18));

-- Location: LCCOMB_X64_Y38_N6
\exited_car[19]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[19]~73_combout\ = (exited_car(19) & (\exited_car[18]~72\ $ (GND))) # (!exited_car(19) & (!\exited_car[18]~72\ & VCC))
-- \exited_car[19]~74\ = CARRY((exited_car(19) & !\exited_car[18]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(19),
	datad => VCC,
	cin => \exited_car[18]~72\,
	combout => \exited_car[19]~73_combout\,
	cout => \exited_car[19]~74\);

-- Location: FF_X64_Y36_N19
\exited_car[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[19]~73_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(19));

-- Location: LCCOMB_X64_Y38_N8
\exited_car[20]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[20]~75_combout\ = (exited_car(20) & (!\exited_car[19]~74\)) # (!exited_car(20) & ((\exited_car[19]~74\) # (GND)))
-- \exited_car[20]~76\ = CARRY((!\exited_car[19]~74\) # (!exited_car(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(20),
	datad => VCC,
	cin => \exited_car[19]~74\,
	combout => \exited_car[20]~75_combout\,
	cout => \exited_car[20]~76\);

-- Location: LCCOMB_X63_Y36_N24
\exited_car[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[20]~feeder_combout\ = \exited_car[20]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exited_car[20]~75_combout\,
	combout => \exited_car[20]~feeder_combout\);

-- Location: FF_X63_Y36_N25
\exited_car[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[20]~feeder_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(20));

-- Location: LCCOMB_X64_Y38_N10
\exited_car[21]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[21]~77_combout\ = (exited_car(21) & (\exited_car[20]~76\ $ (GND))) # (!exited_car(21) & (!\exited_car[20]~76\ & VCC))
-- \exited_car[21]~78\ = CARRY((exited_car(21) & !\exited_car[20]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(21),
	datad => VCC,
	cin => \exited_car[20]~76\,
	combout => \exited_car[21]~77_combout\,
	cout => \exited_car[21]~78\);

-- Location: FF_X64_Y36_N15
\exited_car[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[21]~77_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(21));

-- Location: LCCOMB_X64_Y38_N12
\exited_car[22]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[22]~79_combout\ = (exited_car(22) & (!\exited_car[21]~78\)) # (!exited_car(22) & ((\exited_car[21]~78\) # (GND)))
-- \exited_car[22]~80\ = CARRY((!\exited_car[21]~78\) # (!exited_car(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(22),
	datad => VCC,
	cin => \exited_car[21]~78\,
	combout => \exited_car[22]~79_combout\,
	cout => \exited_car[22]~80\);

-- Location: FF_X64_Y38_N13
\exited_car[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[22]~79_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(22));

-- Location: LCCOMB_X64_Y38_N14
\exited_car[23]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[23]~81_combout\ = (exited_car(23) & (\exited_car[22]~80\ $ (GND))) # (!exited_car(23) & (!\exited_car[22]~80\ & VCC))
-- \exited_car[23]~82\ = CARRY((exited_car(23) & !\exited_car[22]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(23),
	datad => VCC,
	cin => \exited_car[22]~80\,
	combout => \exited_car[23]~81_combout\,
	cout => \exited_car[23]~82\);

-- Location: FF_X65_Y36_N25
\exited_car[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[23]~81_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(23));

-- Location: LCCOMB_X64_Y38_N16
\exited_car[24]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[24]~83_combout\ = (exited_car(24) & (!\exited_car[23]~82\)) # (!exited_car(24) & ((\exited_car[23]~82\) # (GND)))
-- \exited_car[24]~84\ = CARRY((!\exited_car[23]~82\) # (!exited_car(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(24),
	datad => VCC,
	cin => \exited_car[23]~82\,
	combout => \exited_car[24]~83_combout\,
	cout => \exited_car[24]~84\);

-- Location: FF_X64_Y38_N17
\exited_car[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[24]~83_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(24));

-- Location: LCCOMB_X64_Y38_N18
\exited_car[25]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[25]~85_combout\ = (exited_car(25) & (\exited_car[24]~84\ $ (GND))) # (!exited_car(25) & (!\exited_car[24]~84\ & VCC))
-- \exited_car[25]~86\ = CARRY((exited_car(25) & !\exited_car[24]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(25),
	datad => VCC,
	cin => \exited_car[24]~84\,
	combout => \exited_car[25]~85_combout\,
	cout => \exited_car[25]~86\);

-- Location: LCCOMB_X63_Y36_N22
\exited_car[25]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[25]~feeder_combout\ = \exited_car[25]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exited_car[25]~85_combout\,
	combout => \exited_car[25]~feeder_combout\);

-- Location: FF_X63_Y36_N23
\exited_car[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[25]~feeder_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(25));

-- Location: LCCOMB_X64_Y38_N20
\exited_car[26]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[26]~87_combout\ = (exited_car(26) & (!\exited_car[25]~86\)) # (!exited_car(26) & ((\exited_car[25]~86\) # (GND)))
-- \exited_car[26]~88\ = CARRY((!\exited_car[25]~86\) # (!exited_car(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(26),
	datad => VCC,
	cin => \exited_car[25]~86\,
	combout => \exited_car[26]~87_combout\,
	cout => \exited_car[26]~88\);

-- Location: FF_X64_Y38_N21
\exited_car[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[26]~87_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(26));

-- Location: LCCOMB_X64_Y38_N22
\exited_car[27]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[27]~89_combout\ = (exited_car(27) & (\exited_car[26]~88\ $ (GND))) # (!exited_car(27) & (!\exited_car[26]~88\ & VCC))
-- \exited_car[27]~90\ = CARRY((exited_car(27) & !\exited_car[26]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(27),
	datad => VCC,
	cin => \exited_car[26]~88\,
	combout => \exited_car[27]~89_combout\,
	cout => \exited_car[27]~90\);

-- Location: FF_X64_Y38_N23
\exited_car[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[27]~89_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(27));

-- Location: LCCOMB_X64_Y38_N24
\exited_car[28]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[28]~91_combout\ = (exited_car(28) & (!\exited_car[27]~90\)) # (!exited_car(28) & ((\exited_car[27]~90\) # (GND)))
-- \exited_car[28]~92\ = CARRY((!\exited_car[27]~90\) # (!exited_car(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(28),
	datad => VCC,
	cin => \exited_car[27]~90\,
	combout => \exited_car[28]~91_combout\,
	cout => \exited_car[28]~92\);

-- Location: FF_X64_Y36_N9
\exited_car[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[28]~91_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(28));

-- Location: LCCOMB_X64_Y38_N26
\exited_car[29]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[29]~93_combout\ = (exited_car(29) & (\exited_car[28]~92\ $ (GND))) # (!exited_car(29) & (!\exited_car[28]~92\ & VCC))
-- \exited_car[29]~94\ = CARRY((exited_car(29) & !\exited_car[28]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(29),
	datad => VCC,
	cin => \exited_car[28]~92\,
	combout => \exited_car[29]~93_combout\,
	cout => \exited_car[29]~94\);

-- Location: FF_X64_Y36_N21
\exited_car[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \exited_car[29]~93_combout\,
	sload => VCC,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(29));

-- Location: LCCOMB_X64_Y38_N28
\exited_car[30]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[30]~95_combout\ = (exited_car(30) & (!\exited_car[29]~94\)) # (!exited_car(30) & ((\exited_car[29]~94\) # (GND)))
-- \exited_car[30]~96\ = CARRY((!\exited_car[29]~94\) # (!exited_car(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(30),
	datad => VCC,
	cin => \exited_car[29]~94\,
	combout => \exited_car[30]~95_combout\,
	cout => \exited_car[30]~96\);

-- Location: FF_X64_Y38_N29
\exited_car[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[30]~95_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(30));

-- Location: LCCOMB_X64_Y38_N30
\exited_car[31]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exited_car[31]~97_combout\ = exited_car(31) $ (!\exited_car[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => exited_car(31),
	cin => \exited_car[30]~96\,
	combout => \exited_car[31]~97_combout\);

-- Location: FF_X64_Y38_N31
\exited_car[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \exited_car[31]~97_combout\,
	ena => \exited_car[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => exited_car(31));

-- Location: LCCOMB_X64_Y34_N30
\entered_car[31]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \entered_car[31]~93_combout\ = entered_car(31) $ (!\entered_car[30]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => entered_car(31),
	cin => \entered_car[30]~92\,
	combout => \entered_car[31]~93_combout\);

-- Location: FF_X64_Y34_N31
\entered_car[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \entered_car[31]~93_combout\,
	ena => \entered_car[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entered_car(31));

-- Location: LCCOMB_X64_Y36_N30
\Add7~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = exited_car(31) $ (\Add7~61\ $ (!entered_car(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => exited_car(31),
	datad => entered_car(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: LCCOMB_X65_Y36_N30
\Add4~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = \Add7~62_combout\ $ (\Add4~61\ $ (\Add6~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~62_combout\,
	datad => \Add6~62_combout\,
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: LCCOMB_X66_Y36_N30
\Add5~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = \Add5~59\ $ (!\Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add4~62_combout\,
	cin => \Add5~59\,
	combout => \Add5~60_combout\);

-- Location: LCCOMB_X68_Y37_N0
\LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((\Add4~0_combout\ & !\Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add6~0_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X68_Y37_N2
\LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\Add8~2_combout\ & ((!\LessThan2~1_cout\) # (!\Add5~0_combout\))) # (!\Add8~2_combout\ & (!\Add5~0_combout\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X68_Y37_N4
\LessThan2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\Add8~4_combout\ & (\Add5~2_combout\ & !\LessThan2~3_cout\)) # (!\Add8~4_combout\ & ((\Add5~2_combout\) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X68_Y37_N6
\LessThan2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\Add8~6_combout\ & ((!\LessThan2~5_cout\) # (!\Add5~4_combout\))) # (!\Add8~6_combout\ & (!\Add5~4_combout\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => \Add5~4_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X68_Y37_N8
\LessThan2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\Add5~6_combout\ & ((!\LessThan2~7_cout\) # (!\Add8~8_combout\))) # (!\Add5~6_combout\ & (!\Add8~8_combout\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X68_Y37_N10
\LessThan2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\Add5~8_combout\ & (\Add8~10_combout\ & !\LessThan2~9_cout\)) # (!\Add5~8_combout\ & ((\Add8~10_combout\) # (!\LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X68_Y37_N12
\LessThan2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\Add5~10_combout\ & ((!\LessThan2~11_cout\) # (!\Add8~12_combout\))) # (!\Add5~10_combout\ & (!\Add8~12_combout\ & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \Add8~12_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X68_Y37_N14
\LessThan2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((\Add5~12_combout\ & (\Add8~14_combout\ & !\LessThan2~13_cout\)) # (!\Add5~12_combout\ & ((\Add8~14_combout\) # (!\LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datab => \Add8~14_combout\,
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X68_Y37_N16
\LessThan2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((\Add5~14_combout\ & ((!\LessThan2~15_cout\) # (!\Add8~16_combout\))) # (!\Add5~14_combout\ & (!\Add8~16_combout\ & !\LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~14_combout\,
	datab => \Add8~16_combout\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X68_Y37_N18
\LessThan2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~19_cout\ = CARRY((\Add5~16_combout\ & (\Add8~18_combout\ & !\LessThan2~17_cout\)) # (!\Add5~16_combout\ & ((\Add8~18_combout\) # (!\LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \Add8~18_combout\,
	datad => VCC,
	cin => \LessThan2~17_cout\,
	cout => \LessThan2~19_cout\);

-- Location: LCCOMB_X68_Y37_N20
\LessThan2~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~21_cout\ = CARRY((\Add8~20_combout\ & (\Add5~18_combout\ & !\LessThan2~19_cout\)) # (!\Add8~20_combout\ & ((\Add5~18_combout\) # (!\LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datab => \Add5~18_combout\,
	datad => VCC,
	cin => \LessThan2~19_cout\,
	cout => \LessThan2~21_cout\);

-- Location: LCCOMB_X68_Y37_N22
\LessThan2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~23_cout\ = CARRY((\Add8~22_combout\ & ((!\LessThan2~21_cout\) # (!\Add5~20_combout\))) # (!\Add8~22_combout\ & (!\Add5~20_combout\ & !\LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~22_combout\,
	datab => \Add5~20_combout\,
	datad => VCC,
	cin => \LessThan2~21_cout\,
	cout => \LessThan2~23_cout\);

-- Location: LCCOMB_X68_Y37_N24
\LessThan2~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~25_cout\ = CARRY((\Add8~24_combout\ & (\Add5~22_combout\ & !\LessThan2~23_cout\)) # (!\Add8~24_combout\ & ((\Add5~22_combout\) # (!\LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~24_combout\,
	datab => \Add5~22_combout\,
	datad => VCC,
	cin => \LessThan2~23_cout\,
	cout => \LessThan2~25_cout\);

-- Location: LCCOMB_X68_Y37_N26
\LessThan2~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~27_cout\ = CARRY((\Add5~24_combout\ & (\Add8~26_combout\ & !\LessThan2~25_cout\)) # (!\Add5~24_combout\ & ((\Add8~26_combout\) # (!\LessThan2~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \Add8~26_combout\,
	datad => VCC,
	cin => \LessThan2~25_cout\,
	cout => \LessThan2~27_cout\);

-- Location: LCCOMB_X68_Y37_N28
\LessThan2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~29_cout\ = CARRY((\Add5~26_combout\ & ((!\LessThan2~27_cout\) # (!\Add8~28_combout\))) # (!\Add5~26_combout\ & (!\Add8~28_combout\ & !\LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~26_combout\,
	datab => \Add8~28_combout\,
	datad => VCC,
	cin => \LessThan2~27_cout\,
	cout => \LessThan2~29_cout\);

-- Location: LCCOMB_X68_Y37_N30
\LessThan2~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~31_cout\ = CARRY((\Add5~28_combout\ & (\Add8~30_combout\ & !\LessThan2~29_cout\)) # (!\Add5~28_combout\ & ((\Add8~30_combout\) # (!\LessThan2~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~28_combout\,
	datab => \Add8~30_combout\,
	datad => VCC,
	cin => \LessThan2~29_cout\,
	cout => \LessThan2~31_cout\);

-- Location: LCCOMB_X68_Y36_N0
\LessThan2~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~33_cout\ = CARRY((\Add8~32_combout\ & (\Add5~30_combout\ & !\LessThan2~31_cout\)) # (!\Add8~32_combout\ & ((\Add5~30_combout\) # (!\LessThan2~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~32_combout\,
	datab => \Add5~30_combout\,
	datad => VCC,
	cin => \LessThan2~31_cout\,
	cout => \LessThan2~33_cout\);

-- Location: LCCOMB_X68_Y36_N2
\LessThan2~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~35_cout\ = CARRY((\Add5~32_combout\ & (\Add8~34_combout\ & !\LessThan2~33_cout\)) # (!\Add5~32_combout\ & ((\Add8~34_combout\) # (!\LessThan2~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datab => \Add8~34_combout\,
	datad => VCC,
	cin => \LessThan2~33_cout\,
	cout => \LessThan2~35_cout\);

-- Location: LCCOMB_X68_Y36_N4
\LessThan2~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~37_cout\ = CARRY((\Add8~36_combout\ & (\Add5~34_combout\ & !\LessThan2~35_cout\)) # (!\Add8~36_combout\ & ((\Add5~34_combout\) # (!\LessThan2~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~36_combout\,
	datab => \Add5~34_combout\,
	datad => VCC,
	cin => \LessThan2~35_cout\,
	cout => \LessThan2~37_cout\);

-- Location: LCCOMB_X68_Y36_N6
\LessThan2~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~39_cout\ = CARRY((\Add8~38_combout\ & ((!\LessThan2~37_cout\) # (!\Add5~36_combout\))) # (!\Add8~38_combout\ & (!\Add5~36_combout\ & !\LessThan2~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~38_combout\,
	datab => \Add5~36_combout\,
	datad => VCC,
	cin => \LessThan2~37_cout\,
	cout => \LessThan2~39_cout\);

-- Location: LCCOMB_X68_Y36_N8
\LessThan2~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~41_cout\ = CARRY((\Add5~38_combout\ & ((!\LessThan2~39_cout\) # (!\Add8~40_combout\))) # (!\Add5~38_combout\ & (!\Add8~40_combout\ & !\LessThan2~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~38_combout\,
	datab => \Add8~40_combout\,
	datad => VCC,
	cin => \LessThan2~39_cout\,
	cout => \LessThan2~41_cout\);

-- Location: LCCOMB_X68_Y36_N10
\LessThan2~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~43_cout\ = CARRY((\Add5~40_combout\ & (\Add8~42_combout\ & !\LessThan2~41_cout\)) # (!\Add5~40_combout\ & ((\Add8~42_combout\) # (!\LessThan2~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~40_combout\,
	datab => \Add8~42_combout\,
	datad => VCC,
	cin => \LessThan2~41_cout\,
	cout => \LessThan2~43_cout\);

-- Location: LCCOMB_X68_Y36_N12
\LessThan2~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~45_cout\ = CARRY((\Add5~42_combout\ & ((!\LessThan2~43_cout\) # (!\Add8~44_combout\))) # (!\Add5~42_combout\ & (!\Add8~44_combout\ & !\LessThan2~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~42_combout\,
	datab => \Add8~44_combout\,
	datad => VCC,
	cin => \LessThan2~43_cout\,
	cout => \LessThan2~45_cout\);

-- Location: LCCOMB_X68_Y36_N14
\LessThan2~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~47_cout\ = CARRY((\Add5~44_combout\ & (\Add8~46_combout\ & !\LessThan2~45_cout\)) # (!\Add5~44_combout\ & ((\Add8~46_combout\) # (!\LessThan2~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~44_combout\,
	datab => \Add8~46_combout\,
	datad => VCC,
	cin => \LessThan2~45_cout\,
	cout => \LessThan2~47_cout\);

-- Location: LCCOMB_X68_Y36_N16
\LessThan2~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~49_cout\ = CARRY((\Add5~46_combout\ & ((!\LessThan2~47_cout\) # (!\Add8~48_combout\))) # (!\Add5~46_combout\ & (!\Add8~48_combout\ & !\LessThan2~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~46_combout\,
	datab => \Add8~48_combout\,
	datad => VCC,
	cin => \LessThan2~47_cout\,
	cout => \LessThan2~49_cout\);

-- Location: LCCOMB_X68_Y36_N18
\LessThan2~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~51_cout\ = CARRY((\Add8~50_combout\ & ((!\LessThan2~49_cout\) # (!\Add5~48_combout\))) # (!\Add8~50_combout\ & (!\Add5~48_combout\ & !\LessThan2~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~50_combout\,
	datab => \Add5~48_combout\,
	datad => VCC,
	cin => \LessThan2~49_cout\,
	cout => \LessThan2~51_cout\);

-- Location: LCCOMB_X68_Y36_N20
\LessThan2~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~53_cout\ = CARRY((\Add5~50_combout\ & ((!\LessThan2~51_cout\) # (!\Add8~52_combout\))) # (!\Add5~50_combout\ & (!\Add8~52_combout\ & !\LessThan2~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~50_combout\,
	datab => \Add8~52_combout\,
	datad => VCC,
	cin => \LessThan2~51_cout\,
	cout => \LessThan2~53_cout\);

-- Location: LCCOMB_X68_Y36_N22
\LessThan2~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~55_cout\ = CARRY((\Add5~52_combout\ & (\Add8~54_combout\ & !\LessThan2~53_cout\)) # (!\Add5~52_combout\ & ((\Add8~54_combout\) # (!\LessThan2~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~52_combout\,
	datab => \Add8~54_combout\,
	datad => VCC,
	cin => \LessThan2~53_cout\,
	cout => \LessThan2~55_cout\);

-- Location: LCCOMB_X68_Y36_N24
\LessThan2~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~57_cout\ = CARRY((\Add5~54_combout\ & ((!\LessThan2~55_cout\) # (!\Add8~56_combout\))) # (!\Add5~54_combout\ & (!\Add8~56_combout\ & !\LessThan2~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~54_combout\,
	datab => \Add8~56_combout\,
	datad => VCC,
	cin => \LessThan2~55_cout\,
	cout => \LessThan2~57_cout\);

-- Location: LCCOMB_X68_Y36_N26
\LessThan2~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~59_cout\ = CARRY((\Add5~56_combout\ & (\Add8~58_combout\ & !\LessThan2~57_cout\)) # (!\Add5~56_combout\ & ((\Add8~58_combout\) # (!\LessThan2~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~56_combout\,
	datab => \Add8~58_combout\,
	datad => VCC,
	cin => \LessThan2~57_cout\,
	cout => \LessThan2~59_cout\);

-- Location: LCCOMB_X68_Y36_N28
\LessThan2~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~61_cout\ = CARRY((\Add5~58_combout\ & ((!\LessThan2~59_cout\) # (!\Add8~60_combout\))) # (!\Add5~58_combout\ & (!\Add8~60_combout\ & !\LessThan2~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~58_combout\,
	datab => \Add8~60_combout\,
	datad => VCC,
	cin => \LessThan2~59_cout\,
	cout => \LessThan2~61_cout\);

-- Location: LCCOMB_X68_Y36_N30
\LessThan2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~62_combout\ = (\Add8~62_combout\ & ((\LessThan2~61_cout\) # (!\Add5~60_combout\))) # (!\Add8~62_combout\ & (\LessThan2~61_cout\ & !\Add5~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~62_combout\,
	datad => \Add5~60_combout\,
	cin => \LessThan2~61_cout\,
	combout => \LessThan2~62_combout\);

-- Location: LCCOMB_X69_Y38_N6
\uni_vacated_space~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~31_combout\ = (\LessThan2~62_combout\ & (\Add8~62_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~62_combout\,
	datac => \Add5~60_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~31_combout\);

-- Location: LCCOMB_X68_Y38_N16
\uni_vacated_space~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~29_combout\ = (\LessThan2~62_combout\ & (\Add8~58_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~58_combout\,
	datac => \Add5~56_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~29_combout\);

-- Location: LCCOMB_X68_Y38_N26
\uni_vacated_space~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~30_combout\ = (\LessThan2~62_combout\ & (\Add8~60_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~60_combout\,
	datac => \Add5~58_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~30_combout\);

-- Location: LCCOMB_X68_Y38_N18
\uni_vacated_space~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~28_combout\ = (\LessThan2~62_combout\ & ((\Add8~56_combout\))) # (!\LessThan2~62_combout\ & (\Add5~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~54_combout\,
	datac => \Add8~56_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~28_combout\);

-- Location: LCCOMB_X68_Y38_N12
\LessThan4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~8_combout\ = (\uni_vacated_space~29_combout\) # ((\uni_vacated_space~30_combout\) # (\uni_vacated_space~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uni_vacated_space~29_combout\,
	datac => \uni_vacated_space~30_combout\,
	datad => \uni_vacated_space~28_combout\,
	combout => \LessThan4~8_combout\);

-- Location: LCCOMB_X68_Y38_N10
\uni_vacated_space~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~16_combout\ = (\LessThan2~62_combout\ & ((\Add8~32_combout\))) # (!\LessThan2~62_combout\ & (\Add5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datab => \Add8~32_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~16_combout\);

-- Location: LCCOMB_X68_Y38_N28
\uni_vacated_space~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~19_combout\ = (\LessThan2~62_combout\ & (\Add8~38_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~38_combout\,
	datac => \Add5~36_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~19_combout\);

-- Location: LCCOMB_X68_Y38_N30
\uni_vacated_space~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~18_combout\ = (\LessThan2~62_combout\ & (\Add8~36_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~36_combout\,
	datac => \Add5~34_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~18_combout\);

-- Location: LCCOMB_X68_Y38_N0
\uni_vacated_space~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~17_combout\ = (\LessThan2~62_combout\ & (\Add8~34_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~34_combout\,
	datac => \Add5~32_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~17_combout\);

-- Location: LCCOMB_X68_Y38_N8
\LessThan4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~5_combout\ = (\uni_vacated_space~16_combout\) # ((\uni_vacated_space~19_combout\) # ((\uni_vacated_space~18_combout\) # (\uni_vacated_space~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~16_combout\,
	datab => \uni_vacated_space~19_combout\,
	datac => \uni_vacated_space~18_combout\,
	datad => \uni_vacated_space~17_combout\,
	combout => \LessThan4~5_combout\);

-- Location: LCCOMB_X68_Y38_N22
\uni_vacated_space~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~26_combout\ = (\LessThan2~62_combout\ & (\Add8~52_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~52_combout\,
	datac => \Add5~50_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~26_combout\);

-- Location: LCCOMB_X68_Y38_N2
\uni_vacated_space~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~24_combout\ = (\LessThan2~62_combout\ & (\Add8~48_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~48_combout\,
	datac => \Add5~46_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~24_combout\);

-- Location: LCCOMB_X68_Y38_N4
\uni_vacated_space~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~27_combout\ = (\LessThan2~62_combout\ & (\Add8~54_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~54_combout\,
	datac => \Add5~52_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~27_combout\);

-- Location: LCCOMB_X68_Y38_N24
\uni_vacated_space~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~25_combout\ = (\LessThan2~62_combout\ & (\Add8~50_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~50_combout\,
	datac => \Add5~48_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~25_combout\);

-- Location: LCCOMB_X68_Y38_N14
\LessThan4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~7_combout\ = (\uni_vacated_space~26_combout\) # ((\uni_vacated_space~24_combout\) # ((\uni_vacated_space~27_combout\) # (\uni_vacated_space~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~26_combout\,
	datab => \uni_vacated_space~24_combout\,
	datac => \uni_vacated_space~27_combout\,
	datad => \uni_vacated_space~25_combout\,
	combout => \LessThan4~7_combout\);

-- Location: LCCOMB_X69_Y36_N22
\uni_vacated_space~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~21_combout\ = (\LessThan2~62_combout\ & (\Add8~42_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~42_combout\,
	datac => \Add5~40_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~21_combout\);

-- Location: LCCOMB_X69_Y36_N4
\uni_vacated_space~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~20_combout\ = (\LessThan2~62_combout\ & (\Add8~40_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~40_combout\,
	datac => \Add5~38_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~20_combout\);

-- Location: LCCOMB_X69_Y36_N26
\uni_vacated_space~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~23_combout\ = (\LessThan2~62_combout\ & (\Add8~46_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~46_combout\,
	datac => \Add5~44_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~23_combout\);

-- Location: LCCOMB_X69_Y36_N20
\uni_vacated_space~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~22_combout\ = (\LessThan2~62_combout\ & (\Add8~44_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~44_combout\,
	datac => \Add5~42_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~22_combout\);

-- Location: LCCOMB_X69_Y36_N24
\LessThan4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~6_combout\ = (\uni_vacated_space~21_combout\) # ((\uni_vacated_space~20_combout\) # ((\uni_vacated_space~23_combout\) # (\uni_vacated_space~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~21_combout\,
	datab => \uni_vacated_space~20_combout\,
	datac => \uni_vacated_space~23_combout\,
	datad => \uni_vacated_space~22_combout\,
	combout => \LessThan4~6_combout\);

-- Location: LCCOMB_X68_Y38_N6
\LessThan4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~9_combout\ = (\LessThan4~8_combout\) # ((\LessThan4~5_combout\) # ((\LessThan4~7_combout\) # (\LessThan4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~8_combout\,
	datab => \LessThan4~5_combout\,
	datac => \LessThan4~7_combout\,
	datad => \LessThan4~6_combout\,
	combout => \LessThan4~9_combout\);

-- Location: LCCOMB_X69_Y38_N22
\uni_vacated_space~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~2_combout\ = (\LessThan2~62_combout\ & ((\Add8~4_combout\))) # (!\LessThan2~62_combout\ & (\Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datac => \Add8~4_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~2_combout\);

-- Location: LCCOMB_X69_Y38_N16
\uni_vacated_space~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~1_combout\ = (\LessThan2~62_combout\ & ((\Add8~2_combout\))) # (!\LessThan2~62_combout\ & (\Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~0_combout\,
	datac => \Add8~2_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~1_combout\);

-- Location: LCCOMB_X69_Y38_N4
\uni_vacated_space~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~3_combout\ = (\LessThan2~62_combout\ & (\Add8~6_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => \Add5~4_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~3_combout\);

-- Location: LCCOMB_X69_Y36_N0
\uni_vacated_space~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~0_combout\ = (\LessThan2~62_combout\ & ((\Add6~0_combout\))) # (!\LessThan2~62_combout\ & (\Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~0_combout\,
	datac => \Add6~0_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~0_combout\);

-- Location: LCCOMB_X69_Y38_N24
\LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\uni_vacated_space~2_combout\) # ((\uni_vacated_space~1_combout\) # ((\uni_vacated_space~3_combout\) # (\uni_vacated_space~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~2_combout\,
	datab => \uni_vacated_space~1_combout\,
	datac => \uni_vacated_space~3_combout\,
	datad => \uni_vacated_space~0_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X69_Y38_N10
\uni_vacated_space~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~11_combout\ = (\LessThan2~62_combout\ & (\Add8~22_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~22_combout\,
	datac => \Add5~20_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~11_combout\);

-- Location: LCCOMB_X69_Y38_N0
\uni_vacated_space~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~10_combout\ = (\LessThan2~62_combout\ & (\Add8~20_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datac => \Add5~18_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~10_combout\);

-- Location: LCCOMB_X69_Y38_N30
\uni_vacated_space~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~9_combout\ = (\LessThan2~62_combout\ & (\Add8~18_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~18_combout\,
	datac => \Add5~16_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~9_combout\);

-- Location: LCCOMB_X69_Y37_N0
\uni_vacated_space~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~8_combout\ = (\LessThan2~62_combout\ & ((\Add8~16_combout\))) # (!\LessThan2~62_combout\ & (\Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~14_combout\,
	datac => \Add8~16_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~8_combout\);

-- Location: LCCOMB_X69_Y38_N8
\LessThan4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\uni_vacated_space~11_combout\) # ((\uni_vacated_space~10_combout\) # ((\uni_vacated_space~9_combout\) # (\uni_vacated_space~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~11_combout\,
	datab => \uni_vacated_space~10_combout\,
	datac => \uni_vacated_space~9_combout\,
	datad => \uni_vacated_space~8_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X69_Y38_N12
\uni_vacated_space~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~13_combout\ = (\LessThan2~62_combout\ & (\Add8~26_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~26_combout\,
	datac => \Add5~24_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~13_combout\);

-- Location: LCCOMB_X69_Y36_N14
\uni_vacated_space~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~15_combout\ = (\LessThan2~62_combout\ & (\Add8~30_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~30_combout\,
	datac => \Add5~28_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~15_combout\);

-- Location: LCCOMB_X69_Y36_N12
\uni_vacated_space~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~14_combout\ = (\LessThan2~62_combout\ & (\Add8~28_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~28_combout\,
	datac => \Add5~26_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~14_combout\);

-- Location: LCCOMB_X68_Y38_N20
\uni_vacated_space~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~12_combout\ = (\LessThan2~62_combout\ & (\Add8~24_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~24_combout\,
	datac => \Add5~22_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~12_combout\);

-- Location: LCCOMB_X69_Y38_N14
\LessThan4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (\uni_vacated_space~13_combout\) # ((\uni_vacated_space~15_combout\) # ((\uni_vacated_space~14_combout\) # (\uni_vacated_space~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~13_combout\,
	datab => \uni_vacated_space~15_combout\,
	datac => \uni_vacated_space~14_combout\,
	datad => \uni_vacated_space~12_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X69_Y38_N26
\uni_vacated_space~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~4_combout\ = (\LessThan2~62_combout\ & (\Add8~8_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datac => \Add5~6_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~4_combout\);

-- Location: LCCOMB_X69_Y38_N20
\uni_vacated_space~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~7_combout\ = (\LessThan2~62_combout\ & ((\Add8~14_combout\))) # (!\LessThan2~62_combout\ & (\Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datac => \Add8~14_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~7_combout\);

-- Location: LCCOMB_X69_Y36_N6
\uni_vacated_space~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~5_combout\ = (\LessThan2~62_combout\ & (\Add8~10_combout\)) # (!\LessThan2~62_combout\ & ((\Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~10_combout\,
	datac => \Add5~8_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~5_combout\);

-- Location: LCCOMB_X70_Y38_N4
\uni_vacated_space~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space~6_combout\ = (\LessThan2~62_combout\ & ((\Add8~12_combout\))) # (!\LessThan2~62_combout\ & (\Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datac => \Add8~12_combout\,
	datad => \LessThan2~62_combout\,
	combout => \uni_vacated_space~6_combout\);

-- Location: LCCOMB_X69_Y38_N18
\LessThan4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\uni_vacated_space~4_combout\) # ((\uni_vacated_space~7_combout\) # ((\uni_vacated_space~5_combout\) # (\uni_vacated_space~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~4_combout\,
	datab => \uni_vacated_space~7_combout\,
	datac => \uni_vacated_space~5_combout\,
	datad => \uni_vacated_space~6_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X69_Y38_N28
\LessThan4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = (\LessThan4~0_combout\) # ((\LessThan4~2_combout\) # ((\LessThan4~3_combout\) # (\LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan4~2_combout\,
	datac => \LessThan4~3_combout\,
	datad => \LessThan4~1_combout\,
	combout => \LessThan4~4_combout\);

-- Location: LCCOMB_X69_Y38_N2
\uni_entered_car[31]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[31]~31_combout\ = (!\uni_vacated_space~31_combout\ & (\is_uni_car_entered~input_o\ & ((\LessThan4~9_combout\) # (\LessThan4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space~31_combout\,
	datab => \is_uni_car_entered~input_o\,
	datac => \LessThan4~9_combout\,
	datad => \LessThan4~4_combout\,
	combout => \uni_entered_car[31]~31_combout\);

-- Location: LCCOMB_X68_Y41_N0
\uni_entered_car[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[0]~32_combout\ = uni_entered_car(0) $ (\uni_entered_car[31]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => uni_entered_car(0),
	datad => \uni_entered_car[31]~31_combout\,
	combout => \uni_entered_car[0]~32_combout\);

-- Location: FF_X68_Y41_N1
\uni_entered_car[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(0));

-- Location: LCCOMB_X68_Y41_N2
\uni_entered_car[1]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[1]~33_combout\ = (uni_entered_car(1) & (uni_entered_car(0) $ (VCC))) # (!uni_entered_car(1) & (uni_entered_car(0) & VCC))
-- \uni_entered_car[1]~34\ = CARRY((uni_entered_car(1) & uni_entered_car(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(1),
	datab => uni_entered_car(0),
	datad => VCC,
	combout => \uni_entered_car[1]~33_combout\,
	cout => \uni_entered_car[1]~34\);

-- Location: FF_X68_Y41_N3
\uni_entered_car[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[1]~33_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(1));

-- Location: LCCOMB_X68_Y41_N4
\uni_entered_car[2]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[2]~35_combout\ = (uni_entered_car(2) & (!\uni_entered_car[1]~34\)) # (!uni_entered_car(2) & ((\uni_entered_car[1]~34\) # (GND)))
-- \uni_entered_car[2]~36\ = CARRY((!\uni_entered_car[1]~34\) # (!uni_entered_car(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(2),
	datad => VCC,
	cin => \uni_entered_car[1]~34\,
	combout => \uni_entered_car[2]~35_combout\,
	cout => \uni_entered_car[2]~36\);

-- Location: FF_X68_Y41_N5
\uni_entered_car[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[2]~35_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(2));

-- Location: LCCOMB_X68_Y41_N6
\uni_entered_car[3]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[3]~37_combout\ = (uni_entered_car(3) & (\uni_entered_car[2]~36\ $ (GND))) # (!uni_entered_car(3) & (!\uni_entered_car[2]~36\ & VCC))
-- \uni_entered_car[3]~38\ = CARRY((uni_entered_car(3) & !\uni_entered_car[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(3),
	datad => VCC,
	cin => \uni_entered_car[2]~36\,
	combout => \uni_entered_car[3]~37_combout\,
	cout => \uni_entered_car[3]~38\);

-- Location: FF_X68_Y41_N7
\uni_entered_car[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[3]~37_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(3));

-- Location: LCCOMB_X68_Y41_N8
\uni_entered_car[4]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[4]~39_combout\ = (uni_entered_car(4) & (!\uni_entered_car[3]~38\)) # (!uni_entered_car(4) & ((\uni_entered_car[3]~38\) # (GND)))
-- \uni_entered_car[4]~40\ = CARRY((!\uni_entered_car[3]~38\) # (!uni_entered_car(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(4),
	datad => VCC,
	cin => \uni_entered_car[3]~38\,
	combout => \uni_entered_car[4]~39_combout\,
	cout => \uni_entered_car[4]~40\);

-- Location: FF_X68_Y41_N9
\uni_entered_car[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[4]~39_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(4));

-- Location: LCCOMB_X68_Y41_N10
\uni_entered_car[5]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[5]~41_combout\ = (uni_entered_car(5) & (\uni_entered_car[4]~40\ $ (GND))) # (!uni_entered_car(5) & (!\uni_entered_car[4]~40\ & VCC))
-- \uni_entered_car[5]~42\ = CARRY((uni_entered_car(5) & !\uni_entered_car[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(5),
	datad => VCC,
	cin => \uni_entered_car[4]~40\,
	combout => \uni_entered_car[5]~41_combout\,
	cout => \uni_entered_car[5]~42\);

-- Location: FF_X68_Y41_N11
\uni_entered_car[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[5]~41_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(5));

-- Location: LCCOMB_X68_Y41_N12
\uni_entered_car[6]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[6]~43_combout\ = (uni_entered_car(6) & (!\uni_entered_car[5]~42\)) # (!uni_entered_car(6) & ((\uni_entered_car[5]~42\) # (GND)))
-- \uni_entered_car[6]~44\ = CARRY((!\uni_entered_car[5]~42\) # (!uni_entered_car(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(6),
	datad => VCC,
	cin => \uni_entered_car[5]~42\,
	combout => \uni_entered_car[6]~43_combout\,
	cout => \uni_entered_car[6]~44\);

-- Location: FF_X68_Y41_N13
\uni_entered_car[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[6]~43_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(6));

-- Location: LCCOMB_X68_Y41_N14
\uni_entered_car[7]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[7]~45_combout\ = (uni_entered_car(7) & (\uni_entered_car[6]~44\ $ (GND))) # (!uni_entered_car(7) & (!\uni_entered_car[6]~44\ & VCC))
-- \uni_entered_car[7]~46\ = CARRY((uni_entered_car(7) & !\uni_entered_car[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(7),
	datad => VCC,
	cin => \uni_entered_car[6]~44\,
	combout => \uni_entered_car[7]~45_combout\,
	cout => \uni_entered_car[7]~46\);

-- Location: FF_X68_Y41_N15
\uni_entered_car[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[7]~45_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(7));

-- Location: LCCOMB_X68_Y41_N16
\uni_entered_car[8]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[8]~47_combout\ = (uni_entered_car(8) & (!\uni_entered_car[7]~46\)) # (!uni_entered_car(8) & ((\uni_entered_car[7]~46\) # (GND)))
-- \uni_entered_car[8]~48\ = CARRY((!\uni_entered_car[7]~46\) # (!uni_entered_car(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(8),
	datad => VCC,
	cin => \uni_entered_car[7]~46\,
	combout => \uni_entered_car[8]~47_combout\,
	cout => \uni_entered_car[8]~48\);

-- Location: FF_X68_Y41_N17
\uni_entered_car[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[8]~47_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(8));

-- Location: LCCOMB_X68_Y41_N18
\uni_entered_car[9]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[9]~49_combout\ = (uni_entered_car(9) & (\uni_entered_car[8]~48\ $ (GND))) # (!uni_entered_car(9) & (!\uni_entered_car[8]~48\ & VCC))
-- \uni_entered_car[9]~50\ = CARRY((uni_entered_car(9) & !\uni_entered_car[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(9),
	datad => VCC,
	cin => \uni_entered_car[8]~48\,
	combout => \uni_entered_car[9]~49_combout\,
	cout => \uni_entered_car[9]~50\);

-- Location: FF_X68_Y41_N19
\uni_entered_car[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[9]~49_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(9));

-- Location: LCCOMB_X68_Y41_N20
\uni_entered_car[10]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[10]~51_combout\ = (uni_entered_car(10) & (!\uni_entered_car[9]~50\)) # (!uni_entered_car(10) & ((\uni_entered_car[9]~50\) # (GND)))
-- \uni_entered_car[10]~52\ = CARRY((!\uni_entered_car[9]~50\) # (!uni_entered_car(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(10),
	datad => VCC,
	cin => \uni_entered_car[9]~50\,
	combout => \uni_entered_car[10]~51_combout\,
	cout => \uni_entered_car[10]~52\);

-- Location: FF_X68_Y41_N21
\uni_entered_car[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[10]~51_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(10));

-- Location: LCCOMB_X68_Y41_N22
\uni_entered_car[11]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[11]~53_combout\ = (uni_entered_car(11) & (\uni_entered_car[10]~52\ $ (GND))) # (!uni_entered_car(11) & (!\uni_entered_car[10]~52\ & VCC))
-- \uni_entered_car[11]~54\ = CARRY((uni_entered_car(11) & !\uni_entered_car[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(11),
	datad => VCC,
	cin => \uni_entered_car[10]~52\,
	combout => \uni_entered_car[11]~53_combout\,
	cout => \uni_entered_car[11]~54\);

-- Location: FF_X68_Y41_N23
\uni_entered_car[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[11]~53_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(11));

-- Location: LCCOMB_X68_Y41_N24
\uni_entered_car[12]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[12]~55_combout\ = (uni_entered_car(12) & (!\uni_entered_car[11]~54\)) # (!uni_entered_car(12) & ((\uni_entered_car[11]~54\) # (GND)))
-- \uni_entered_car[12]~56\ = CARRY((!\uni_entered_car[11]~54\) # (!uni_entered_car(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(12),
	datad => VCC,
	cin => \uni_entered_car[11]~54\,
	combout => \uni_entered_car[12]~55_combout\,
	cout => \uni_entered_car[12]~56\);

-- Location: FF_X68_Y41_N25
\uni_entered_car[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[12]~55_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(12));

-- Location: LCCOMB_X68_Y41_N26
\uni_entered_car[13]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[13]~57_combout\ = (uni_entered_car(13) & (\uni_entered_car[12]~56\ $ (GND))) # (!uni_entered_car(13) & (!\uni_entered_car[12]~56\ & VCC))
-- \uni_entered_car[13]~58\ = CARRY((uni_entered_car(13) & !\uni_entered_car[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(13),
	datad => VCC,
	cin => \uni_entered_car[12]~56\,
	combout => \uni_entered_car[13]~57_combout\,
	cout => \uni_entered_car[13]~58\);

-- Location: FF_X68_Y41_N27
\uni_entered_car[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[13]~57_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(13));

-- Location: LCCOMB_X68_Y41_N28
\uni_entered_car[14]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[14]~59_combout\ = (uni_entered_car(14) & (!\uni_entered_car[13]~58\)) # (!uni_entered_car(14) & ((\uni_entered_car[13]~58\) # (GND)))
-- \uni_entered_car[14]~60\ = CARRY((!\uni_entered_car[13]~58\) # (!uni_entered_car(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(14),
	datad => VCC,
	cin => \uni_entered_car[13]~58\,
	combout => \uni_entered_car[14]~59_combout\,
	cout => \uni_entered_car[14]~60\);

-- Location: FF_X68_Y41_N29
\uni_entered_car[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[14]~59_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(14));

-- Location: LCCOMB_X68_Y41_N30
\uni_entered_car[15]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[15]~61_combout\ = (uni_entered_car(15) & (\uni_entered_car[14]~60\ $ (GND))) # (!uni_entered_car(15) & (!\uni_entered_car[14]~60\ & VCC))
-- \uni_entered_car[15]~62\ = CARRY((uni_entered_car(15) & !\uni_entered_car[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(15),
	datad => VCC,
	cin => \uni_entered_car[14]~60\,
	combout => \uni_entered_car[15]~61_combout\,
	cout => \uni_entered_car[15]~62\);

-- Location: FF_X68_Y41_N31
\uni_entered_car[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[15]~61_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(15));

-- Location: LCCOMB_X68_Y40_N0
\uni_entered_car[16]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[16]~63_combout\ = (uni_entered_car(16) & (!\uni_entered_car[15]~62\)) # (!uni_entered_car(16) & ((\uni_entered_car[15]~62\) # (GND)))
-- \uni_entered_car[16]~64\ = CARRY((!\uni_entered_car[15]~62\) # (!uni_entered_car(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(16),
	datad => VCC,
	cin => \uni_entered_car[15]~62\,
	combout => \uni_entered_car[16]~63_combout\,
	cout => \uni_entered_car[16]~64\);

-- Location: FF_X68_Y40_N1
\uni_entered_car[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[16]~63_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(16));

-- Location: LCCOMB_X68_Y40_N2
\uni_entered_car[17]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[17]~65_combout\ = (uni_entered_car(17) & (\uni_entered_car[16]~64\ $ (GND))) # (!uni_entered_car(17) & (!\uni_entered_car[16]~64\ & VCC))
-- \uni_entered_car[17]~66\ = CARRY((uni_entered_car(17) & !\uni_entered_car[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(17),
	datad => VCC,
	cin => \uni_entered_car[16]~64\,
	combout => \uni_entered_car[17]~65_combout\,
	cout => \uni_entered_car[17]~66\);

-- Location: FF_X68_Y40_N3
\uni_entered_car[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[17]~65_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(17));

-- Location: LCCOMB_X68_Y40_N4
\uni_entered_car[18]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[18]~67_combout\ = (uni_entered_car(18) & (!\uni_entered_car[17]~66\)) # (!uni_entered_car(18) & ((\uni_entered_car[17]~66\) # (GND)))
-- \uni_entered_car[18]~68\ = CARRY((!\uni_entered_car[17]~66\) # (!uni_entered_car(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(18),
	datad => VCC,
	cin => \uni_entered_car[17]~66\,
	combout => \uni_entered_car[18]~67_combout\,
	cout => \uni_entered_car[18]~68\);

-- Location: FF_X68_Y40_N5
\uni_entered_car[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[18]~67_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(18));

-- Location: LCCOMB_X68_Y40_N6
\uni_entered_car[19]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[19]~69_combout\ = (uni_entered_car(19) & (\uni_entered_car[18]~68\ $ (GND))) # (!uni_entered_car(19) & (!\uni_entered_car[18]~68\ & VCC))
-- \uni_entered_car[19]~70\ = CARRY((uni_entered_car(19) & !\uni_entered_car[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(19),
	datad => VCC,
	cin => \uni_entered_car[18]~68\,
	combout => \uni_entered_car[19]~69_combout\,
	cout => \uni_entered_car[19]~70\);

-- Location: FF_X68_Y40_N7
\uni_entered_car[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[19]~69_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(19));

-- Location: LCCOMB_X68_Y40_N8
\uni_entered_car[20]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[20]~71_combout\ = (uni_entered_car(20) & (!\uni_entered_car[19]~70\)) # (!uni_entered_car(20) & ((\uni_entered_car[19]~70\) # (GND)))
-- \uni_entered_car[20]~72\ = CARRY((!\uni_entered_car[19]~70\) # (!uni_entered_car(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(20),
	datad => VCC,
	cin => \uni_entered_car[19]~70\,
	combout => \uni_entered_car[20]~71_combout\,
	cout => \uni_entered_car[20]~72\);

-- Location: FF_X68_Y40_N9
\uni_entered_car[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[20]~71_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(20));

-- Location: LCCOMB_X68_Y40_N10
\uni_entered_car[21]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[21]~73_combout\ = (uni_entered_car(21) & (\uni_entered_car[20]~72\ $ (GND))) # (!uni_entered_car(21) & (!\uni_entered_car[20]~72\ & VCC))
-- \uni_entered_car[21]~74\ = CARRY((uni_entered_car(21) & !\uni_entered_car[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(21),
	datad => VCC,
	cin => \uni_entered_car[20]~72\,
	combout => \uni_entered_car[21]~73_combout\,
	cout => \uni_entered_car[21]~74\);

-- Location: FF_X68_Y40_N11
\uni_entered_car[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[21]~73_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(21));

-- Location: LCCOMB_X68_Y40_N12
\uni_entered_car[22]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[22]~75_combout\ = (uni_entered_car(22) & (!\uni_entered_car[21]~74\)) # (!uni_entered_car(22) & ((\uni_entered_car[21]~74\) # (GND)))
-- \uni_entered_car[22]~76\ = CARRY((!\uni_entered_car[21]~74\) # (!uni_entered_car(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(22),
	datad => VCC,
	cin => \uni_entered_car[21]~74\,
	combout => \uni_entered_car[22]~75_combout\,
	cout => \uni_entered_car[22]~76\);

-- Location: FF_X68_Y40_N13
\uni_entered_car[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[22]~75_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(22));

-- Location: LCCOMB_X68_Y40_N14
\uni_entered_car[23]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[23]~77_combout\ = (uni_entered_car(23) & (\uni_entered_car[22]~76\ $ (GND))) # (!uni_entered_car(23) & (!\uni_entered_car[22]~76\ & VCC))
-- \uni_entered_car[23]~78\ = CARRY((uni_entered_car(23) & !\uni_entered_car[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(23),
	datad => VCC,
	cin => \uni_entered_car[22]~76\,
	combout => \uni_entered_car[23]~77_combout\,
	cout => \uni_entered_car[23]~78\);

-- Location: FF_X68_Y40_N15
\uni_entered_car[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[23]~77_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(23));

-- Location: LCCOMB_X68_Y40_N16
\uni_entered_car[24]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[24]~79_combout\ = (uni_entered_car(24) & (!\uni_entered_car[23]~78\)) # (!uni_entered_car(24) & ((\uni_entered_car[23]~78\) # (GND)))
-- \uni_entered_car[24]~80\ = CARRY((!\uni_entered_car[23]~78\) # (!uni_entered_car(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(24),
	datad => VCC,
	cin => \uni_entered_car[23]~78\,
	combout => \uni_entered_car[24]~79_combout\,
	cout => \uni_entered_car[24]~80\);

-- Location: FF_X68_Y40_N17
\uni_entered_car[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[24]~79_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(24));

-- Location: LCCOMB_X68_Y40_N18
\uni_entered_car[25]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[25]~81_combout\ = (uni_entered_car(25) & (\uni_entered_car[24]~80\ $ (GND))) # (!uni_entered_car(25) & (!\uni_entered_car[24]~80\ & VCC))
-- \uni_entered_car[25]~82\ = CARRY((uni_entered_car(25) & !\uni_entered_car[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(25),
	datad => VCC,
	cin => \uni_entered_car[24]~80\,
	combout => \uni_entered_car[25]~81_combout\,
	cout => \uni_entered_car[25]~82\);

-- Location: FF_X68_Y40_N19
\uni_entered_car[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[25]~81_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(25));

-- Location: LCCOMB_X68_Y40_N20
\uni_entered_car[26]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[26]~83_combout\ = (uni_entered_car(26) & (!\uni_entered_car[25]~82\)) # (!uni_entered_car(26) & ((\uni_entered_car[25]~82\) # (GND)))
-- \uni_entered_car[26]~84\ = CARRY((!\uni_entered_car[25]~82\) # (!uni_entered_car(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(26),
	datad => VCC,
	cin => \uni_entered_car[25]~82\,
	combout => \uni_entered_car[26]~83_combout\,
	cout => \uni_entered_car[26]~84\);

-- Location: FF_X68_Y40_N21
\uni_entered_car[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[26]~83_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(26));

-- Location: LCCOMB_X68_Y40_N22
\uni_entered_car[27]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[27]~85_combout\ = (uni_entered_car(27) & (\uni_entered_car[26]~84\ $ (GND))) # (!uni_entered_car(27) & (!\uni_entered_car[26]~84\ & VCC))
-- \uni_entered_car[27]~86\ = CARRY((uni_entered_car(27) & !\uni_entered_car[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(27),
	datad => VCC,
	cin => \uni_entered_car[26]~84\,
	combout => \uni_entered_car[27]~85_combout\,
	cout => \uni_entered_car[27]~86\);

-- Location: FF_X68_Y40_N23
\uni_entered_car[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[27]~85_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(27));

-- Location: LCCOMB_X68_Y40_N24
\uni_entered_car[28]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[28]~87_combout\ = (uni_entered_car(28) & (!\uni_entered_car[27]~86\)) # (!uni_entered_car(28) & ((\uni_entered_car[27]~86\) # (GND)))
-- \uni_entered_car[28]~88\ = CARRY((!\uni_entered_car[27]~86\) # (!uni_entered_car(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => uni_entered_car(28),
	datad => VCC,
	cin => \uni_entered_car[27]~86\,
	combout => \uni_entered_car[28]~87_combout\,
	cout => \uni_entered_car[28]~88\);

-- Location: FF_X68_Y40_N25
\uni_entered_car[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[28]~87_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(28));

-- Location: LCCOMB_X68_Y40_N26
\uni_entered_car[29]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_entered_car[29]~89_combout\ = (uni_entered_car(29) & (\uni_entered_car[28]~88\ $ (GND))) # (!uni_entered_car(29) & (!\uni_entered_car[28]~88\ & VCC))
-- \uni_entered_car[29]~90\ = CARRY((uni_entered_car(29) & !\uni_entered_car[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => uni_entered_car(29),
	datad => VCC,
	cin => \uni_entered_car[28]~88\,
	combout => \uni_entered_car[29]~89_combout\,
	cout => \uni_entered_car[29]~90\);

-- Location: FF_X68_Y40_N27
\uni_entered_car[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[29]~89_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(29));

-- Location: FF_X68_Y40_N29
\uni_entered_car[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \uni_entered_car[30]~91_combout\,
	ena => \uni_entered_car[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_entered_car(30));

-- Location: LCCOMB_X65_Y40_N26
\LessThan6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\Add6~0_combout\) # ((\Add6~4_combout\) # ((\Add6~2_combout\) # (\Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add6~4_combout\,
	datac => \Add6~2_combout\,
	datad => \Add6~6_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X65_Y41_N16
\LessThan6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\Add6~8_combout\) # ((\Add6~10_combout\) # ((\Add6~12_combout\) # (\Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \Add6~10_combout\,
	datac => \Add6~12_combout\,
	datad => \Add6~14_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X65_Y40_N4
\LessThan6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\Add6~16_combout\) # ((\Add6~20_combout\) # ((\Add6~18_combout\) # (\Add6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~16_combout\,
	datab => \Add6~20_combout\,
	datac => \Add6~18_combout\,
	datad => \Add6~22_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X65_Y40_N30
\LessThan6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (\Add6~28_combout\) # ((\Add6~24_combout\) # ((\Add6~30_combout\) # (\Add6~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~28_combout\,
	datab => \Add6~24_combout\,
	datac => \Add6~30_combout\,
	datad => \Add6~26_combout\,
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X65_Y40_N8
\LessThan6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (\LessThan6~0_combout\) # ((\LessThan6~1_combout\) # ((\LessThan6~2_combout\) # (\LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \LessThan6~1_combout\,
	datac => \LessThan6~2_combout\,
	datad => \LessThan6~3_combout\,
	combout => \LessThan6~4_combout\);

-- Location: LCCOMB_X65_Y40_N14
\uni_exited_car[31]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[31]~32_combout\ = (\Add6~48_combout\) # ((\Add6~50_combout\) # ((\Add6~52_combout\) # (\Add6~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~48_combout\,
	datab => \Add6~50_combout\,
	datac => \Add6~52_combout\,
	datad => \Add6~54_combout\,
	combout => \uni_exited_car[31]~32_combout\);

-- Location: LCCOMB_X65_Y40_N22
\LessThan6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~5_combout\ = (\Add6~34_combout\) # ((\Add6~32_combout\) # ((\Add6~36_combout\) # (\Add6~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~34_combout\,
	datab => \Add6~32_combout\,
	datac => \Add6~36_combout\,
	datad => \Add6~38_combout\,
	combout => \LessThan6~5_combout\);

-- Location: LCCOMB_X65_Y40_N24
\uni_exited_car[31]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[31]~31_combout\ = (\Add6~42_combout\) # ((\Add6~40_combout\) # ((\LessThan6~5_combout\) # (\Add6~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~42_combout\,
	datab => \Add6~40_combout\,
	datac => \LessThan6~5_combout\,
	datad => \Add6~46_combout\,
	combout => \uni_exited_car[31]~31_combout\);

-- Location: LCCOMB_X65_Y40_N28
\uni_exited_car[31]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[31]~33_combout\ = (\Add6~44_combout\) # ((\LessThan6~4_combout\) # ((\uni_exited_car[31]~32_combout\) # (\uni_exited_car[31]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~44_combout\,
	datab => \LessThan6~4_combout\,
	datac => \uni_exited_car[31]~32_combout\,
	datad => \uni_exited_car[31]~31_combout\,
	combout => \uni_exited_car[31]~33_combout\);

-- Location: LCCOMB_X65_Y40_N18
\uni_exited_car[31]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[31]~34_combout\ = (\Add6~56_combout\) # ((\Add6~58_combout\) # (\uni_exited_car[31]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~56_combout\,
	datac => \Add6~58_combout\,
	datad => \uni_exited_car[31]~33_combout\,
	combout => \uni_exited_car[31]~34_combout\);

-- Location: LCCOMB_X65_Y40_N0
\uni_exited_car[31]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[31]~35_combout\ = (\is_uni_car_exited~input_o\ & (!\Add6~62_combout\ & ((\Add6~60_combout\) # (\uni_exited_car[31]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_uni_car_exited~input_o\,
	datab => \Add6~60_combout\,
	datac => \Add6~62_combout\,
	datad => \uni_exited_car[31]~34_combout\,
	combout => \uni_exited_car[31]~35_combout\);

-- Location: LCCOMB_X65_Y40_N20
\uni_exited_car[0]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_exited_car[0]~36_combout\ = uni_exited_car(0) $ (\uni_exited_car[31]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => uni_exited_car(0),
	datad => \uni_exited_car[31]~35_combout\,
	combout => \uni_exited_car[0]~36_combout\);

-- Location: FF_X65_Y40_N21
\uni_exited_car[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \uni_exited_car[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_exited_car(0));

-- Location: LCCOMB_X62_Y35_N28
\vacated_space~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~0_combout\ = (\LessThan3~62_combout\ & (\Add7~0_combout\)) # (!\LessThan3~62_combout\ & ((\Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~62_combout\,
	datac => \Add7~0_combout\,
	datad => \Add4~0_combout\,
	combout => \vacated_space~0_combout\);

-- Location: LCCOMB_X62_Y35_N22
\vacated_space~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~1_combout\ = (\LessThan3~62_combout\ & (\Add9~2_combout\)) # (!\LessThan3~62_combout\ & ((\Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~62_combout\,
	datac => \Add9~2_combout\,
	datad => \Add5~0_combout\,
	combout => \vacated_space~1_combout\);

-- Location: LCCOMB_X62_Y35_N24
\vacated_space~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~2_combout\ = (\LessThan3~62_combout\ & ((\Add9~4_combout\))) # (!\LessThan3~62_combout\ & (\Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~2_combout\,
	datac => \LessThan3~62_combout\,
	datad => \Add9~4_combout\,
	combout => \vacated_space~2_combout\);

-- Location: LCCOMB_X62_Y35_N14
\vacated_space~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space~3_combout\ = (\LessThan3~62_combout\ & ((\Add9~6_combout\))) # (!\LessThan3~62_combout\ & (\Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~4_combout\,
	datac => \LessThan3~62_combout\,
	datad => \Add9~6_combout\,
	combout => \vacated_space~3_combout\);

-- Location: LCCOMB_X70_Y42_N0
\LessThan4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~10_combout\ = (!\uni_vacated_space~31_combout\ & ((\LessThan4~4_combout\) # (\LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~4_combout\,
	datac => \LessThan4~9_combout\,
	datad => \uni_vacated_space~31_combout\,
	combout => \LessThan4~10_combout\);

-- Location: LCCOMB_X61_Y34_N24
\LessThan5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~12_combout\ = (!\vacated_space~31_combout\ & ((\LessThan5~11_combout\) # (\LessThan5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~11_combout\,
	datac => \vacated_space~31_combout\,
	datad => \LessThan5~6_combout\,
	combout => \LessThan5~12_combout\);

ww_uni_parked_car(0) <= \uni_parked_car[0]~output_o\;

ww_uni_parked_car(1) <= \uni_parked_car[1]~output_o\;

ww_uni_parked_car(2) <= \uni_parked_car[2]~output_o\;

ww_uni_parked_car(3) <= \uni_parked_car[3]~output_o\;

ww_uni_parked_car(4) <= \uni_parked_car[4]~output_o\;

ww_uni_parked_car(5) <= \uni_parked_car[5]~output_o\;

ww_uni_parked_car(6) <= \uni_parked_car[6]~output_o\;

ww_uni_parked_car(7) <= \uni_parked_car[7]~output_o\;

ww_uni_parked_car(8) <= \uni_parked_car[8]~output_o\;

ww_uni_parked_car(9) <= \uni_parked_car[9]~output_o\;

ww_uni_parked_car(10) <= \uni_parked_car[10]~output_o\;

ww_uni_parked_car(11) <= \uni_parked_car[11]~output_o\;

ww_uni_parked_car(12) <= \uni_parked_car[12]~output_o\;

ww_uni_parked_car(13) <= \uni_parked_car[13]~output_o\;

ww_uni_parked_car(14) <= \uni_parked_car[14]~output_o\;

ww_uni_parked_car(15) <= \uni_parked_car[15]~output_o\;

ww_uni_parked_car(16) <= \uni_parked_car[16]~output_o\;

ww_uni_parked_car(17) <= \uni_parked_car[17]~output_o\;

ww_uni_parked_car(18) <= \uni_parked_car[18]~output_o\;

ww_uni_parked_car(19) <= \uni_parked_car[19]~output_o\;

ww_uni_parked_car(20) <= \uni_parked_car[20]~output_o\;

ww_uni_parked_car(21) <= \uni_parked_car[21]~output_o\;

ww_uni_parked_car(22) <= \uni_parked_car[22]~output_o\;

ww_uni_parked_car(23) <= \uni_parked_car[23]~output_o\;

ww_uni_parked_car(24) <= \uni_parked_car[24]~output_o\;

ww_uni_parked_car(25) <= \uni_parked_car[25]~output_o\;

ww_uni_parked_car(26) <= \uni_parked_car[26]~output_o\;

ww_uni_parked_car(27) <= \uni_parked_car[27]~output_o\;

ww_uni_parked_car(28) <= \uni_parked_car[28]~output_o\;

ww_uni_parked_car(29) <= \uni_parked_car[29]~output_o\;

ww_uni_parked_car(30) <= \uni_parked_car[30]~output_o\;

ww_uni_parked_car(31) <= \uni_parked_car[31]~output_o\;

ww_parked_car(0) <= \parked_car[0]~output_o\;

ww_parked_car(1) <= \parked_car[1]~output_o\;

ww_parked_car(2) <= \parked_car[2]~output_o\;

ww_parked_car(3) <= \parked_car[3]~output_o\;

ww_parked_car(4) <= \parked_car[4]~output_o\;

ww_parked_car(5) <= \parked_car[5]~output_o\;

ww_parked_car(6) <= \parked_car[6]~output_o\;

ww_parked_car(7) <= \parked_car[7]~output_o\;

ww_parked_car(8) <= \parked_car[8]~output_o\;

ww_parked_car(9) <= \parked_car[9]~output_o\;

ww_parked_car(10) <= \parked_car[10]~output_o\;

ww_parked_car(11) <= \parked_car[11]~output_o\;

ww_parked_car(12) <= \parked_car[12]~output_o\;

ww_parked_car(13) <= \parked_car[13]~output_o\;

ww_parked_car(14) <= \parked_car[14]~output_o\;

ww_parked_car(15) <= \parked_car[15]~output_o\;

ww_parked_car(16) <= \parked_car[16]~output_o\;

ww_parked_car(17) <= \parked_car[17]~output_o\;

ww_parked_car(18) <= \parked_car[18]~output_o\;

ww_parked_car(19) <= \parked_car[19]~output_o\;

ww_parked_car(20) <= \parked_car[20]~output_o\;

ww_parked_car(21) <= \parked_car[21]~output_o\;

ww_parked_car(22) <= \parked_car[22]~output_o\;

ww_parked_car(23) <= \parked_car[23]~output_o\;

ww_parked_car(24) <= \parked_car[24]~output_o\;

ww_parked_car(25) <= \parked_car[25]~output_o\;

ww_parked_car(26) <= \parked_car[26]~output_o\;

ww_parked_car(27) <= \parked_car[27]~output_o\;

ww_parked_car(28) <= \parked_car[28]~output_o\;

ww_parked_car(29) <= \parked_car[29]~output_o\;

ww_parked_car(30) <= \parked_car[30]~output_o\;

ww_parked_car(31) <= \parked_car[31]~output_o\;

ww_uni_vacated_space(0) <= \uni_vacated_space[0]~output_o\;

ww_uni_vacated_space(1) <= \uni_vacated_space[1]~output_o\;

ww_uni_vacated_space(2) <= \uni_vacated_space[2]~output_o\;

ww_uni_vacated_space(3) <= \uni_vacated_space[3]~output_o\;

ww_uni_vacated_space(4) <= \uni_vacated_space[4]~output_o\;

ww_uni_vacated_space(5) <= \uni_vacated_space[5]~output_o\;

ww_uni_vacated_space(6) <= \uni_vacated_space[6]~output_o\;

ww_uni_vacated_space(7) <= \uni_vacated_space[7]~output_o\;

ww_uni_vacated_space(8) <= \uni_vacated_space[8]~output_o\;

ww_uni_vacated_space(9) <= \uni_vacated_space[9]~output_o\;

ww_uni_vacated_space(10) <= \uni_vacated_space[10]~output_o\;

ww_uni_vacated_space(11) <= \uni_vacated_space[11]~output_o\;

ww_uni_vacated_space(12) <= \uni_vacated_space[12]~output_o\;

ww_uni_vacated_space(13) <= \uni_vacated_space[13]~output_o\;

ww_uni_vacated_space(14) <= \uni_vacated_space[14]~output_o\;

ww_uni_vacated_space(15) <= \uni_vacated_space[15]~output_o\;

ww_uni_vacated_space(16) <= \uni_vacated_space[16]~output_o\;

ww_uni_vacated_space(17) <= \uni_vacated_space[17]~output_o\;

ww_uni_vacated_space(18) <= \uni_vacated_space[18]~output_o\;

ww_uni_vacated_space(19) <= \uni_vacated_space[19]~output_o\;

ww_uni_vacated_space(20) <= \uni_vacated_space[20]~output_o\;

ww_uni_vacated_space(21) <= \uni_vacated_space[21]~output_o\;

ww_uni_vacated_space(22) <= \uni_vacated_space[22]~output_o\;

ww_uni_vacated_space(23) <= \uni_vacated_space[23]~output_o\;

ww_uni_vacated_space(24) <= \uni_vacated_space[24]~output_o\;

ww_uni_vacated_space(25) <= \uni_vacated_space[25]~output_o\;

ww_uni_vacated_space(26) <= \uni_vacated_space[26]~output_o\;

ww_uni_vacated_space(27) <= \uni_vacated_space[27]~output_o\;

ww_uni_vacated_space(28) <= \uni_vacated_space[28]~output_o\;

ww_uni_vacated_space(29) <= \uni_vacated_space[29]~output_o\;

ww_uni_vacated_space(30) <= \uni_vacated_space[30]~output_o\;

ww_uni_vacated_space(31) <= \uni_vacated_space[31]~output_o\;

ww_vacated_space(0) <= \vacated_space[0]~output_o\;

ww_vacated_space(1) <= \vacated_space[1]~output_o\;

ww_vacated_space(2) <= \vacated_space[2]~output_o\;

ww_vacated_space(3) <= \vacated_space[3]~output_o\;

ww_vacated_space(4) <= \vacated_space[4]~output_o\;

ww_vacated_space(5) <= \vacated_space[5]~output_o\;

ww_vacated_space(6) <= \vacated_space[6]~output_o\;

ww_vacated_space(7) <= \vacated_space[7]~output_o\;

ww_vacated_space(8) <= \vacated_space[8]~output_o\;

ww_vacated_space(9) <= \vacated_space[9]~output_o\;

ww_vacated_space(10) <= \vacated_space[10]~output_o\;

ww_vacated_space(11) <= \vacated_space[11]~output_o\;

ww_vacated_space(12) <= \vacated_space[12]~output_o\;

ww_vacated_space(13) <= \vacated_space[13]~output_o\;

ww_vacated_space(14) <= \vacated_space[14]~output_o\;

ww_vacated_space(15) <= \vacated_space[15]~output_o\;

ww_vacated_space(16) <= \vacated_space[16]~output_o\;

ww_vacated_space(17) <= \vacated_space[17]~output_o\;

ww_vacated_space(18) <= \vacated_space[18]~output_o\;

ww_vacated_space(19) <= \vacated_space[19]~output_o\;

ww_vacated_space(20) <= \vacated_space[20]~output_o\;

ww_vacated_space(21) <= \vacated_space[21]~output_o\;

ww_vacated_space(22) <= \vacated_space[22]~output_o\;

ww_vacated_space(23) <= \vacated_space[23]~output_o\;

ww_vacated_space(24) <= \vacated_space[24]~output_o\;

ww_vacated_space(25) <= \vacated_space[25]~output_o\;

ww_vacated_space(26) <= \vacated_space[26]~output_o\;

ww_vacated_space(27) <= \vacated_space[27]~output_o\;

ww_vacated_space(28) <= \vacated_space[28]~output_o\;

ww_vacated_space(29) <= \vacated_space[29]~output_o\;

ww_vacated_space(30) <= \vacated_space[30]~output_o\;

ww_vacated_space(31) <= \vacated_space[31]~output_o\;

ww_hour(0) <= \hour[0]~output_o\;

ww_hour(1) <= \hour[1]~output_o\;

ww_hour(2) <= \hour[2]~output_o\;

ww_hour(3) <= \hour[3]~output_o\;

ww_hour(4) <= \hour[4]~output_o\;

ww_hour(5) <= \hour[5]~output_o\;

ww_hour(6) <= \hour[6]~output_o\;

ww_hour(7) <= \hour[7]~output_o\;

ww_hour(8) <= \hour[8]~output_o\;

ww_hour(9) <= \hour[9]~output_o\;

ww_hour(10) <= \hour[10]~output_o\;

ww_hour(11) <= \hour[11]~output_o\;

ww_hour(12) <= \hour[12]~output_o\;

ww_hour(13) <= \hour[13]~output_o\;

ww_hour(14) <= \hour[14]~output_o\;

ww_hour(15) <= \hour[15]~output_o\;

ww_hour(16) <= \hour[16]~output_o\;

ww_hour(17) <= \hour[17]~output_o\;

ww_hour(18) <= \hour[18]~output_o\;

ww_hour(19) <= \hour[19]~output_o\;

ww_hour(20) <= \hour[20]~output_o\;

ww_hour(21) <= \hour[21]~output_o\;

ww_hour(22) <= \hour[22]~output_o\;

ww_hour(23) <= \hour[23]~output_o\;

ww_hour(24) <= \hour[24]~output_o\;

ww_hour(25) <= \hour[25]~output_o\;

ww_hour(26) <= \hour[26]~output_o\;

ww_hour(27) <= \hour[27]~output_o\;

ww_hour(28) <= \hour[28]~output_o\;

ww_hour(29) <= \hour[29]~output_o\;

ww_hour(30) <= \hour[30]~output_o\;

ww_hour(31) <= \hour[31]~output_o\;

ww_uni_is_vacated_space <= \uni_is_vacated_space~output_o\;

ww_is_vacated_space <= \is_vacated_space~output_o\;
END structure;


