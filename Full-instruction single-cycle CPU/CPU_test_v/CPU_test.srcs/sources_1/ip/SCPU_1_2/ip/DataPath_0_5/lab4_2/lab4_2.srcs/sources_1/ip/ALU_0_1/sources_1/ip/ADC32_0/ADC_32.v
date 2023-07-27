`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/27 20:50:16
// Design Name: 
// Module Name: ADC_32
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


module ADC32(input [31:0] A, 
		     input [31:0] B, 
		     input C0,		//C0=1¼õ·¨
		     output [32:0] S	//S[32]½øÎ»
		    );
    assign S = C0 ? A-B : A+B;
endmodule
