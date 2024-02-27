`timescale 1ns / 1ps
module forward(
    input RegWrite_out_EXMem,    //访存阶段寄存器写入控�?
    input [4:0]Rd_addr_out_EXMem,//访存阶段寄存器写入地�?
    input RegWrite_out_MemWB,
    input [4:0]Rd_addr_out_MemWB,
    input [4:0]Rs1_addr_ID,      //译码阶段寄存器读取地�?
    input [4:0]Rs2_addr_ID,      //译码阶段寄存器读取地�?
    input Rs1_used,              //Rs1被使�?
    input Rs2_used,              //Rs2被使�?
    output[1:0] A_forward,
    output[1:0] B_forward
    );
    wire wire_A_EXMem,wire_B_EXMem,wire_A_MemWB,wire_B_MemWB;
    assign wire_A_EXMem=(RegWrite_out_EXMem && Rs1_used) && (Rs1_addr_ID != 5'b00000) && (Rd_addr_out_EXMem == Rs1_addr_ID);
    assign wire_B_EXMem=(RegWrite_out_EXMem && Rs2_used) && (Rs2_addr_ID != 5'b00000) && (Rd_addr_out_EXMem == Rs2_addr_ID);
    assign wire_A_MemWB=(RegWrite_out_MemWB && Rs1_used) && (Rs1_addr_ID != 5'b00000) && (Rd_addr_out_MemWB == Rs1_addr_ID) && (!wire_A_EXMem);
    assign wire_B_MemWB=(RegWrite_out_MemWB && Rs2_used) && (Rs2_addr_ID != 5'b00000) && (Rd_addr_out_MemWB == Rs2_addr_ID) && (!wire_B_EXMem);
    assign A_forward=wire_A_EXMem?2'b10:(wire_A_MemWB?2'b01:2'b00);
    assign B_forward=wire_B_EXMem?2'b10:(wire_B_MemWB?2'b01:2'b00);

endmodule