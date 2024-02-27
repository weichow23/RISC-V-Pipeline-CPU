`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/07 15:15:35
// Design Name: 
// Module Name: DataPath
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


module DataPath(
  input ALUSrc_B,
  input Jump,
  input RegWrite,
  input clk,
  input rst,
  input [2:0] ALU_Control,
  output [31:0] ALU_out,
  input Branch,
  input [31:0] Data_in,
  output[31:0] Data_out,
  input [1:0] ImmSel,
  input [1:0] MemtoReg,
  output [31:0] PC_out,
  input [31:0] inst_field
   );
   wire [31:0] PC_now,PC_cal,PC_4,PC_next,PC_in;
   wire [31:0] Imm_out,ALU_res,RegWriteData,Rs1_data,Rs2_data,ALU_B;
   wire zero;
   ImmGen ImmGen1(.ImmSel(ImmSel),.Inst_field(inst_field),.Imm_out(Imm_out));
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
  .s(zero&Branch),    // input wire s
  .o(PC_next)    // output wire [31 : 0] o
  );
     MUX2T1_32_0 mux2_3 (
  .I0(PC_next),  // input wire [31 : 0] I0
  .I1(PC_cal),  // input wire [31 : 0] I1
  .s(Jump),    // input wire s
  .o(PC_in)    // output wire [31 : 0] o
  );
   MUX4T1_32_0 mux4_1 (
  .I0(ALU_res),  // input wire [31 : 0] I0
  .I1(Data_in),  // input wire [31 : 0] I1
  .I2(PC_4),  // input wire [31 : 0] I2
  .I3(PC_4),  // input wire [31 : 0] I3
  .s(MemtoReg),    // input wire [1 : 0] s
  .o(RegWriteData) 
);
    ALU_0 ALU (
  .A(Rs1_data),                          // input wire [31 : 0] A
  .ALU_operation(ALU_Control),  // input wire [2 : 0] ALU_operation
  .B(ALU_B),                          // input wire [31 : 0] B
  .res(ALU_res),                      // output wire [31 : 0] res
  .zero(zero)                    // output wire zero
    );
    Regs_0 Reg (
      .clk(clk),            // input wire clk
      .rst(rst),            // input wire rst
      .Rs1_addr(inst_field[19:15]),  // input wire [4 : 0] Rs1_addr
      .Rs2_addr(inst_field[24:20]),  // input wire [4 : 0] Rs2_addr
      .Wt_addr(inst_field[11:7]),    // input wire [4 : 0] Wt_addr
      .Wt_data(RegWriteData),    // input wire [31 : 0] Wt_data
      .RegWrite(RegWrite),  // input wire RegWrite
      .Rs1_data(Rs1_data),  // output wire [31 : 0] Rs1_data
      .Rs2_data(Rs2_data)  // output wire [31 : 0] Rs2_data
    );
    REG32 PC(.clk(clk),.rst(rst),.CE(1'b1),.D(PC_next),.Q(PC_now));
    assign PC_out=PC_now;
    assign Data_out=Rs2_data;
    assign ALU_out=ALU_res;
endmodule
