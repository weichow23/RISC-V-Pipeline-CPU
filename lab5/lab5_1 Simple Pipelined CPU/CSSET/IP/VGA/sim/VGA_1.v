// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:VGA:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module VGA_1 (
  clk_25m,
  clk_100m,
  rst,
  PC_IF,
  inst_IF,
  PC_ID,
  inst_ID,
  IFID_valid,
  PC_Ex,
  IDEX_inst,
  IDEX_valid,
  IDEX_rd,
  IDEX_rs1,
  IDEX_rs2,
  IDEX_rs1_val,
  IDEX_rs2_val,
  IDEX_reg_wen,
  IDEX_is_imm,
  IDEX_imm,
  MemRW_Ex,
  IDEX_mem_ren,
  IDEX_is_branch,
  IDEX_is_jal,
  IDEX_is_auipc,
  IDEX_is_lui,
  IDEX_ALU_ctrl,
  EXMA_pc,
  EXMA_inst,
  EXMA_valid,
  EXMA_rd,
  EXMA_reg_wen,
  Data_out,
  Addr_out,
  MemRW_Mem,
  EXMA_Mem_ren,
  EXMA_is_jal,
  MAWB_pc,
  MAWB_inst,
  MAWB_valid,
  MAWB_rd,
  MAWB_reg_wen,
  Data_out_WB,
  x0,
  x1,
  x2,
  x3,
  x4,
  x5,
  x6,
  x7,
  x8,
  x9,
  x10,
  x11,
  x12,
  x13,
  x14,
  x15,
  x16,
  x17,
  x18,
  x19,
  x20,
  x21,
  x22,
  x23,
  x24,
  x25,
  x26,
  x27,
  x28,
  x29,
  x30,
  x31,
  hs,
  vs,
  vga_r,
  vga_g,
  vga_b
);

