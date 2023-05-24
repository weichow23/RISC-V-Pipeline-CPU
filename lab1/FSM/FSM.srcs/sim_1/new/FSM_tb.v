`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/08 11:53:17
// Design Name: 
// Module Name: FSM_tb
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
//1110010
module FSM_tb();
    reg clk;
	reg reset;
	reg in;
	wire out;

seq seq_u1(
    .clk(clk),
	.reset(reset),
	.in(in),
	.out(out)
);
always #20 clk = ~clk;

initial
begin
	clk = 0;
	reset = 0;
	#20 reset = 1;
end
	
//01110111100101
initial
    begin
    in = 0;
	#30
	in = 1;
	#40
    in = 1;
	#40
	in = 1;
	#40
	in = 0;
	#40
	in = 1;
	#40
	in = 1;
	#40
	in = 1;
	#40
	in = 1;
	#40
	in = 0;
	#40
	in = 0;
	#40
	in = 1;
	#40
	in = 0;
	#40
	in = 1;
	#40
        $stop(0);
end

endmodule