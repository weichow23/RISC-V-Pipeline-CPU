`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/06 08:12:43
// Design Name: 
// Module Name: ALU
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
module ALU(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [3:0] ALU_operation,
    output wire [31:0] res,
    output wire zero
    );
    reg [31:0] ALU_out;
    always @ (*)
        case(ALU_operation)
            4'd0: ALU_out = A + B;//ADD
            4'd1: ALU_out = A - B;//SUB
            4'd2: ALU_out = A << B[4:0];//SLL (Logical)Data move left and fill '0' in the empty position on the right'
            4'd3: ALU_out = $signed(A) < $signed(B); //SLT (set less than): signed comparison
            4'd4: ALU_out = A < B;//SLTU (set less than unsigned): unsigned comparison
            4'd5: ALU_out = A ^ B;//XOR
            4'd6: ALU_out = A >> B[4:0];//SRL (Logical)Data shift to the right and fill in the left space with '0'
            4'd7: ALU_out = $signed(A) >>> B[4:0];//SRA (Arithmetic)The data is shifted right, while copying the leftmost bit
            4'd8: ALU_out = A | B;//OR
            4'd9: ALU_out = A & B;//AND
            4'd10:ALU_out = ~(A | B);//NOR
        endcase
    assign zero = ~|ALU_out;  //If they are all 0, then zero will be assigned a value of 1 (true)
    assign res = ALU_out;
endmodule
