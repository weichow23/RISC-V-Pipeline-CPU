
module VGA (
    input wire clk_25m,
    input wire clk_100m,
    input wire rst,
    
    input wire [31:0] PC_IF,
    input wire [31:0] inst_IF,
    input wire [31:0] PC_ID,
    input wire [31:0] inst_ID,
    input wire IFID_valid,
    input wire [31:0] PC_Ex,
    input wire [31:0] IDEX_inst,
    input wire IDEX_valid,
    input wire [4:0] IDEX_rd,
    input wire [4:0] IDEX_rs1,
    input wire [4:0] IDEX_rs2,
    input wire [31:0] IDEX_rs1_val,
    input wire [31:0] IDEX_rs2_val,  
    
    input wire IDEX_reg_wen, 
    input wire IDEX_is_imm,
    input wire [31:0] IDEX_imm,
    input wire MemRW_Ex,
    input wire IDEX_mem_ren,

    input wire IDEX_is_branch,
    input wire IDEX_is_jal,
    input wire IDEX_is_auipc,
    input wire IDEX_is_lui,
    input wire [3:0] IDEX_ALU_ctrl,
    input wire [31:0] EXMA_pc,
    input wire [31:0] EXMA_inst,
    input wire EXMA_valid,
    input wire [4:0] EXMA_rd,
    input wire EXMA_reg_wen,
    input wire [31:0] Data_out,
    input wire [31:0] Addr_out,
    input wire MemRW_Mem,
    input wire EXMA_Mem_ren,
    input wire EXMA_is_jal,
    input wire [31:0] MAWB_pc,
    input wire [31:0] MAWB_inst,
    input wire MAWB_valid,
    input wire [4:0] MAWB_rd,
    input wire MAWB_reg_wen,
    input wire [31:0] Data_out_WB,

    input wire [31:0] x0,
    input wire [31:0] x1,
    input wire [31:0] x2,
    input wire [31:0] x3,
    input wire [31:0] x4,
    input wire [31:0] x5,
    input wire [31:0] x6,
    input wire [31:0] x7,
    input wire [31:0] x8,
    input wire [31:0] x9,
    input wire [31:0] x10,
    input wire [31:0] x11,
    input wire [31:0] x12,
    input wire [31:0] x13,
    input wire [31:0] x14,
    input wire [31:0] x15,
    input wire [31:0] x16,
    input wire [31:0] x17,
    input wire [31:0] x18,
    input wire [31:0] x19,
    input wire [31:0] x20,
    input wire [31:0] x21,
    input wire [31:0] x22,
    input wire [31:0] x23,
    input wire [31:0] x24,
    input wire [31:0] x25,
    input wire [31:0] x26,
    input wire [31:0] x27,
    input wire [31:0] x28,
    input wire [31:0] x29,
    input wire [31:0] x30,
    input wire [31:0] x31,
    output wire hs,
    output wire vs,
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b

);


    wire [9:0] vga_x;
    wire [8:0] vga_y;
    wire video_on;
    VgaController vga_controller(
        .clk(clk_25m),
        .rst(rst),
        .vga_x(vga_x),
        .vga_y(vga_y),
        .hs(hs),
        .vs(vs),
        .video_on(video_on)
    );

    wire display_wen;
    wire [11:0] display_w_addr;
    wire [7:0] display_w_data;
    VgaDisplay vga_display(
        .clk(clk_100m),
        .video_on(video_on),
        .vga_x(vga_x),
        .vga_y(vga_y),
        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b),
        .wen(display_wen),
        .w_addr(display_w_addr),
        .w_data(display_w_data)
    );
    

    VgaDebugger vga_debugger(
        // DEBUG
        .pc(PC_IF),
        .inst(inst_IF),
        .IfId_pc(PC_ID),
        .IfId_inst(inst_ID),
        .IfId_valid(IFID_valid),
        .IdEx_pc(PC_Ex),
        .IdEx_inst(IDEX_inst),
        .IdEx_valid(IDEX_valid),
        .IdEx_rd(IDEX_rd),
        .IdEx_rs1(IDEX_rs1),
        .IdEx_rs2(IDEX_rs2),
        .IdEx_rs1_val(IDEX_rs1_val),
        .IdEx_rs2_val(IDEX_rs2_val),
        .IdEx_reg_wen(IDEX_reg_wen),
        .IdEx_is_imm(IDEX_is_imm),
        .IdEx_imm(IDEX_imm),
        .IdEx_mem_wen(MemRW_Ex),
        .IdEx_mem_ren(IDEX_mem_ren),
        .IdEx_is_branch(IDEX_is_branch),
        .IdEx_is_jal(IDEX_is_jal),
        .IdEx_is_jalr(),
        .IdEx_is_auipc(IDEX_is_auipc),
        .IdEx_is_lui(IDEX_is_lui),
        .IdEx_alu_ctrl(IDEX_ALU_ctrl),
        .IdEx_cmp_ctrl(),
        .ExMa_pc(EXMA_pc),
        .ExMa_inst(EXMA_inst),
        .ExMa_valid(EXMA_valid),
        .ExMa_rd(EXMA_rd),
        .ExMa_reg_wen(EXMA_reg_wen),
        .ExMa_mem_w_data(Data_out),
        .ExMa_alu_res(Addr_out),
        .ExMa_mem_wen(MemRW_Mem),
        .ExMa_mem_ren(EXMA_Mem_ren),
        .ExMa_is_jal(EXMA_is_jal),
        .ExMa_is_jalr(),
        .MaWb_pc(MAWB_pc),
        .MaWb_inst(MAWB_inst),
        .MaWb_valid(MAWB_valid),
        .MaWb_rd(MAWB_rd),
        .MaWb_reg_wen(MAWB_reg_wen),
        .MaWb_reg_w_data(Data_out_WB),
        .x0            (x0             ),
		.ra            (x1             ),
		.sp            (x2             ),
		.gp            (x3             ),
		.tp            (x4             ),
		.t0            (x5             ),
		.t1            (x6             ),
		.t2            (x7             ),
		.s0            (x8             ),
		.s1            (x9             ),
		.a0            (x10            ),
		.a1            (x11            ),
		.a2            (x12            ),
		.a3            (x13            ),
		.a4            (x14            ),
		.a5            (x15            ),
		.a6            (x16            ),
		.a7            (x17            ),
		.s2            (x18            ),
		.s3            (x19            ),
		.s4            (x20            ),
		.s6            (x22            ),
		.s7            (x23            ),
		.s8            (x24            ),
		.s9            (x25            ),
		.s10           (x26            ),
		.s11           (x27            ),
		.t3            (x28            ),
		.t4            (x29            ),
		.t5            (x30            ),
		.t6            (x31            ),
        .clk(clk_100m),
        .display_wen(display_wen),
        .display_w_addr(display_w_addr),
        .display_w_data(display_w_data)
    );


    
endmodule