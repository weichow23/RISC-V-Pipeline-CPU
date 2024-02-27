`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/06 15:31:24
// Design Name: 
// Module Name: Regs_tb
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
module Regs_tb;
    reg clk;
	reg rst;
	reg [4:0] Rs1_addr; 
	reg [4:0] Rs2_addr; 
	reg [4:0] Wt_addr; 
	reg [31:0]Wt_data; 
	reg RegWrite; 
	wire [31:0] Rs1_data; 
	wire [31:0] Rs2_data;
    wire [31:0] Reg00;
    wire [31:0] Reg01;
    wire [31:0] Reg02;
Regs Regs_U(
    .clk(clk),
    .rst(rst),
    .Rs1_addr(Rs1_addr),
    .Rs2_addr(Rs2_addr),
    .Wt_addr(Wt_addr),
    .Wt_data(Wt_data),
    .RegWrite(RegWrite),
    .Rs1_data(Rs1_data),
    .Rs2_data(Rs2_data),
    .Reg00(Reg00),
    .Reg01(Reg01),
    .Reg02(Reg02)
);

always #10 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    RegWrite = 0;
    Wt_data = 0;
    Wt_addr = 0;
    Rs1_addr = 0;
    Rs2_addr = 0;
    #100
    rst = 0;
    RegWrite = 1;
    Wt_addr = 5'b00001;
    Wt_data = 32'haaaaaaaa;
    #50
    Wt_addr = 5'b00010;
    Wt_data = 32'hbbbbbbbb;
    #50
    RegWrite =0; 
    Wt_addr = 5'b00000;
    Wt_data = 32'hcccccccc;
    #50
    RegWrite = 1;
    #50
    Wt_addr = 5'b00011;
    Rs1_addr = 5'b00001;
    Rs2_addr = 5'b00010;
    #50
    rst = 1;
    #50
    Rs1_addr = 5'b00001;
    Rs2_addr = 5'b00010;    
    #100 
        $stop(0);
end
endmodule