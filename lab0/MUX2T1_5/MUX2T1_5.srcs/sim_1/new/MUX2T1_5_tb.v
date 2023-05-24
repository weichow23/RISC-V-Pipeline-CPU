`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/01 18:03:50
// Design Name: 
// Module Name: MUX2T1_5_tb
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
module MUX2T1_5_tb;
    reg[4:0] I0;
    reg[4:0] I1;
    reg s;
    wire[4:0] o;
MUX2T1_5 MUX2T1_5_U(
    .I0(I0),
    .I1(I1),
    .s(s),
    .o(o)
);
    initial begin
        s=0;
        I0=0;
        I1=1;
        forever #50 s=~s;   
    end
    always@(*) begin
        #100
        I0 <= I0+1;
        I1 <= I1+1;
    end     
endmodule