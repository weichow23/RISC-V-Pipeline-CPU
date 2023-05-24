// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar  1 20:15:19 2023
// Host        : MAXWELL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/ComputerOrnazation/IP/MUX2T1_5.v
// Design      : MUX2T1_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MUX2T1_5(I0, I1, s, o)
/* synthesis syn_black_box black_box_pad_pin="I0[4:0],I1[4:0],s,o[4:0]" */;
  input [4:0]I0;
  input [4:0]I1;
  input s;
  output [4:0]o;
endmodule
