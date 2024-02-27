`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/08 08:20:28
// Design Name: 
// Module Name: SCPU_ctrl
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


module SCPU_ctrl (
    output reg ALUSrc_B,
    output reg Branch,
    output reg CPU_MIO,
    input wire Fun7,
    output reg Jump,
    input wire MIO_ready,
    output reg MemRW,
    output reg RegWrite,
    output reg [2 : 0] ALU_Control,
    input wire [2 : 0] Fun3,
    output reg [1 : 0] ImmSel,
    output reg [1 : 0] MemtoReg,
    input wire [4 : 0] OPcode
);
    `define CPU_ctrl{ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop}
    wire [3:0] Fun;
    reg [1:0] ALUop;

    always@* begin
        case(OPcode)
            5'b01100:`CPU_ctrl={1'b0,2'b00,1'b1,1'b0,1'b0,1'b0,2'b10}; //ALU
            5'b00100:`CPU_ctrl={1'b1,2'b00,1'b1,1'b0,1'b0,1'b0,2'b11}; //ALU(i)
            5'b00000:`CPU_ctrl={1'b1,2'b01,1'b1,1'b0,1'b0,1'b0,2'b00}; //Load
            5'b01000:`CPU_ctrl={1'b1,2'b00,1'b0,1'b1,1'b0,1'b0,2'b00};//store
            5'b11000:`CPU_ctrl={1'b0,2'b00,1'b0,1'b0,1'b1,1'b0,2'b01};//beq            
            5'b11011:`CPU_ctrl={1'b1,2'b10,1'b1,1'b0,1'b0,1'b1,2'b11};//jal
            default `CPU_ctrl=9'b0;
        endcase
    end
    always@* begin
        case(OPcode)
            5'b01100:ImmSel=2'b00; //ALU
            5'b00100:ImmSel=2'b00; //ALU(i)
            5'b00000:ImmSel=2'b00; //Load
            5'b01000:ImmSel=2'b01;//store
            5'b11000:ImmSel=2'b10;//beq            
            5'b00100:ImmSel=2'b11;//jal
            default ImmSel=2'b00;
        endcase
    end
    assign Fun={Fun3,Fun7};
    always@*begin
        case(ALUop)
            2'b00:ALU_Control=3'b010;
            2'b01:ALU_Control=3'b110;
            2'b10:
                case(Fun)
                    4'b0000:ALU_Control=3'b010;//add
                    4'b0001:ALU_Control=3'b110;//sub
                    4'b1110:ALU_Control=3'b000;//and
                    4'b1100:ALU_Control=3'b001;//or
                    4'b0100:ALU_Control=3'b111;//slt
                    4'b1010:ALU_Control=3'b101;//srl
                    4'b1000:ALU_Control=3'b011;//xor
                    default:ALU_Control=3'bxxx;
                endcase
            2'b11:
                case(Fun3)
                    3'b000:ALU_Control=3'b010;//add
                    3'b010:ALU_Control=3'b111;//slt
                    3'b100:ALU_Control=3'b011;//xor
                    3'b110:ALU_Control=3'b001;//or
                    3'b111:ALU_Control=3'b000;//and
                    3'b101:ALU_Control=3'b101;//srl
                endcase
        endcase
    end
    
    
endmodule
