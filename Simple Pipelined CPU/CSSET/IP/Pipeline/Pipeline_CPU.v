module Pipeline_CPU(
    input clk,
    input rst,
    input[31:0] Data_in, //load
    input[31:0] inst_IF,
    output[31:0] PC_out_IF,
    output[31:0] PC_out_ID,
    output [31:0] inst_ID,
    output [31:0] PC_out_EX,
    output  [3:0]MemRW_EX, 
    output  [3:0]MemRW_Mem,
    output [31:0] Addr_out, 
    output [31:0] Data_out, 
    output [31:0] Data_out_WB,
    output [31:0]x0,
    output [31:0]x1,
    output [31:0]x2,
    output [31:0]x3,
    output [31:0]x4,
    output [31:0]x5,
    output [31:0]x6,
    output [31:0]x7,
    output [31:0]x8,
    output [31:0]x9,
    output [31:0]x10,
    output [31:0]x11,
    output [31:0]x12,
    output [31:0]x13,
    output [31:0]x14,
    output [31:0]x15,
    output [31:0]x16,
    output [31:0]x17,
    output [31:0]x18,
    output [31:0]x19,
    output [31:0]x20,
    output [31:0]x21,
    output [31:0]x22,
    output [31:0]x23,
    output [31:0]x24,
    output [31:0]x25,
    output [31:0]x26,
    output [31:0]x27,
    output [31:0]x28,
    output [31:0]x29,
    output [31:0]x30,
    output [31:0]x31,
    output wire IFID_valid,
    output wire [31:0] IDEX_inst,
    output wire IDEX_valid,
    output wire [4:0] IDEX_rd,
    output wire [4:0] IDEX_rs1,
    output wire [4:0] IDEX_rs2,
    output wire [31:0] IDEX_rs1_val,
    output wire [31:0] IDEX_rs2_val,  
    output wire IDEX_reg_wen, 
    output wire IDEX_is_imm,
    output wire [31:0] IDEX_imm,
    output wire IDEX_mem_ren,
    output wire IDEX_is_branch,
    output wire IDEX_is_jal,
    output wire IDEX_is_auipc,
    output wire IDEX_is_lui,
    output wire [3:0] IDEX_ALU_ctrl,
    output wire [31:0] EXMA_pc,
    output wire [31:0] EXMA_inst,
    output wire EXMA_valid,
    output wire [4:0] EXMA_rd,
    output wire EXMA_reg_wen,
    output wire EXMA_Mem_ren,
    output wire EXMA_is_jal,
    output wire [31:0] MAWB_pc,
    output wire [31:0] MAWB_inst,
    output wire MAWB_valid,
    output wire [4:0] MAWB_rd,
    output wire MAWB_reg_wen
);
    wire[31:0] PC_out_IFID,inst_out_IFID;
    wire[31:0] Rs1_out_ID,Rs2_out_ID,Imm_out_ID;
    wire ALUSrc_B_ID,Branch_ID,BranchN_ID,RegWrite_out_ID;
    wire[3:0] ALU_control_ID;
    wire[1:0] MemtoReg_ID;
    wire[4:0] Rd_addr_out_ID;
    wire[1:0] Jump_out_IDEX,Jump_ID,Jump_out_EXMem;
    wire[31:0] PC_out_IDEX,Rs1_out_IDEX,Rs2_out_IDEX,Imm_out_IDEX,Inst_out_IDEX;
    wire ALUSrc_B_out_IDEX,Branch_out_IDEX,BranchN_out_IDEX,RegWrite_out_IDEX;
    wire[3:0]ALU_control_out_IDEX,MemRW_out_IDEX,MemRW_ID,MemRW_out_EXMem;
    wire[1:0]MemtoReg_out_IDEX;
    wire [4:0]Rd_addr_out_IDEX;
    wire valid_out_IDEX;
    wire[31:0] PC4_out_EX,ALU_out_EX,Rs2_out_EX;
    wire zero_out_EX;
    wire[31:0] PC_out_EXMem,PC4_out_EXMem,ALU_out_EXMem,Rs2_out_EXMem,PC_imm_out_EXMem,Inst_out_EXMem;
    wire [4:0] Rd_addr_out_EXMem;
    wire zero_out_EXMem,Branch_out_EXMem,BranchN_out_EXMem,RegWrite_out_EXMem;
    wire[1:0] MemtoReg_out_EXMem;
    wire valid_out_EXMem;
    wire [1:0] PCSrc;
    wire[31:0] PC4_out_MemWB,ALU_out_MemWB,DMem_data_out_MemWB,PC_out_MemWB,Inst_out_MemWB;
    wire[1:0] MemtoReg_out_MemWB;
    wire[4:0] Rd_addr_out_MemWB;
    wire RegWrite_out_MemWB;
    wire valid_out_MemWB;
    wire en_IF,en_IFID,NOP_IDEX,NOP_IFID;
    wire valid_IFID;
    wire[4:0] Rs1_addr_ID,Rs2_addr_ID;
    wire Rs1_used,Rs2_used;
    wire Auipc,Auipc_out_IDEX,Half,Byte,Sign_Load,Half_out_IDEX,Byte_out_IDEX,Sign_Load_out_IDEX;
    wire Half_out_EX,Byte_out_EX,Sign_out_EX;
    wire Half_out_EXMem,Byte_out_EXMem,Sign_out_EXMem;
    wire [31:0] Imm_out_MemWB,Imm_out_EXMem;


    //调试信号引出
    assign IFID_valid=valid_IFID;
    assign IDEX_inst=Inst_out_IDEX;
    assign IDEX_valid=valid_out_IDEX;
    assign IDEX_rd=Rd_addr_out_IDEX;
    assign IDEX_rs1=Rs1_addr_ID;
    assign IDEX_rs2=Rs2_addr_ID;
    assign IDEX_rs1_val=Rs1_out_ID;
    assign IDEX_rs2_val=Rs2_out_ID;
    assign IDEX_reg_wen=RegWrite_out_MemWB;
    assign IDEX_is_imm=ALUSrc_B_ID;
    assign IDEX_imm=Imm_out_ID;
    assign IDEX_mem_ren=~(MemRW_EX[3]&MemRW_EX[2]&MemRW_EX[1]&MemRW_EX[0]);
    assign IDEX_is_branch=Branch_ID|BranchN_ID;
    assign IDEX_is_jal=Jump_ID[0];
    assign IDEX_is_auipc=(~IDEX_is_branch)&&(~IDEX_is_jal);
    assign IDEX_is_lui=0;
    assign IDEX_ALU_ctrl=ALU_control_ID;
    assign EXMA_pc=PC_out_EXMem;
    assign EXMA_inst=Inst_out_EXMem;
    assign EXMA_valid=valid_out_EXMem;
    assign EXMA_rd=Rd_addr_out_EXMem;
    assign EXMA_reg_wen=RegWrite_out_EXMem;
    assign EXMA_Mem_ren=~(MemRW_out_EXMem[3]&MemRW_out_EXMem[2]&MemRW_out_EXMem[1]&MemRW_out_EXMem[0]);
    assign EXMA_is_jal=Jump_out_EXMem[0];
    assign MAWB_pc=PC_out_MemWB;
    assign MAWB_inst=Inst_out_MemWB;
    assign MAWB_valid=valid_out_MemWB;
    assign MAWB_rd=Rd_addr_out_MemWB;
    assign MAWB_reg_wen=RegWrite_out_MemWB;
    assign PC_out_ID=PC_out_IFID;
    assign inst_ID=inst_out_IFID;
    assign Addr_out=ALU_out_EXMem;
    assign Data_out=Rs2_out_EXMem;
    assign MemRW_Mem=MemRW_out_EXMem;
    assign MemRW_EX=MemRW_out_IDEX;

    Pipeline_IF u1(
        .clk_IF   (clk),
        .rst_IF   (rst),
        .en_IF    (1'b1),
        .PC_ALU   (Addr_out),
        .PC_in_IF (PC_out_EXMem),
        .PCSrc    (PCSrc),
        .PC_out_IF (PC_out_IF)
    );

    IF_reg_ID u2(
        .clk_IFID     (clk),
        .rst_IFID     (rst),
        .en_IFID      (1'b1),
        .PC_in_IFID   (PC_out_IF),
        .inst_in_IFID (inst_IF),
        .PC_out_IFID  (PC_out_IFID),
        .inst_out_IFID (inst_out_IFID)
    );
    Pipeline_ID u3(
        .clk_ID         (clk),
        .rst_ID         (rst),
        .RegWrite_in_ID (RegWrite_out_MemWB),
        .Rd_addr_ID     (Rd_addr_out_MemWB),
        .Wt_data_ID     (Data_out_WB),
        .Inst_in_ID     (inst_out_IFID),
        .Rd_addr_out_ID (Rd_addr_out_ID),
        .Rs1_out_ID     (Rs1_out_ID),
        .Rs2_out_ID     (Rs2_out_ID),
        .Imm_out_ID     (Imm_out_ID),
        .ALUSrc_B_ID    (ALUSrc_B_ID),
        .ALU_control_ID (ALU_control_ID),
        .Branch_ID      (Branch_ID),
        .BranchN_ID     (BranchN_ID),
        .MemRW_ID       (MemRW_ID),
        .Jump_ID        (Jump_ID),
        .MemtoReg_ID    (MemtoReg_ID),
        .RegWrite_out_ID (RegWrite_out_ID),
        .x0(x0),
		.x1(x1),
		.x2(x2),
		.x3(x3),
		.x4(x4),
		.x5(x5),
		.x6(x6),
		.x7(x7),
		.x8(x8),
		.x9(x9),
		.x10(x10),
		.x11(x11),
		.x12(x12),
		.x13(x13),
		.x14(x14),
		.x15(x15),
		.x16(x16),
		.x17(x17),
		.x18(x18),
		.x19(x19),
		.x20(x20),
		.x21(x21),
		.x22(x22),
		.x23(x23),
		.x24(x24),
		.x25(x25),
		.x26(x26),
		.x27(x27),
		.x28(x28),
		.x29(x29),
		.x30(x30),
		.x31(x31),
        .Auipc(Auipc),
        .Half(Half),
        .Byte(Byte),
        .Sign_Load(Sign_Load)
);

    ID_reg_Ex u4(
        .clk_IDEX             (clk),
        .rst_IDEX             (rst),
        .en_IDEX              (1'b1),
        .PC_in_IDEX           (PC_out_IFID),
        .Rd_addr_IDEX         (Rd_addr_out_ID),
        .Rs1_in_IDEX          (Rs1_out_ID),
        .Rs2_in_IDEX          (Rs2_out_ID),
        .Imm_in_IDEX          (Imm_out_ID),
        .ALUSrc_B_in_IDEX     (ALUSrc_B_ID),
        .ALU_control_in_IDEX  (ALU_control_ID),
        .Branch_in_IDEX       (Branch_ID),
        .BranchN_in_IDEX      (BranchN_ID),
        .MemRW_in_IDEX        (MemRW_ID),
        .Jump_in_IDEX         (Jump_ID),
        .MemtoReg_in_IDEX     (MemtoReg_ID),
        .RegWrite_in_IDEX     (RegWrite_out_ID),
        .PC_out_IDEX          (PC_out_IDEX),
        .Rd_addr_out_IDEX     (Rd_addr_out_IDEX),
        .Rs1_out_IDEX         (Rs1_out_IDEX),
        .Rs2_out_IDEX         (Rs2_out_IDEX),
        .Imm_out_IDEX         (Imm_out_IDEX),
        .ALUSrc_B_out_IDEX    (ALUSrc_B_out_IDEX),
        .ALU_control_out_IDEX (ALU_control_out_IDEX),
        .Branch_out_IDEX      (Branch_out_IDEX),
        .BranchN_out_IDEX     (BranchN_out_IDEX),
        .MemRW_out_IDEX       (MemRW_out_IDEX),
        .Jump_out_IDEX        (Jump_out_IDEX),
        .MemtoReg_out_IDEX    (MemtoReg_out_IDEX),
        .RegWrite_out_IDEX    (RegWrite_out_IDEX),
        .Auipc_in_IDEX(Auipc),
        .Auipc_out_IDEX(Auipc_out_IDEX),
        .Half_in_IDEX(Half),
        .Half_out_IDEX(Half_out_IDEX),
        .Byte_in_IDEX(Byte),
        .Byte_out_IDEX(Byte_out_IDEX),
        .Sign_Load_in_IDEX(Sign_Load),
        .Sign_Load_out_IDEX(Sign_Load_out_IDEX)
);

    Pipeline_Ex u5(
        .PC_in_EX          (PC_out_IDEX),
        .Rs1_in_EX         (Rs1_out_IDEX),
        .Rs2_in_EX         (Rs2_out_IDEX),
        .Imm_in_EX         (Imm_out_IDEX),
        .ALUSrc_B_in_EX    (ALUSrc_B_out_IDEX),
        .ALU_control_in_EX (ALU_control_out_IDEX),
        .PC_out_EX         (PC_out_EX),
        .PC4_out_EX        (PC4_out_EX),
        .zero_out_EX       (zero_out_EX),
        .ALU_out_EX        (ALU_out_EX),
        .Rs2_out_EX        (Rs2_out_EX),
        .Auipc_in_EX(Auipc_out_IDEX),
        .Half_in_EX(Half_out_IDEX),
        .Byte_in_EX(Byte_out_IDEX),
        .Sign_Load_in_EX(Sign_Load_out_IDEX),
        .Half_out_EX(Half_out_EX),
        .Byte_out_EX(Byte_out_EX),
        .Sign_out_EX(Sign_out_EX)
);

    Ex_reg_Mem u6(
        .clk_EXMem          (clk),
        .rst_EXMem          (rst),
        .en_EXMem           (1'b1 ),
        .PC_in_EXMem        (PC_out_EX),
        .PC4_in_EXMem       (PC4_out_EX),
        .Rd_addr_EXMem      (Rd_addr_out_IDEX),
        .zero_in_EXMem      (zero_out_EX),
        .ALU_in_EXMem       (ALU_out_EX),
        .Rs2_in_EXMem       (Rs2_out_EX),
        .Branch_in_EXMem    (Branch_out_IDEX),
        .BranchN_in_EXMem   (BranchN_out_IDEX),
        .MemRW_in_EXMem     (MemRW_out_IDEX),
        .Jump_in_EXMem      (Jump_out_IDEX),
        .MemtoReg_in_EXMem  (MemtoReg_out_IDEX),
        .RegWrite_in_EXMem  (RegWrite_out_IDEX),
        .PC_out_EXMem       (PC_out_EXMem),
        .PC4_out_EXMem      (PC4_out_EXMem),
        .Rd_addr_out_EXMem  (Rd_addr_out_EXMem),
        .zero_out_EXMem     (zero_out_EXMem),
        .ALU_out_EXMem      (ALU_out_EXMem),
        .Rs2_out_EXMem      (Rs2_out_EXMem),
        .Branch_out_EXMem   (Branch_out_EXMem),
        .BranchN_out_EXMem  (BranchN_out_EXMem),
        .MemRW_out_EXMem    (MemRW_out_EXMem),
        .Jump_out_EXMem     (Jump_out_EXMem),
        .MemtoReg_out_EXMem (MemtoReg_out_EXMem),
        .RegWrite_out_EXMem (RegWrite_out_EXMem),
        .Imm_in_EXMem(Imm_out_IDEX),
        .Imm_out_EXMen(Imm_out_EXMen),
        .Half_in_EXMem(Half_out_EX),
        .Byte_in_EXMem(Byte_out_EX),
        .Sign_in_EXMem(Sign_out_EX),
        // .Half_in_EXMem(Half_out_IDEX),
        // .Byte_in_EXMem(Byte_out_IDEX),
        // .Sign_in_EXMem(Sign_out_IDEX),
        .Half_out_EXMem(Half_out_EXMem),
        .Byte_out_EXMem(Byte_out_EXMem),
        .Sign_out_EXMem(Sign_out_EXMem)
);

    Pipeline_Mem u7(
        .zero_in_Mem    (zero_out_EXMem),
        .Branch_in_Mem  (Branch_out_EXMem),
        .BranchN_in_Mem (BranchN_out_EXMem),
        .Jump_in_Mem    (Jump_out_EXMem),
        .PCSrc          (PCSrc)
);

    wire Half_out_MemWB,Byte_out_MemWB,Sign_out_MemWB;
    Mem_reg_WB u8(
        .clk_MemWB           (clk),
        .rst_MemWB           (rst),
        .en_MemWB            (1'b1),
        .PC4_in_MemWB        (PC4_out_EXMem),
        .Rd_addr_MemWB       (Rd_addr_out_EXMem),
        .ALU_in_MemWB        (ALU_out_EXMem),
        // .DMem_data_MemWB     (Data_in),  //l指令
        .Half_in_MemWB(Half_out_EXMem),
        .Byte_in_MemWB(Byte_out_EXMem),
        .Sign_in_MemWB(Sign_out_EXMem),
        .Half_out_MemWB(Half_out_MemWB),
        .Byte_out_MemWB(Byte_out_MemWB),
        .Sign_out_MemWB(Sign_out_MemWB),
        .Imm_in_MemWB(Imm_out_EXMen),
        .Imm_out_MemWB(Imm_out_MemWB),
        .MemtoReg_in_MemWB   (MemtoReg_out_EXMem),
        .RegWrite_in_MemWB   (RegWrite_out_EXMem),
        .PC4_out_MemWB       (PC4_out_MemWB),
        .Rd_addr_out_MemWB   (Rd_addr_out_MemWB),
        .ALU_out_MemWB       (ALU_out_MemWB),
        // .DMem_data_out_MemWB (DMem_data_out_MemWB),
        .MemtoReg_out_MemWB  (MemtoReg_out_MemWB),
        .RegWrite_out_MemWB  (RegWrite_out_MemWB)
);

    Pipeline_WB u9(
        .PC4_in_WB      (PC4_out_MemWB),
        .ALU_in_WB      (ALU_out_MemWB),
        // .DMem_data_WB   (DMem_data_out_MemWB), //如果这样去绕一圈，实际上写回的是上个时钟周期的内容, 把reg换成wire
        .DMem_data_WB   (Data_in), //load
        .Half_WB(Half_out_MemWB),
        .Byte_WB(Byte_out_MemWB),
        .Sign_WB(Sign_out_MemWB),
        .MemtoReg_in_WB (MemtoReg_out_MemWB),
        .Imm_in_WB      (Imm_out_MemWB),
        // .Half_in_MemWB(Half_out_EXMem),
        // .Byte_in_MemWB(Byte_out_EXMem),
        // .Sign_in_MemWB(Sign_out_EXMem),
        .Data_out_WB    (Data_out_WB)
);  
endmodule