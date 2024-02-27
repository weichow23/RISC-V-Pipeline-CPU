`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/16 10:30:25
// Design Name: 
// Module Name: SCPU_tb
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


module SCPU_tb();
    reg clk;
    reg rst;
    CPU_test u(
    .clk(clk),
    .rst(rst)
    );
    always #10 clk=~clk;
    initial begin
    clk=0;
    rst=1;
    #5
    rst=0;
    end
endmodule
