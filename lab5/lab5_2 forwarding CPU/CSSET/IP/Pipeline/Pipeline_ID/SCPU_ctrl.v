module SCPU_ctrl_more (
    output reg ALUSrc_B,
    output reg Branch,
    output reg BranchN,
    output reg CPU_MIO,
    input wire Fun7,
    output reg [1 : 0]Jump,
    input wire MIO_ready,
    output reg [3:0] MemRW,
    output reg RegWrite,
    output reg [3 : 0] ALU_Control,
    input wire [2 : 0] Fun3,
    output reg [2 : 0] ImmSel,
    output reg [1 : 0] MemtoReg,

    output reg Auipc,
    output reg Byte,
    output reg Half,
    output reg Sign_Load,


    output reg Rs1_used,
    output reg Rs2_used,
    input wire [4 : 0] OPcode
);
    `define CPU_ctrl{ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,Auipc,ALUop,Byte,Half,Sign_Load}
    wire [3:0] Fun;
    reg [1:0] ALUop;

    always@* begin
        case(OPcode)
            5'b01100:begin
                `CPU_ctrl={1'b0,2'b00,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b10,1'b0,1'b0,1'b0}; //ALU
                Rs1_used=1;
                Rs2_used=1;
            end
            5'b00100:begin
                `CPU_ctrl={1'b1,2'b00,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b11,1'b0,1'b0,1'b0}; //ALU(i)
                Rs1_used=1;
                Rs2_used=0;
            end
            5'b00000:begin
                case(Fun3)
                    3'b000:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b1,1'b0,1'b1}; //lb
                    3'b001:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b1,1'b1}; //lh
                    3'b010:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b0,1'b0}; //Load lw
                    3'b100:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b1,1'b0,1'b0}; //lbu
                    3'b101:`CPU_ctrl={1'b1,2'b01,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b1,1'b0}; //lhu
                endcase
                Rs1_used=1;
                Rs2_used=0;
            end
            5'b01000:begin
                case(Fun3)
                    3'b000:`CPU_ctrl={1'b1,2'b00,1'b0,4'b1111,1'b0,1'b0,2'b00,1'b0,2'b00,1'b1,1'b0,1'b0};//sb
                    3'b001:`CPU_ctrl={1'b1,2'b00,1'b0,4'b1111,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b1,1'b0};//sh
                    3'b010:`CPU_ctrl={1'b1,2'b00,1'b0,4'b1111,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b0,1'b0};//sw
                endcase
                Rs1_used=1;
                Rs2_used=1;
            end
            5'b11000:begin
                case(Fun3)
                    3'b000:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b1,1'b0,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//beq
                    3'b001:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b0,1'b1,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bne
                    3'b100:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b0,1'b1,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//blt  branchN
                    3'b101:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b1,1'b0,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bge  branch
                    3'b110:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b0,1'b1,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bltu branchN
                    3'b111:`CPU_ctrl={1'b0,2'b00,1'b0,4'b0000,1'b1,1'b0,2'b00,1'b0,2'b01,1'b0,1'b0,1'b0};//bgeu branch
                    default:`CPU_ctrl =18'b0;
                endcase
                Rs1_used=1;
                Rs2_used=1;
            end        
            5'b11011:begin
                `CPU_ctrl={1'b1,2'b10,1'b1,4'b0000,1'b0,1'b0,2'b01,1'b0,2'b11,1'b0,1'b0,1'b0};//jal
                Rs1_used=0;
                Rs2_used=0;
            end
            5'b11001:begin
                `CPU_ctrl={1'b1,2'b10,1'b1,4'b0000,1'b0,1'b0,2'b10,1'b0,2'b00,1'b0,1'b0,1'b0};//jalr
                Rs1_used=1;
                Rs2_used=0;
            end
            5'b01101:begin
                `CPU_ctrl={1'b0,2'b11,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b0,2'b00,1'b0,1'b0,1'b0};//lui
                Rs1_used=0;
                Rs2_used=0;
            end
            5'b00101:begin
                `CPU_ctrl={1'b1,2'b00,1'b1,4'b0000,1'b0,1'b0,2'b00,1'b1,2'b00,1'b0,1'b0,1'b0};//auipc
                Rs1_used=0;
                Rs2_used=0;
            end
            default:`CPU_ctrl =18'b0;
        endcase
    end

    //Immsel
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