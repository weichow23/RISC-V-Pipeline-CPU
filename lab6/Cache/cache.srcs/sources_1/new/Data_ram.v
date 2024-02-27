`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/01 12:16:07
// Design Name: 
// Module Name: Data_ram
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


module Data_ram(
    input clk,  // clock
    input en,  // enable
    input wt, // write enable
    input rst, // reset
    input[6:0] addr, // address
    input[127:0] din, // data in
    output reg[127:0] dout // data out
);
    reg[127:0] cache_data[0:127];
    reg i;
    always @ (posedge clk) begin
        if(en) begin
            if(wt) begin 
                cache_data[addr]<=din; 
            end
            dout<=cache_data[addr];
        end
    end
endmodule
