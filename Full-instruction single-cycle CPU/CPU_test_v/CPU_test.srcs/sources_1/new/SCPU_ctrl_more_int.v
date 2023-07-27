`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 01:03:19
// Design Name: 
// Module Name: SCPU_ctrl_more
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


module SCPU_ctrl_more_int (
    output reg ALUSrc_B,
    output reg Branch,
    output reg BranchN,
    output reg CPU_MIO,

    output reg Auipc,
    output reg Byte,
    output reg Half,
    output reg Sign_Load,

    input wire Fun7,
    output reg [1 : 0]Jump,
    input wire MIO_ready,

    //output reg MemRW,
    output reg [3:0] MemRW,
    input [31:0] ALU_res,

    output reg RegWrite,
    output reg [3 : 0] ALU_Control,
    input wire [2 : 0] Fun3,
    input wire [2 : 0] Fun_ecall,
    input wire [1 : 0] Fun_mret,
    output reg [2 : 0] ImmSel,
    output reg [1 : 0] MemtoReg,
    input wire [4 : 0] OPcode,
    output reg ecall,
    output reg mret,
    output reg ill_instr
);
    `define CPU_ctrl{ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,Auipc,ALUop,Byte,Half,Sign_Load}
    `define CPU_int {ecall,mret,ill_instr}
    wire [3:0] Fun;
    reg [1:0] ALUop;
    
    always@* begin
        `CPU_int=3'b000;
        case(OPcode)
            5'b01100:`CPU_ctrl={1'b0,2'b00,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b10,1'b0,1'b0,1'b0}; //ALU
            5'b00100:`CPU_ctrl={1'b1,2'b00,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b11,1'b0,1'b0,1'b0}; //ALU(i)
            5'b00000:begin
                case(Fun3)
                    3'b000:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b1,1'b0,1'b1}; //lb
                    3'b001:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b1,1'b1}; //lh
                    3'b010:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b0,1'b0}; //Load lw
                    3'b100:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b1,1'b0,1'b0}; //lbu
                    3'b101:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b1,1'b0}; //lhu
                endcase
            end
            5'b01000:begin
                case(Fun3)
                    3'b000:begin  //sb
                        `CPU_ctrl={1'b1,2'b00,1'b0,4'b1111,1'b0,1'b0,2'b00,1'b0,2'b00,1'b1,1'b0,1'b0};//sb
                        case(ALU_res[1:0])
                            2'b00:MemRW=4'b0001;
                            2'b01:MemRW=4'b0010;
                            2'b10:MemRW=4'b0100;
                            2'b11:MemRW=4'b1000;
                            default:MemRW=4'b1111;
                        endcase
                    end
                    3'b001:begin  //sh
                        `CPU_ctrl={1'b1,2'b00,1'b0,4'b1111,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b1,1'b0};//sh
                        case(ALU_res[1:0])
                            2'b00:MemRW=4'b0011;
                            2'b01:MemRW=4'b0110;
                            2'b10:MemRW=4'b1100;
                            default:MemRW=4'b1111;
                        endcase
                    end
                    3'b010:begin
                        `CPU_ctrl={1'b1,2'b00,1'b0,4'b1111,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b0,1'b0};//sw
                        MemRW=4'b1111;
                    end
                endcase
            end
            5'b11000:begin
                case(Fun3)
                    3'b000:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b1,1'b0,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//beq
                    3'b001:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b0,1'b1,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bne
                    3'b100:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b0,1'b1,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//blt  branchN
                    3'b101:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b1,1'b0,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bge  branch
                    3'b110:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b0,1'b1,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bltu branchN
                    3'b111:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b1,1'b0,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bgeu branch
                    default:begin
                        `CPU_ctrl =18'b0;
                        `CPU_int =3'b001;
                    end
                endcase
            end        
            5'b11011:`CPU_ctrl={1'b1,2'b10,1'b1,4'b0000,1'b0,1'b0,2'b01,1'b0,2'b11,1'b0,1'b0,1'b0};//jal
            5'b11001:`CPU_ctrl={1'b1,2'b10,1'b1,4'b0000,1'b0,1'b0,2'b10,1'b0,2'b00,1'b0,1'b0,1'b0};//jalr
            5'b01101:`CPU_ctrl={1'b0,2'b11,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b0,1'b0};//lui
            5'b00101:`CPU_ctrl={1'b1,2'b00,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b1,2'b00,1'b0,1'b0,1'b0};//auipc
            5'b11100:begin
                if(Fun_ecall==3'b000)begin
                    `CPU_ctrl=18'b0;
                    `CPU_int=3'b100;
                end
                else if(Fun_mret==2'b11 && Fun_ecall==3'b010) begin
                    `CPU_int=3'b010;
                end
            end
            default:begin
                `CPU_ctrl =18'b0;
                `CPU_int =3'b001;
            end
        endcase
    end
    // ImmSel
    always@* begin
        case(OPcode)
            5'b01100:ImmSel=3'b001; //ALU
            5'b00100: begin //ALU(i)
                case(Fun3)
	                3'b001:ImmSel=3'b101;
                    3'b101:ImmSel=3'b101;
	                default:ImmSel=3'b001;
	            endcase
                end
            5'b00000:ImmSel=3'b001; //Load lw
            5'b01000:ImmSel=3'b010;//store
            5'b11000:ImmSel=3'b011;//beq,bne            
            5'b11011:ImmSel=3'b100;//jal
            5'b11001:ImmSel=3'b001;//jalr
            5'b01101:ImmSel=3'b000;//lui
            5'b00101:ImmSel=3'b000;//auipc
            default ImmSel=3'b000;
        endcase
    end
    assign Fun={Fun3,Fun7};
    always@*begin
        case(ALUop)
            2'b00:ALU_Control=4'b0010;//add sw
            2'b01:
                case(Fun3)
                    3'b000:ALU_Control=4'b0110;//sub:beq
                    3'b001:ALU_Control=4'b0110;//sub:bne
                    3'b100:ALU_Control=4'b0111;//slt:blt  
                    3'b101:ALU_Control=4'b0111;//slt:bge  
                    3'b110:ALU_Control=4'b1001;//sltu:bltu
                    3'b111:ALU_Control=4'b1001;//sltu:bgeu
                endcase
            2'b10:
                case(Fun)
                    4'b0000:ALU_Control=4'b0010;//add
                    4'b0001:ALU_Control=4'b0110;//sub
                    4'b1110:ALU_Control=4'b0000;//and
                    4'b1100:ALU_Control=4'b0001;//or
                    4'b0100:ALU_Control=4'b0111;//slt
                    4'b1010:ALU_Control=4'b1101;//srl
                    4'b1000:ALU_Control=4'b1100;//xor
                    4'b0010:ALU_Control=4'b1110;//sll
                    4'b0110:ALU_Control=4'b1001;//sltu
                    4'b1011:ALU_Control=4'b1111;//sra
                    default:ALU_Control=3'bxxx;
                endcase
            2'b11:
                case(Fun3)
                    3'b000:ALU_Control=4'b0010;//addi
                    3'b010:ALU_Control=4'b0111;//slti
                    3'b011:ALU_Control=4'b1001;//sltiu
                    3'b100:ALU_Control=4'b1100;//xori
                    3'b110:ALU_Control=4'b0001;//ori
                    3'b111:ALU_Control=4'b0000;//andi
                    3'b001:ALU_Control=4'b1110;//slli
                    3'b101:
                        case(Fun7)
                            1'b0:ALU_Control=4'b1101;//srli
                            1'b1:ALU_Control=4'b1111;//srai
                        endcase
                endcase
        endcase      
        end  
endmodule                                  