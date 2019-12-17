// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Dec 17 14:27:38 2019
// Host        : GrispenB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Bart/Documents/GitHub/Embedded_Operating_Systems/Embedded_Operating_Systems/MiniZED_VIO_HC_SR04/MiniZED_AXI_HC_SR04.srcs/sources_1/bd/matrix/ip/matrix_HC_SR04_0_0/matrix_HC_SR04_0_0_stub.v
// Design      : matrix_HC_SR04_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "HC_SR04,Vivado 2019.1" *)
module matrix_HC_SR04_0_0(clk, sonar_trig, sonar_echo, centimeter)
/* synthesis syn_black_box black_box_pad_pin="clk,sonar_trig,sonar_echo,centimeter[15:0]" */;
  input clk;
  output sonar_trig;
  input sonar_echo;
  output [15:0]centimeter;
endmodule