input wire clk_25m;
input wire clk_100m;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [31 : 0] PC_IF;
input wire [31 : 0] inst_IF;
input wire [31 : 0] PC_ID;
input wire [31 : 0] inst_ID;
input wire IFID_valid;
input wire [31 : 0] PC_Ex;
input wire [31 : 0] IDEX_inst;
input wire IDEX_valid;
input wire [4 : 0] IDEX_rd;
input wire [4 : 0] IDEX_rs1;
input wire [4 : 0] IDEX_rs2;
input wire [31 : 0] IDEX_rs1_val;
input wire [31 : 0] IDEX_rs2_val;
input wire IDEX_reg_wen;
input wire IDEX_is_imm;
input wire [31 : 0] IDEX_imm;
input wire MemRW_Ex;
input wire IDEX_mem_ren;
input wire IDEX_is_branch;
input wire IDEX_is_jal;
input wire IDEX_is_auipc;
input wire IDEX_is_lui;
input wire [3 : 0] IDEX_ALU_ctrl;
input wire [31 : 0] EXMA_pc;
input wire [31 : 0] EXMA_inst;
input wire EXMA_valid;
input wire [4 : 0] EXMA_rd;
input wire EXMA_reg_wen;
input wire [31 : 0] Data_out;
input wire [31 : 0] Addr_out;
input wire MemRW_Mem;
input wire EXMA_Mem_ren;
input wire EXMA_is_jal;
input wire [31 : 0] MAWB_pc;
input wire [31 : 0] MAWB_inst;
input wire MAWB_valid;
input wire [4 : 0] MAWB_rd;
input wire MAWB_reg_wen;
input wire [31 : 0] Data_out_WB;
input wire [31 : 0] x0;
input wire [31 : 0] x1;
input wire [31 : 0] x2;
input wire [31 : 0] x3;
input wire [31 : 0] x4;
input wire [31 : 0] x5;
input wire [31 : 0] x6;
input wire [31 : 0] x7;
input wire [31 : 0] x8;
input wire [31 : 0] x9;
input wire [31 : 0] x10;
input wire [31 : 0] x11;
input wire [31 : 0] x12;
input wire [31 : 0] x13;
input wire [31 : 0] x14;
input wire [31 : 0] x15;
input wire [31 : 0] x16;
input wire [31 : 0] x17;
input wire [31 : 0] x18;
input wire [31 : 0] x19;
input wire [31 : 0] x20;
input wire [31 : 0] x21;
input wire [31 : 0] x22;
input wire [31 : 0] x23;
input wire [31 : 0] x24;
input wire [31 : 0] x25;
input wire [31 : 0] x26;
input wire [31 : 0] x27;
input wire [31 : 0] x28;
input wire [31 : 0] x29;
input wire [31 : 0] x30;
input wire [31 : 0] x31;
output wire hs;
output wire vs;
output wire [3 : 0] vga_r;
output wire [3 : 0] vga_g;
output wire [3 : 0] vga_b;

  VGA inst (
    .clk_25m(clk_25m),
    .clk_100m(clk_100m),
    .rst(rst),
    .PC_IF(PC_IF),
    .inst_IF(inst_IF),
    .PC_ID(PC_ID),
    .inst_ID(inst_ID),
    .IFID_valid(IFID_valid),
    .PC_Ex(PC_Ex),
    .IDEX_inst(IDEX_inst),
    .IDEX_valid(IDEX_valid),
    .IDEX_rd(IDEX_rd),
    .IDEX_rs1(IDEX_rs1),
    .IDEX_rs2(IDEX_rs2),
    .IDEX_rs1_val(IDEX_rs1_val),
    .IDEX_rs2_val(IDEX_rs2_val),
    .IDEX_reg_wen(IDEX_reg_wen),
    .IDEX_is_imm(IDEX_is_imm),
    .IDEX_imm(IDEX_imm),
    .MemRW_Ex(MemRW_Ex),
    .IDEX_mem_ren(IDEX_mem_ren),
    .IDEX_is_branch(IDEX_is_branch),
    .IDEX_is_jal(IDEX_is_jal),
    .IDEX_is_auipc(IDEX_is_auipc),
    .IDEX_is_lui(IDEX_is_lui),
    .IDEX_ALU_ctrl(IDEX_ALU_ctrl),
    .EXMA_pc(EXMA_pc),
    .EXMA_inst(EXMA_inst),
    .EXMA_valid(EXMA_valid),
    .EXMA_rd(EXMA_rd),
    .EXMA_reg_wen(EXMA_reg_wen),
    .Data_out(Data_out),
    .Addr_out(Addr_out),
    .MemRW_Mem(MemRW_Mem),
    .EXMA_Mem_ren(EXMA_Mem_ren),
    .EXMA_is_jal(EXMA_is_jal),
    .MAWB_pc(MAWB_pc),
    .MAWB_inst(MAWB_inst),
    .MAWB_valid(MAWB_valid),
    .MAWB_rd(MAWB_rd),
    .MAWB_reg_wen(MAWB_reg_wen),
    .Data_out_WB(Data_out_WB),
    .x0(x0),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .x4(x4),
    .x5(x5),
    .x6(x6),
    .x7(x7),
    .x8(x8),
    .x9(x9),
    .x10(x10),
    .x11(x11),
    .x12(x12),
    .x13(x13),
    .x14(x14),
    .x15(x15),
    .x16(x16),
    .x17(x17),
    .x18(x18),
    .x19(x19),
    .x20(x20),
    .x21(x21),
    .x22(x22),
    .x23(x23),
    .x24(x24),
    .x25(x25),
    .x26(x26),
    .x27(x27),
    .x28(x28),
    .x29(x29),
    .x30(x30),
    .x31(x31),
    .hs(hs),
    .vs(vs),
    .vga_r(vga_r),
    .vga_g(vga_g),
    .vga_b(vga_b)
  );
endmodule
