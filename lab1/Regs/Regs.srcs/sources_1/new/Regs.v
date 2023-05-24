`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/06 15:04:23
// Design Name: 
// Module Name: Regs
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
module Regs(
    input clk,
    input rst,
    input [4:0] Rs1_addr, 
    input [4:0] Rs2_addr, 
    input [4:0] Wt_addr, 
    input [31:0]Wt_data, 
    input RegWrite, 
    output [31:0] Rs1_data, 
    output [31:0] Rs2_data,
    output [31:0] Reg00,
    output [31:0] Reg01,
    output [31:0] Reg02,
    output [31:0] Reg03,
    output [31:0] Reg04,
    output [31:0] Reg05,
    output [31:0] Reg06,
    output [31:0] Reg07,
    output [31:0] Reg08,
    output [31:0] Reg09,
    output [31:0] Reg10,
    output [31:0] Reg11,
    output [31:0] Reg12,
    output [31:0] Reg13,
    output [31:0] Reg14,
    output [31:0] Reg15,
    output [31:0] Reg16,
    output [31:0] Reg17,
    output [31:0] Reg18,
    output [31:0] Reg19,
    output [31:0] Reg20,
    output [31:0] Reg21,
    output [31:0] Reg22,
    output [31:0] Reg23,
    output [31:0] Reg24,
    output [31:0] Reg25,
    output [31:0] Reg26,
    output [31:0] Reg27,
    output [31:0] Reg28,
    output [31:0] Reg29,
    output [31:0] Reg30,
    output [31:0] Reg31
);
reg[31:0] Reg[1:32];
integer i;
assign Rs1_data = (Rs1_addr == 0) ? 0 : Reg[Rs1_addr];
assign Rs2_data = (Rs2_addr == 0) ? 0 : Reg[Rs2_addr];
always @(posedge clk) 
    begin
    if (rst) begin
        for (i=1;i<=32;i=i+1)  Reg[i]<=0;
        end 
    else if ((Wt_addr != 0) && RegWrite) begin
        Reg[Wt_addr] <= Wt_data;
        end
    end
assign Reg00=Reg[1];
assign Reg01=Reg[2];
assign Reg02=Reg[3];
assign Reg03=Reg[4];
assign Reg04=Reg[5];
assign Reg05=Reg[6];
assign Reg06=Reg[7];
assign Reg07=Reg[8];
assign Reg08=Reg[9];
assign Reg09=Reg[10];
assign Reg10=Reg[11];
assign Reg11=Reg[12];
assign Reg12=Reg[13];
assign Reg13=Reg[14];
assign Reg14=Reg[15];
assign Reg15=Reg[16];
assign Reg16=Reg[17];
assign Reg17=Reg[18];
assign Reg18=Reg[19];
assign Reg19=Reg[20];
assign Reg20=Reg[21];
assign Reg21=Reg[22];
assign Reg22=Reg[23];
assign Reg23=Reg[24];
assign Reg24=Reg[25];
assign Reg25=Reg[26];
assign Reg26=Reg[27];
assign Reg27=Reg[28];
assign Reg28=Reg[29];
assign Reg29=Reg[30];
assign Reg30=Reg[31];
assign Reg31=Reg[32];
endmodule