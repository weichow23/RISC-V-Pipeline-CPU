`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/07 14:43:10
// Design Name: 
// Module Name: SCPU
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


module SCPU(
    input wire clk,
    input wire rst,
    input wire MIO_ready,
    input wire[31:0] inst_in,
    input wire[31:0] Data_in,
    output wire CPU_MIO,
    output wire MemRW,
    output wire[31:0] PC_out,
    output wire[31:0] Data_out,
    output wire[31:0] Addr_out
    );
    wire [1:0]ImmSel,MemtoReg;
    wire ALU,Jump,Branch,RegWrite,MemRW,CPU_MIO;
    wire [2:0] ALU_Control;
    SCPU_ctrl_1 SCPU_ctrl(
        .OPcode(inst_in[6:2]),
        .Fun3(inst_in[14:12]),
        .Fun7(inst_in[30]),
        .MIO_ready(MIO_ready),
        .ImmSel(ImmSel),
        .ALUSrc_B(ALU),
        .MemtoReg(MemtoReg),
        .Jump(Jump),
        .Branch(Branch),
        .RegWrite(RegWrite),
        .MemRW(MemRW),
        .ALU_Control(ALU_Control),
        .CPU_MIO(CPU_MIO)
       );
       
    DataPath_0 DataPath (
      .ALUSrc_B(ALU),        // input wire ALUSrc_B
      .Jump(Jump),                // input wire Jump
      .RegWrite(RegWrite),        // input wire RegWrite
      .clk(clk),                  // input wire clk
      .rst(rst),                  // input wire rst
      .ALU_Control(ALU_Control),  // input wire [2 : 0] ALU_Control
      .ALU_out(Addr_out),          // output wire [31 : 0] ALU_out
      .Branch(Branch),            // input wire [0 : 0] Branch
      .Data_in(Data_in),          // input wire [31 : 0] Data_in
      .Data_out(Data_out),        // output wire [31 : 0] Data_out
      .ImmSel(ImmSel),            // input wire [1 : 0] ImmSel
      .MemtoReg(MemtoReg),        // input wire [1 : 0] MemtoReg
      .PC_out(PC_out),            // output wire [31 : 0] PC_out
      .inst_field(inst_in)    // input wire [31 : 0] inst_field
    );
endmodule
