`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/07 21:25:28
// Design Name: 
// Module Name: REG32
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


module REG32(
    input clk,
    input rst,
    input [31:0] D,
    input CE,
    output reg [31:0] Q
    );
    always@(posedge clk or posedge rst) begin
        if(rst==1) Q<=32'b0;
        else if(CE) Q<=D;
    end
endmodule
