// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Mar 16 10:19:59 2023
// Host        : LAPTOP-H0UE0F8B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/RISC_V_my/lab/lab04/CPU_test/CPU_test.srcs/sources_1/ip/SCPU_0_2/SCPU_0_stub.v
// Design      : SCPU_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SCPU,Vivado 2019.2" *)
module SCPU_0(clk, rst, MIO_ready, inst_in, Data_in, CPU_MIO, 
  MemRW, PC_out, Data_out, Addr_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,MIO_ready,inst_in[31:0],Data_in[31:0],CPU_MIO,MemRW,PC_out[31:0],Data_out[31:0],Addr_out[31:0]" */;
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
endmodule
