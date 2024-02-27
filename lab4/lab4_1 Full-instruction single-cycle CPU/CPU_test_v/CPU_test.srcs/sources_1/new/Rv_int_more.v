`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 20:41:19
// Design Name: 
// Module Name: Rv_int
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


module Rv_int_more(
    input clk,
    input rst,
    input INT,
    input ecall,
    input mret,
    input ill_instr,
    input [31:0] pc_next,
    output reg[31:0]pc
    );
    reg [31:0] mepc;
    wire int;
    assign int=INT|ecall|ill_instr;
    always@(posedge clk or posedge rst)
    begin
        pc<=pc_next;
        if(rst==1'b1) pc<=32'b0;
        else begin
            if(int) mepc<=pc_next;
            if(INT) pc<=31'h0c;
            else if(ecall) pc<=31'h08;
            else if(ill_instr) pc<=31'h04;
            if(mret) pc <= mepc;
        end
    end
endmodule
