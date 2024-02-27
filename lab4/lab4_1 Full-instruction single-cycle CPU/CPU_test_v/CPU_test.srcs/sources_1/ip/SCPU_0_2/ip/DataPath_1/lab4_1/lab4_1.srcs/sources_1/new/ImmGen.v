`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/07 21:28:56
// Design Name: 
// Module Name: ImmGen
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


module ImmGen(
    input [31:0] Inst_field,
    input [1:0] ImmSel,
    output reg[31:0] Imm_out
    );
    always@(*)begin
        case(ImmSel)
        2'b00:Imm_out={{20{Inst_field[31]}},Inst_field[31:20]};
        2'b01:Imm_out={{20{Inst_field[31]}},Inst_field[31:25],Inst_field[11:7]};
        2'b10:Imm_out={{19{Inst_field[31]}},Inst_field[31],Inst_field[7],Inst_field[30:25],Inst_field[11:8],1'b0};
        2'b11:Imm_out={{11{Inst_field[31]}},Inst_field[20],Inst_field[19:12],Inst_field[20],Inst_field[30:21],1'b0};
        endcase
    end
    
    
endmodule
