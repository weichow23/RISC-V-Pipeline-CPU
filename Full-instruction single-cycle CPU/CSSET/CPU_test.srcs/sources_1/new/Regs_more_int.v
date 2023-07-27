`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/27 21:07:29
// Design Name: 
// Module Name: regs
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

module Regs_more_int(input clk,
            input rst,
            input [4:0] Rs1_addr, 
            input [4:0] Rs2_addr, 
            input [4:0] Wt_addr, 
            input [31:0]Wt_data, 
            input RegWrite, 
            output [31:0] Rs1_data, 
            output [31:0] Rs2_data,
            output [31:0] x0,
            output [31:0] x1,
            output [31:0] x2,
            output [31:0] x3,
            output [31:0] x4,
            output [31:0] x5,
            output [31:0] x6,
            output [31:0] x7,
            output [31:0] x8,
            output [31:0] x9,
            output [31:0] x10,
            output [31:0] x11,
            output [31:0] x12,
            output [31:0] x13,
            output [31:0] x14,
            output [31:0] x15,
            output [31:0] x16,
            output [31:0] x17,
            output [31:0] x18,
            output [31:0] x19,
            output [31:0] x20,
            output [31:0] x21,
            output [31:0] x22,
            output [31:0] x23,
            output [31:0] x24,
            output [31:0] x25,
            output [31:0] x26,
            output [31:0] x27,
            output [31:0] x28,
            output [31:0] x29,
            output [31:0] x30,
            output [31:0] x31
    );
    reg [31:0] register [1:31];
    integer i;
    assign Rs1_data = (Rs1_addr==0)? 0:register[Rs1_addr];
    assign Rs2_data = (Rs2_addr==0)? 0:register[Rs2_addr];
    always @(posedge clk or posedge rst) begin
        if(rst==1) for(i=1;i<32;i=i+1) register[i]<=0;
        else if((Wt_addr!=0)&&(RegWrite==1))
            register[Wt_addr]<=Wt_data;
    end
    assign x0=register[0];
    assign x1=register[1];
    assign x2=register[2];
    assign x3=register[3];
    assign x4=register[4];
    assign x5=register[5];
    assign x6=register[6];
    assign x7=register[7];
    assign x8=register[8];
    assign x9=register[9];
    assign x10=register[10];
    assign x11=register[11];
    assign x12=register[12];
    assign x13=register[13];
    assign x14=register[14];
    assign x15=register[15];
    assign x16=register[16];
    assign x17=register[17];
    assign x18=register[18];
    assign x19=register[19];
    assign x20=register[20];
    assign x21=register[21];
    assign x22=register[22];
    assign x23=register[23];
    assign x24=register[24];
    assign x25=register[25];
    assign x26=register[26];
    assign x27=register[27];
    assign x28=register[28];
    assign x29=register[29];
    assign x30=register[30];
    assign x31=register[31];
endmodule