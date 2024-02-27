`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/17 17:03:13
// Design Name: 
// Module Name: float_add
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
module float_add(
	input clk, 
	input rst,
	input en,			// en = 1, begin
	input [31:0] A,
	input [31:0] B,
	input [1:0] round_mode,  
	output reg [31:0] result,
	output reg fin		// fin = 1 when finish
);
	//浮点数拆分模块
	wire signedA, signedB;
	wire [7:0] ExpA, ExpB;
	wire [23:0] MantA, MantB;
	assign signedA = A[31];
	assign signedB = B[31];
	assign ExpA = A[30:23];
	assign ExpB = B[30:23];
	assign MantA = {~signedA, A[22:0]};
	assign MantB = {~signedB, B[22:0]};
	//绝对值比较
	wire CompResult;
	wire [7:0] bExpDiff, bExpMax;
	assign CompResult = ExpA >= ExpB;
	assign bExpDiff = ExpA - ExpB;
	assign bExpMax = CompResult ? ExpA : ExpB;
	//对阶
	wire [25:0] newA, newB;
	assign newA = {signedA, signedA, (CompResult ? MantA : MantA[23:0] >> bExpDiff)};
	assign newB = {signedB, signedB, (CompResult ? MantB[23:0] >> bExpDiff : MantB)};
	//加
	wire [25:0] SumMant;	
	assign SumMant = newA + newB;
	//规格化
	reg [25:0] StdSumMant;
	reg [7:0] StdSumExp;
	wire start;
	reg [31:0] last_A, last_B;
	always @(posedge clk) begin
		last_A <= A;
		last_B <= B;
	end
	assign start = (A != last_A) || (B != last_B);
	always @(posedge clk or posedge rst) begin
		if(rst) begin
			StdSumMant <= SumMant;
			StdSumExp <= bExpMax;
			result <= 0;
			fin <= 0;
		end else begin
			if(en) begin
				if(start) 
				begin
					StdSumMant <= SumMant;
					StdSumExp <= bExpMax;
					fin <= 0;
				end
				else if(!start && !fin) 
				begin
					if(StdSumMant[25:24] == 2'b01 || StdSumMant[25:24] == 2'b10) begin
						StdSumMant <= {StdSumMant[25], StdSumMant[25:1]};
						StdSumExp <= StdSumExp + 1;
					end else if(StdSumMant[25:23] == 3'b000 || StdSumMant[25:23] == 3'b111) begin
						StdSumMant <= StdSumMant << 1;
						StdSumExp <= StdSumExp - 1;
					end else begin
						fin <= 1;
						result <= {StdSumMant[25], StdSumExp[7:0], StdSumMant[22:0]};
					end
				end 
			end
		end
	end
	wire [31:0] round_result;
	assign round_result = {StdSumMant[25], StdSumExp[7:0], StdSumMant[22:0]};
	always @(posedge clk or posedge rst) begin
		if(rst) begin
			result <= 0;
		end else begin
			if(en) begin
				case(round_mode)
					2'b00: result <= round_result;
					2'b01: begin
						if(StdSumMant[25:24] == 2'b01) begin
							result <= round_result;
						end else if(StdSumMant[25:24] == 2'b10) begin
							result <= round_result + 1;
						end else begin
							result <= round_result;
						end
					end
					2'b10: begin
						if(StdSumMant[25:24] == 2'b01) begin
							result <= round_result - 1;
						end else if(StdSumMant[25:24] == 2'b10) begin
							result <= round_result;
						end else begin
							result <= round_result;
						end
					end
					2'b11: begin
						if(StdSumMant[25:24] == 2'b01) begin
							result <= round_result - 1;
						end else if(StdSumMant[25:24] == 2'b10) begin
							result <= round_result + 1;
						end else begin
							result <= round_result;
						end
					end
					default: result <= round_result;
				endcase
			end
		end
	end
endmodule