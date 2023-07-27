`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/21 20:41:19
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
    output reg[31:0]pc,
    output reg[31:0]mcause,
    output reg[31:0]mstatus,
    output reg[31:0]mepc
    );
    wire int;
    assign int=INT|ecall|ill_instr;
    always@(posedge clk or posedge rst)
    begin
        pc<=pc_next;
        if(rst==1'b1) begin
            pc<=32'b0;
            mcause<=32'b0;
            mstatus<=32'b0;
        end
        else begin
            // if(int&&mstatus!={32{1'b1}}) begin mepc<=pc_next;end
            if(INT&&mstatus!={32{1'b1}}&&ill_instr==1'b0&&ecall==1'b0) begin
                pc<=31'h0c;
                mcause<= {1'b1,31'd11};
                mstatus<={32{1'b1}};
                mepc<=pc;
            end
            else if(ill_instr&&mstatus!={32{1'b1}}) begin
                pc<=31'h04;
                mcause<= {1'b0,31'd2};
                mstatus<={32{1'b1}};
                mepc<=pc_next;
            end
            else if(ecall&&mstatus!={32{1'b1}}) begin
                pc<=31'h08;
                mcause<= {1'b0,31'd11};
                mstatus<={32{1'b1}};
                mepc<=pc_next;
            end
            if(mret) begin
                pc <= mepc;
                mcause<=32'b0;
                mstatus<=32'b0;
            end
        end
    end
endmodule
