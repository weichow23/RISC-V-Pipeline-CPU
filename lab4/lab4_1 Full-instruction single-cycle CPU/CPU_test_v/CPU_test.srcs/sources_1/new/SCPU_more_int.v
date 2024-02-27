`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 03:23:20
// Design Name: 
// Module Name: SCPU_more
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


module SCPU_more_int(
    input wire clk,
    input wire rst,
    input wire INT0,
    input wire MIO_ready,
    input wire[31:0] inst_in,
    input wire[31:0] Data_in,
    output wire CPU_MIO,
    //output wire MemRW,
    output wire [3:0] MemRW,
    output wire[31:0] PC_out,
    output [31:0] Data_out,
    
    output wire[31:0] Addr_out,
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
    output [31:0]x31,
    
    output [4:0] rs1,
    output [4:0] rs2,
    output [4:0] rd,
    output [31:0] reg_i_data,
    output [31:0] rs1_val,
    output [31:0] rs2_val,
    
    output reg_wen,
    output is_imm,
    output is_lui,
    
    output [31:0] a_val,
    output [31:0] b_val,
    output [31:0] alu_res,
    output [3:0] alu_ctrl
    );
    wire [1:0]MemtoReg,Jump;
    wire [2:0]ImmSel;
    wire ALU,Branch,BranchN,Auipc,RegWrite;
    wire ecall,mret,ill_instr,Byte,Half,Sign_Load;
    wire [3:0] ALU_Control;
    wire [31:0] ALU_res;
    SCPU_ctrl_more_int SCPU_ctrl(
        .OPcode(inst_in[6:2]),
        .Fun_ecall(inst_in[22:20]),
        .Fun_mret(inst_in[29:28]),
        .Fun3(inst_in[14:12]),
        .Fun7(inst_in[30]),
        .MIO_ready(MIO_ready),
        .ImmSel(ImmSel),
        .ALUSrc_B(ALU),
        .MemtoReg(MemtoReg),
        .Jump(Jump),
        .Auipc(Auipc),
        .Byte(Byte),
        .Half(Half),
        .ALU_res(ALU_res),  


        .Sign_Load(Sign_Load),
        .Branch(Branch),
        .BranchN(BranchN),
        .RegWrite(RegWrite),
        .MemRW(MemRW),
        .ALU_Control(ALU_Control),
        .CPU_MIO(CPU_MIO),
        .ecall(ecall),
        .mret(mret),
        .ill_instr(ill_instr)
      );

    Datapath_more_int DataPath (
      .ALUSrc_B(ALU),        // input wire ALUSrc_B
      .Jump(Jump),                // input wire Jump
      .RegWrite(RegWrite),        // input wire RegWrite
      .clk(clk),                  // input wire clk
      .rst(rst),                  // input wire rst
      .ALU_Control(ALU_Control),  // input wire [2 : 0] ALU_Control
      .ALU_out(Addr_out),          // output wire [31 : 0] ALU_out
      .Branch(Branch),            // input wire [0 : 0] Branch
      .BranchN(BranchN),
      .Auipc(Auipc),
      .Byte(Byte),
      .Half(Half),
      .Sign_Load(Sign_Load),
      .ALU_res(ALU_res), 

      .Data_in(Data_in),          // input wire [31 : 0] Data_in
      .Data_out(Data_out),        // output wire [31 : 0] Data_out
      .ImmSel(ImmSel),            // input wire [1 : 0] ImmSel
      .MemtoReg(MemtoReg),        // input wire [1 : 0] MemtoReg
      .PC_out(PC_out),            // output wire [31 : 0] PC_out
      .inst_field(inst_in),    // input wire [31 : 0] inst_field
      .ecall(ecall),
      .mret(mret),
      .ill_instr(ill_instr),
      .INT0(INT0),
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
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.rs1_val(rs1_val),
		.rs2_val(rs2_val),
		.reg_i_data(reg_i_data),
		.a_val(a_val),
		.b_val(b_val),
		.alu_res(alu_res)
    );
    assign is_imm=ALU;
    assign reg_wen=RegWrite;
    assign is_lui=ImmSel==3'b000;
    assign alu_ctrl=ALU_Control;
endmodule