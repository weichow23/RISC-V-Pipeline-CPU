module ID_reg_Ex( 
    input clk_IDEX,
    input rst_IDEX,
    input en_IDEX,
    input[31:0] PC_in_IDEX,
    input[4:0] Rd_addr_IDEX,
    input[31:0] Rs1_in_IDEX,
    input[31:0] Rs2_in_IDEX,
    input[31:0] Imm_in_IDEX,
    input ALUSrc_B_in_IDEX,
    input[3:0] ALU_control_in_IDEX,
    input Branch_in_IDEX,
    input BranchN_in_IDEX,
    input [3:0] MemRW_in_IDEX,
    input[1:0] Jump_in_IDEX,
    input[1:0] MemtoReg_in_IDEX,
    input RegWrite_in_IDEX,
    input Auipc_in_IDEX,
    input Half_in_IDEX,
    input Byte_in_IDEX,
    input Sign_Load_in_IDEX,
    output reg Auipc_out_IDEX,
    output reg Half_out_IDEX,
    output reg Byte_out_IDEX,
    output reg Sign_Load_out_IDEX,
    output reg[31:0] PC_out_IDEX,
    output reg[4:0] Rd_addr_out_IDEX,
    output reg[31:0] Rs1_out_IDEX,
    output reg[31:0] Rs2_out_IDEX,
    output reg[31:0] Imm_out_IDEX,
    output reg ALUSrc_B_out_IDEX,
    output reg[3:0] ALU_control_out_IDEX,
    output reg Branch_out_IDEX,
    output reg BranchN_out_IDEX,
    output reg [3:0] MemRW_out_IDEX,
    output reg [1:0] Jump_out_IDEX,
    output reg [1:0] MemtoReg_out_IDEX,
    output reg RegWrite_out_IDEX
); 
  always @(posedge clk_IDEX or posedge rst_IDEX) begin
    if(rst_IDEX==1) begin
        PC_out_IDEX<=0;
        Rd_addr_out_IDEX <=0;
        Rs1_out_IDEX<=0;
        Rs2_out_IDEX<=0;
        Imm_out_IDEX<=0;
        ALUSrc_B_out_IDEX<=0;
        ALU_control_out_IDEX<=0;
        Branch_out_IDEX<=0;
        BranchN_out_IDEX<=0;
        MemRW_out_IDEX<=4'b0;
        Jump_out_IDEX<=0;
        MemtoReg_out_IDEX<=0;
        RegWrite_out_IDEX<=0;
        Auipc_out_IDEX<=0;
        Half_out_IDEX<=0;
        Byte_out_IDEX<=0;
        Sign_Load_out_IDEX<=0;
    end
    else begin
        PC_out_IDEX<=PC_in_IDEX;
        Rd_addr_out_IDEX <=Rd_addr_IDEX;
        Rs1_out_IDEX<=Rs1_in_IDEX;
        Rs2_out_IDEX<=Rs2_in_IDEX;
        Imm_out_IDEX<=Imm_in_IDEX;
        ALUSrc_B_out_IDEX<=ALUSrc_B_in_IDEX;
        ALU_control_out_IDEX<=ALU_control_in_IDEX;
        Branch_out_IDEX<=Branch_in_IDEX;
        BranchN_out_IDEX<=BranchN_in_IDEX;
        MemRW_out_IDEX<=MemRW_in_IDEX;
        Jump_out_IDEX<=Jump_in_IDEX;
        MemtoReg_out_IDEX<=MemtoReg_in_IDEX;
        RegWrite_out_IDEX<=RegWrite_in_IDEX;
        Auipc_out_IDEX<=Auipc_in_IDEX;
        Half_out_IDEX<=Half_in_IDEX;
        Byte_out_IDEX<=Byte_in_IDEX;
        Sign_Load_out_IDEX<=Sign_Load_in_IDEX;
    end
  end 
endmodule