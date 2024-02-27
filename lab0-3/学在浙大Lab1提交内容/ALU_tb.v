`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/06 09:02:44
// Design Name: 
// Module Name: ALU_tb
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
module ALU_tb;
    reg [31:0] A, B;
    reg[3:0] ALU_operation;
	wire[31:0]   res;
	wire zero;

ALU ALU_u(.A(A),.B(B),.ALU_operation(ALU_operation),.res(res),.zero(zero));
    initial 
    begin
        A=32'h85A5A5A5;
        B=32'h800A5A5A;
        ALU_operation =4'd0;
        #100;
        ALU_operation =4'd1;
        #100;
        ALU_operation =4'd2;
        #100;
        ALU_operation =4'd3;
        #100;
        ALU_operation =4'd4;
        #100;
        ALU_operation =4'd5;
        #100;
        B=32'h8;
        ALU_operation =4'd6;
        #100;
        ALU_operation =4'd7;
        #100;
        B=32'h800A5A5A;
        ALU_operation =4'd8;
        #100;
        ALU_operation =4'd9;
        #100;
        ALU_operation =4'd10;
        #100;
    end
endmodule
