`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/05 14:51:58
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb(

    );
    reg clk;
    reg [31:0] DataIn;
    wire [31:0] DataOut;
    reg [31:0] Addr;
    
    always #10 clk=~clk;
    initial begin
    Addr=0;
    clk=0;
    #50
    Addr=32'h0000_0008;
    end
    RAM_B_0 RAM_B (
      .clka(~clk),    // input wire clka
      .wea(1'b0),      // input wire [0 : 0] wea
      .addra(Addr[11:2]),  // input wire [9 : 0] addra
      .dina(DataIn),    // input wire [31 : 0] dina
      .douta(DataOut)  // output wire [31 : 0] douta
    );
endmodule
