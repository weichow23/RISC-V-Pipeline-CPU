`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/08 12:10:07
// Design Name: 
// Module Name: FSM_tb_generate
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
module FSM_tb_generate();
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
integer i;
reg [31:0] seq = 32'hD72DBEEF; 
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    in = 0;
    #10 reset = 0; 
    #10 reset = 1; 
    for (i = 31; i >= 0; i = i - 1) begin 
        #10
        in = seq[31];
        seq = seq << 1;
    end
    #20
        $stop(0);
end

endmodule
