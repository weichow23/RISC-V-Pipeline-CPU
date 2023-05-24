`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/25 14:48:21
// Design Name: 
// Module Name: tb
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


module tb();
    reg clk;
    reg rst;
    reg signed [31:0] A;
    reg signed [31:0] B;
    reg start;
    //wire sign;
    wire[63:0] res;
    wire finish;
    initial begin
    clk = 0;
    rst = 1;
    A = 0;
    B   = 0;
    start        = 0;
    #100
    rst = 0;
    start = 1;
    A = 32'd2;
    B   = 32'd3;
    #350
    start = 0;
    #350
    start = 1;
    A = 32'd10;
    B   = 32'd8;
    #350
    start = 0;
    #350
    start = 1;
    A = 32'd9;
    B   = 32'd9;
    #350
    start = 0;
    #350
    start = 1;
    A = 32'd50;
    B   = 32'd6;
    #350
    start = 0;
    #350
    start = 1;
    A = 32'd6;
    B   = 32'd60;
    #350
    start = 0;
    #350
    start = 1;
    A = -32'd6;
    B   = 32'd60;
    #350
    start = 0;
    #350
    start = 1;
    A = -32'd6;
    B   = -32'd50;
    #350
    start = 0;
    #350
    start = 1;
    A = 32'd0;
    B = -32'd9;
    #350
    start = 0;
    #350
    start = 1;
    A = -32'd8;
    B = -32'd0;
    #350
    start = 0;
    #350
    start = 1;
    A = 32'd0;
    B = -32'd0;
    #350
    start = 0;
    #350
    start = 1;
    A = -32'd11111111;
    B = -32'd22222222;
    #350
    start = 0;
    #350
    start = 1;
    A = -32'd1;
    B = -32'd2;
    #350
    start = 0;
    #100
    rst =1;
    #4000 $finish();
    end
    
    always #5 clk = ~clk;
    mul32 mul32_u(.clk(clk),.rst(rst),.start(start),.A(A),.B(B),.finish(finish),.res(res));
endmodule