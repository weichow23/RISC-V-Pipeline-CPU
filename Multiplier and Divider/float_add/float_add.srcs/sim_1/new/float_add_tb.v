`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 17:04:44
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


module tb;
	// Inputs
	reg clk;
	reg rst;
	reg [31:0] A;
	reg [31:0] B;
	reg en;
	reg [2:0] round_mode; 
	// Outputs
	wire [31:0] result;
	wire fin;
	// Instantiate the Unit Under Test 
	float_add add (
		.clk(clk), 
		.rst(rst), 
		.A(A), 
		.B(B), 
		.en(en), 
		.round_mode(round_mode),
		.result(result), 
		.fin(fin)
	);
	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		round_mode = 2'b00; 
		A = 32'hc0000000; 
        B = 32'hc0000000; 
        en = 0;
		#20;
		rst = 0; 
		A = 32'hc0a00000; //-5.0
		B = 32'hc0900000; //-4.5
		en = 1;           // c1180000 (-9.5)
		#180;		
		rst = 1;
		#40;
		rst = 0;
		A = 32'h40a00000; //+5.0
		B = 32'h40900000; //+4.5          
		en = 1; //41180000 (+9.5)     h3f800000  1.0   1.0+1.0=2.0
		#180;
        en = 0;
		#40;
		rst = 0;
		A = 32'h3f800000; //+1.0
		B = 32'h3f800000; //+1.0           
		en = 1;           //2.0     
		#180;
        en = 0;
		#40;
		rst = 0;
		A = 32'h3eaaaaaa; //+0.33333333333333333
		B = 32'h3eaaaaaa; //+0.33333333333333333
		en = 1; 
		#100;
		round_mode = 2'b01; 
		#50;
		rst = 1;
		#100;
		rst = 0;
		round_mode = 2'b10;
		#100;
		round_mode = 2'b11;       
		#180;
        en = 0;
		#300;           
			$stop();
	end
endmodule

