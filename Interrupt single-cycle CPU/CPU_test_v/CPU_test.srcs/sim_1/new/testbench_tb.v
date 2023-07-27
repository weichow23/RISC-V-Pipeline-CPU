`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/02 12:43:58
// Design Name: 
// Module Name: testbench_tb
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


module testbench_tb();

    reg clk;
    reg rst;
    reg INT;

    testbench m0(.clk(clk), .rst(rst),.INT(INT));

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        INT = 1'b0;
        #5
        rst = 1'b0;
        #2200
        INT = 1'b1;
        #50
        INT = 1'b0;
        #200
        INT = 1'b1;
        #50
        INT = 1'b0;
        #750
        INT = 1'b1;
        #50
        INT = 1'b0;
    end
    always #50 clk = ~clk;

endmodule

