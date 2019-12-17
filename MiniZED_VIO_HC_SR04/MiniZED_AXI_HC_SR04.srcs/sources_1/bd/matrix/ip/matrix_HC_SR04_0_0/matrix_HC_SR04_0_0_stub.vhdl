-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Dec 17 14:27:38 2019
-- Host        : GrispenB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Bart/Documents/GitHub/Embedded_Operating_Systems/Embedded_Operating_Systems/MiniZED_VIO_HC_SR04/MiniZED_AXI_HC_SR04.srcs/sources_1/bd/matrix/ip/matrix_HC_SR04_0_0/matrix_HC_SR04_0_0_stub.vhdl
-- Design      : matrix_HC_SR04_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity matrix_HC_SR04_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    sonar_trig : out STD_LOGIC;
    sonar_echo : in STD_LOGIC;
    centimeter : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end matrix_HC_SR04_0_0;

architecture stub of matrix_HC_SR04_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,sonar_trig,sonar_echo,centimeter[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "HC_SR04,Vivado 2019.1";
begin
end;
