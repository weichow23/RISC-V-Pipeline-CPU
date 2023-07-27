`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 00:22:48
// Design Name: 
// Module Name: Datapath_more
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Datapath_more_int(
  input ALUSrc_B,
  input [1:0]Jump,
  input RegWrite,
  input clk,
  input rst,
  input INT0,
  input ecall,
  input mret,
  input ill_instr,
  input [3:0] ALU_Control,
  output [31:0] ALU_out,
  input Branch,
  input BranchN,
  input [31:0] Data_in,
  output[31:0] Data_out,
  input [2:0] ImmSel,
  input [1:0] MemtoReg,
  output [31:0] PC_out,
  input [31:0] inst_field,
  output [31:0]x0,
  output [31:0]x1,
  output [31:0]x2,
  output [31:0]x3,
  output [31:0]x4,
  output [31:0]x5,
  output [31:0]x6,
  output [31:0]x7,
  output [31:0]x8,
  output [31:0]x9,
  output [31:0]x10,
  output [31:0]x11,
  output [31:0]x12,
  output [31:0]x13,
  output [31:0]x14,
  output [31:0]x15,
  output [31:0]x16,
  output [31:0]x17,
  output [31:0]x18,
  output [31:0]x19,
  output [31:0]x20,
  output [31:0]x21,
  output [31:0]x22,
  output [31:0]x23,
  output [31:0]x24,
  output [31:0]x25,
  output [31:0]x26,
  output [31:0]x27,
  output [31:0]x28,
  output [31:0]x29,
  output [31:0]x30,
  output [31:0]x31
   );
   wire [31:0] PC_now,PC_cal,PC_4,PC_next,PC_branch,PC_in;
   wire [31:0] Imm_out,ALU_res,RegWriteData,Rs1_data,Rs2_data,ALU_B;
   wire zero;
   ImmGen_0 ImmGen1(.ImmSel(ImmSel),.Inst_field(inst_field),.Imm_out(Imm_out));
   assign PC_4=PC_now+4;
   assign PC_cal=PC_now+Imm_out;
   
   MUX2T1_32_0 mux2_1 (
  .I0(Rs2_data),  // input wire [31 : 0] I0
  .I1(Imm_out),  // input wire [31 : 0] I1
  .s(ALUSrc_B),    // input wire s
  .o(ALU_B)    // output wire [31 : 0] o
  );
   MUX2T1_32_0 mux2_2 (
  .I0(PC_4),  // input wire [31 : 0] I0
  .I1(PC_cal),  // input wire [31 : 0] I1
  .s((zero&Branch)|(~zero&BranchN)),    // input wire s
  .o(PC_next)    // output wire [31 : 0] o
  );
   MUX4T1_32_0 mux4_2 (
  .I0(PC_next),  // input wire [31 : 0] I0
  .I1(PC_cal),  // input wire [31 : 0] I1
  .I2(ALU_res),  // input wire [31 : 0] I2
  .I3(PC_next),  // input wire [31 : 0] I3
  .s(Jump),    // input wire [1 : 0] s
  .o(PC_in) 
    );
   MUX4T1_32_0 mux4_1 (
  .I0(ALU_res),  // input wire [31 : 0] I0
  .I1(Data_in),  // input wire [31 : 0] I1
  .I2(PC_4),  // input wire [31 : 0] I2
  .I3(Imm_out),  // input wire [31 : 0] I3
  .s(MemtoReg),    // input wire [1 : 0] s
  .o(RegWriteData) 
    );
    ALU_0 ALU (
      .A(Rs1_data),                          // input wire [31 : 0] A
      .ALUop(ALU_Control),  // input wire [2 : 0] ALU_operation
      .B(ALU_B),                          // input wire [31 : 0] B
      .res(ALU_res),                      // output wire [31 : 0] res
      .zero(zero)                    // output wire zero
    );
    Regs_1 Reg (
      .clk(clk),            // input wire clk
      .rst(rst),            // input wire rst
      .Rs1_addr(inst_field[19:15]),  // input wire [4 : 0] Rs1_addr
      .Rs2_addr(inst_field[24:20]),  // input wire [4 : 0] Rs2_addr
      .Wt_addr(inst_field[11:7]),    // input wire [4 : 0] Wt_addr
      .Wt_data(RegWriteData),    // input wire [31 : 0] Wt_data
      .RegWrite(RegWrite),  // input wire RegWrite
      .Rs1_data(Rs1_data),  // output wire [31 : 0] Rs1_data
      .Rs2_data(Rs2_data),  // output wire [31 : 0] Rs2_data
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
      .x31(x31)
    );
    Rv_int_0 your_instance_name (
      .clk(clk),              // input wire clk
      .rst(rst),              // input wire rst
      .INT(INT0),              // input wire INT
      .ecall(ecall),          // input wire ecall
      .mret(mret),            // input wire mret
      .ill_instr(ill_instr),  // input wire ill_instr
      .pc_next(pc_next),      // input wire [31 : 0] pc_next
      .pc(pc_in)                // output wire [31 : 0] pc
    );
    REG32 PC(.clk(clk),.rst(rst),.CE(1'b1),.D(PC_in),.Q(PC_now));
    assign PC_out=PC_now;
    assign Data_out=Rs2_data;
    assign ALU_out=ALU_res;
endmodule