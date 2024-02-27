`timescale 1ns / 1ps
module ImmGen(
    input [31:0] Inst_field,
    input [2:0] ImmSel,
    output reg[31:0] Imm_out
    );
    always@(*)begin
        case(ImmSel)
        3'b001:Imm_out={{20{Inst_field[31]}},Inst_field[31:20]};
        3'b010:Imm_out={{20{Inst_field[31]}},Inst_field[31:25],Inst_field[11:7]};
        3'b011:Imm_out={{19{Inst_field[31]}},Inst_field[31],Inst_field[7],Inst_field[30:25],Inst_field[11:8],1'b0};
        3'b100:Imm_out={{12{Inst_field[31]}},Inst_field[19:12],Inst_field[20],Inst_field[30:21],1'b0};
        3'b000:Imm_out={Inst_field[31:12],12'b000000000000};
        3'b101:Imm_out={{27{Inst_field[24]}},Inst_field[24:20]};
        endcase
    end
endmodule