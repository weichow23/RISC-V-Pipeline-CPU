// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Mar 21 03:38:43 2023
// Host        : LAPTOP-H0UE0F8B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/RISC_V_my/lab/lab04/CPU_test/CPU_test.srcs/sources_1/ip/SCPU_more_0/SCPU_more_0_stub.v
// Design      : SCPU_more_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SCPU_more,Vivado 2019.2" *)
module SCPU_more_0(clk, rst, MIO_ready, inst_in, Data_in, CPU_MIO, 
  MemRW, PC_out, Data_out, Addr_out, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, 
  x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,MIO_ready,inst_in[31:0],Data_in[31:0],CPU_MIO,MemRW,PC_out[31:0],Data_out[31:0],Addr_out[31:0],x0[31:0],x1[31:0],x2[31:0],x3[31:0],x4[31:0],x5[31:0],x6[31:0],x7[31:0],x8[31:0],x9[31:0],x10[31:0],x11[31:0],x12[31:0],x13[31:0],x14[31:0],x15[31:0],x16[31:0],x17[31:0],x18[31:0],x19[31:0],x20[31:0],x21[31:0],x22[31:0],x23[31:0],x24[31:0],x25[31:0],x26[31:0],x27[31:0],x28[31:0],x29[31:0],x30[31:0],x31[31:0]" */;
  input clk;
  input rst;
  input MIO_ready;
  input [31:0]inst_in;
  input [31:0]Data_in;
  output CPU_MIO;
  output MemRW;
  output [31:0]PC_out;
  output [31:0]Data_out;
  output [31:0]Addr_out;
  output [31:0]x0;
  output [31:0]x1;
  output [31:0]x2;
  output [31:0]x3;
  output [31:0]x4;
  output [31:0]x5;
  output [31:0]x6;
  output [31:0]x7;
  output [31:0]x8;
  output [31:0]x9;
  output [31:0]x10;
  output [31:0]x11;
  output [31:0]x12;
  output [31:0]x13;
  output [31:0]x14;
  output [31:0]x15;
  output [31:0]x16;
  output [31:0]x17;
  output [31:0]x18;
  output [31:0]x19;
  output [31:0]x20;
  output [31:0]x21;
  output [31:0]x22;
  output [31:0]x23;
  output [31:0]x24;
  output [31:0]x25;
  output [31:0]x26;
  output [31:0]x27;
  output [31:0]x28;
  output [31:0]x29;
  output [31:0]x30;
  output [31:0]x31;
endmodule
