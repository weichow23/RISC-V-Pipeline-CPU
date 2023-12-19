module Pipeline_ID(
    input clk_ID,                     //时钟
    input rst_ID,                     //复位
    input RegWrite_in_ID,             //寄存器堆使能
    input [4:0] Rd_addr_ID,           //写目的地址输入
    input [31:0] Wt_data_ID,          //写数据输入
    input [31:0] Inst_in_ID,          //指令输入
    output wire [31:0] Rd_addr_out_ID,//写目的地地址输出
    output wire [31:0] Rs1_out_ID,    //操作数1输出
    output wire [31:0] Rs2_out_ID ,   //操作数2输出
    output wire [4:0] Rs1_addr_ID,    //寄存器地址1
    output wire [4:0] Rs2_addr_ID,    //寄存器地址2
    output wire Rs1_used,             //Rs1是否被使用
    output wire Rs2_used,             //Rs2是否被使用
    output wire [31:0] Imm_out_ID ,   //立即数输出
    output wire ALUSrc_B_ID ,         //ALU B端输入选择
    output wire [3:0] ALU_control_ID, //ALU控制
    output wire Branch_ID,            //Beq控制
    output wire BranchN_ID,           //Bne控制
    output wire [3:0] MemRW_ID,             //存储器读写
    output wire [1:0]Jump_ID,         //Jal控制
    output wire [1:0] MemtoReg_ID,    //寄存器写回选择
    output wire RegWrite_out_ID,     //寄存器堆读写
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
    
    output Auipc,
    output Half,
    output Byte,
    output Sign_Load
); 
    Regs u_Regs(
        .clk      (~clk_ID),
        .rst      (rst_ID),
        .Rs1_addr (Inst_in_ID[19:15]),
        .Rs2_addr (Inst_in_ID[24:20]),
        .Wt_addr  (Rd_addr_ID),
        .Wt_data  (Wt_data_ID),
        .RegWrite (RegWrite_in_ID),
        .Rs1_data (Rs1_out_ID),
        .Rs2_data (Rs2_out_ID),
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
		.x31(x31)
    );
    wire[2:0] ImmSel;
    ImmGen u_ImmGen(
        .Inst_field (Inst_in_ID),
        .ImmSel     (ImmSel),
        .Imm_out    (Imm_out_ID)
    );
    SCPU_ctrl_more u_SCPU_ctrl_more(
        .ALUSrc_B    (ALUSrc_B_ID),
        .Branch      (Branch_ID),
        .BranchN     (BranchN_ID),
        .CPU_MIO     ( ),
        .Fun7        (Inst_in_ID[30]),
        .Jump        (Jump_ID),
        .MIO_ready   ( ),
        .MemRW       (MemRW_ID),
        .RegWrite    (RegWrite_out_ID),
        .ALU_Control (ALU_control_ID),
        .Fun3        (Inst_in_ID[14:12]),
        .ImmSel      (ImmSel),
        .MemtoReg    (MemtoReg_ID),
        .OPcode      (Inst_in_ID[6:2]),
        .Rs1_used    (Rs1_used),
        .Rs2_used    (Rs2_used),

        .Auipc       (Auipc),
        .Half         (Half),
        .Byte         (Byte),
        .Sign_Load   (Sign_Load)
);
    assign Rd_addr_out_ID=Inst_in_ID[11:7];
    assign Rs1_addr_ID=Inst_in_ID[19:15];
    assign Rs2_addr_ID=Inst_in_ID[24:20];
endmodule