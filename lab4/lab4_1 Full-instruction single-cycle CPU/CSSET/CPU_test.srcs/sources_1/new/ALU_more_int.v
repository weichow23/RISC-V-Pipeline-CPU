`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/20 23:37:56
// Design Name: 
// Module Name: ALU_more
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


module ALU_more_int(
    input signed [31:0] A,
    input signed [31:0] B,
    input [3:0] ALUop,
    output reg [31:0] res,
    output zero
    );
    wire [31:0] unsigned_A;
    wire [31:0] unsigned_B;
    assign unsigned_A=A;
    assign unsigned_B=B;
    always @* begin
        case(ALUop)
            4'b0010:res=A+B; //add
            4'b0110:res=A-B; //sub
            4'b1110:res=A<<B;//sll
            4'b0111:res=A<B; //slt
            4'b1001:res=unsigned_A<unsigned_B;//sltu
            4'b1100:res=A^B;  //xor;
            4'b1101:res=A>>B;//srl
            4'b1111:res=A>>>B;//sra
            4'b0001:res=A|B; //or
            4'b0000:res=A&B; //and
        endcase
    end
    assign zero=(res==32'b0)?1'b1:1'b0;
endmodule