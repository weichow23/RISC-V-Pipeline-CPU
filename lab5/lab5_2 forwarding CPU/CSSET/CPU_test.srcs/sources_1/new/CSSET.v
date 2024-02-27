`timescale 1ns / 1ps
module CSSTE(
      input         clk_100mhz,
      input         RSTN,
      input  [3:0]  BTN_y,
      input  [15:0] SW,
      output [3:0]  Blue,
      output [3:0]  Green,
      output [3:0]  Red,
      output        HSYNC,
      output        VSYNC,
      output        LED_PEN,
      output        SEG_PEN,
      output        led_clk,
      output        led_clrn,
      output        led_sout,
      output        seg_clk,
      output        seg_clrn,
      output        seg_sout
);
      wire [3:0] BTN_OK;
      wire [15:0] SW_OK;
      wire        rst;
      wire        Clk_CPU;
      wire [31:0] clkdiv;
      wire [31:0] Addr_out;
      wire [31:0] Data_out;
      wire [3:0] MemRW;
      wire [31:0] Inst_in;
      wire [31:0] Data_in;
      wire [9:0]  ram_addr;
      wire [31:0] ram_data_in;
      wire [31:0] RAM_B_0_douta;
      wire [31:0] U4_data_ram_we;
      wire        U4_GPIOe0000000_we;
      wire        U4_GPIOf0000000_we;
      wire [31:0] U4_Peripheral_in;
      wire        U10_counter0_OUT;
      wire        U10_counter1_OUT;
      wire        U10_counter2_OUT;
      wire [31:0] U10_counter_out;
      wire        U4_counter_we;
      wire [15:0] U7_LED_out;
      wire [4:0] rs1;
      wire [4:0] rs2;
      wire [4:0] rd;
      wire [31 : 0] reg_i_data; 
      wire [31 : 0] rs1_val; 
      wire [31 : 0] rs2_val; 
      wire reg_wen; 
      wire is_imm; 
      wire is_lui; 
      wire [31 : 0] a_val; 
      wire [31 : 0] b_val; 
      wire [31 : 0] alu_res; 
      wire [3 : 0] alu_ctrl;   
      wire [31: 0] PC_out_IF,PC_out_ID,inst_ID,PC_out_EX;
      wire [3:0] MemRW_EX,MemRW_Mem;
      wire [31: 0] Data_out_WB;
      wire IFID_valid;
      wire [31:0] IDEX_inst;
      wire IDEX_valid;
      wire [4:0] IDEX_rd;
      wire [4:0] IDEX_rs1;
      wire [4:0] IDEX_rs2;
      wire [31:0] IDEX_rs1_val;
      wire [31:0] IDEX_rs2_val;  
      wire IDEX_reg_wen; 
      wire IDEX_is_imm;
      wire [31:0] IDEX_imm;
      wire IDEX_mem_ren;
      wire IDEX_is_branch;
      wire IDEX_is_jal;
      wire IDEX_is_auipc;
      wire IDEX_is_lui;
      wire [3:0] IDEX_ALU_ctrl;
      wire [31:0] EXMA_pc;
      wire [31:0] EXMA_inst;
      wire EXMA_valid;
      wire [4:0] EXMA_rd;
      wire EXMA_reg_wen;
      wire EXMA_Mem_ren;
      wire EXMA_is_jal;
      wire [31:0] MAWB_pc;
      wire [31:0] MAWB_inst;
      wire MAWB_valid;
      wire [4:0] MAWB_rd;
      wire MAWB_reg_wen;
      wire [31:0]wire_x0;
      wire [31:0]wire_x1;
      wire [31:0]wire_x2;
      wire [31:0]wire_x3;
      wire [31:0]wire_x4;
      wire [31:0]wire_x5;
      wire [31:0]wire_x6;
      wire [31:0]wire_x7;
      wire [31:0]wire_x8;
      wire [31:0]wire_x9;
      wire [31:0]wire_x10;
      wire [31:0]wire_x11;
      wire [31:0]wire_x12;
      wire [31:0]wire_x13;
      wire [31:0]wire_x14;
      wire [31:0]wire_x15;
      wire [31:0]wire_x16;
      wire [31:0]wire_x17;
      wire [31:0]wire_x18;
      wire [31:0]wire_x19;
      wire [31:0]wire_x20;
      wire [31:0]wire_x21;
      wire [31:0]wire_x22;
      wire [31:0]wire_x23;
      wire [31:0]wire_x24;
      wire [31:0]wire_x25;
      wire [31:0]wire_x26;
      wire [31:0]wire_x27;
      wire [31:0]wire_x28;
      wire [31:0]wire_x29;
      wire [31:0]wire_x30;
      wire [31:0]wire_x31;
Pipeline_CPU U1(
      .Addr_out(Addr_out),
      .Data_in(Data_in),
      .Data_out(Data_out),
      .clk(Clk_CPU),
      .inst_IF(Inst_in),
      .rst(rst),
      .PC_out_IF(PC_out_IF),
      .PC_out_ID(PC_out_ID),
      .inst_ID(inst_ID),
      .PC_out_EX(PC_out_EX),
      .MemRW_EX(MemRW_EX),
      .MemRW_Mem(MemRW_Mem),
      .Data_out_WB(Data_out_WB),
      .x0(wire_x0),
      .x1(wire_x1),
      .x2(wire_x2),
      .x3(wire_x3),
      .x4(wire_x4),
      .x5(wire_x5),
      .x6(wire_x6),
      .x7(wire_x7),
      .x8(wire_x8),
      .x9(wire_x9),
      .x10(wire_x10),
      .x11(wire_x11),
      .x12(wire_x12),
      .x13(wire_x13),
      .x14(wire_x14),
      .x15(wire_x15),
      .x16(wire_x16),
      .x17(wire_x17),
      .x18(wire_x18),
      .x19(wire_x19),
      .x20(wire_x20),
      .x21(wire_x21),
      .x22(wire_x22),
      .x23(wire_x23),
      .x24(wire_x24),
      .x25(wire_x25),
      .x26(wire_x26),
      .x27(wire_x27),
      .x28(wire_x28),
      .x29(wire_x29),
      .x30(wire_x30),
      .x31(wire_x31),
      .IFID_valid     (IFID_valid),
      .IDEX_inst      (IDEX_inst),
      .IDEX_valid     (IDEX_valid),
      .IDEX_rd        (IDEX_rd),
      .IDEX_rs1       (IDEX_rs1),
      .IDEX_rs2       (IDEX_rs2),
      .IDEX_rs1_val   (IDEX_rs1_val),
      .IDEX_rs2_val   (IDEX_rs2_val),
      .IDEX_reg_wen   (IDEX_reg_wen),
      .IDEX_is_imm    (IDEX_is_imm),
      .IDEX_imm       (IDEX_imm),
      .IDEX_mem_ren   (IDEX_mem_ren),
      .IDEX_is_branch (IDEX_is_branch),
      .IDEX_is_jal    (IDEX_is_jal),
      .IDEX_is_auipc  (IDEX_is_auipc),
      .IDEX_is_lui    (IDEX_is_lui),
      .IDEX_ALU_ctrl  (IDEX_ALU_ctrl),
      .EXMA_pc        (EXMA_pc),
      .EXMA_inst      (EXMA_inst),
      .EXMA_valid     (EXMA_valid),
      .EXMA_rd        (EXMA_rd),
      .EXMA_reg_wen   (EXMA_reg_wen),
      .EXMA_Mem_ren   (EXMA_Mem_ren),
      .EXMA_is_jal    (EXMA_is_jal),
      .MAWB_pc        (MAWB_pc),
      .MAWB_inst      (MAWB_inst),
      .MAWB_valid     (MAWB_valid),
      .MAWB_rd        (MAWB_rd),
      .MAWB_reg_wen   (MAWB_reg_wen)
);
ROM_D_0 U2(
      .a(PC_out_IF[11:2]),
      .spo(Inst_in)
);
RAM_B_0 U3(
      .addra(ram_addr),
      .clka(~clk_100mhz),
      .dina(ram_data_in),
      .douta(RAM_B_0_douta),
      // .wea(U4_data_ram_we)
      .wea(MemRW_Mem)
);
MIO_BUS U4(.BTN(BTN_OK),
      .Cpu_data2bus(Data_out),
      .Cpu_data4bus(Data_in),
      .GPIOe0000000_we(U4_GPIOe0000000_we),
      .GPIOf0000000_we(U4_GPIOf0000000_we),
      .Peripheral_in(U4_Peripheral_in),
      .SW(SW_OK),
      .addr_bus(Addr_out),
      .clk(clk_100mhz),
      .counter0_out(U10_counter0_OUT),
      .counter1_out(U10_counter1_OUT),
      .counter2_out(U10_counter2_OUT),
      .counter_out(U10_counter_out),
      .counter_we(U4_counter_we),
      .data_ram_we(U4_data_ram_we),
      .led_out(U7_LED_out),
      .mem_w(MemRW_Mem),
      .ram_addr(ram_addr),
      .ram_data_in(ram_data_in),
      .ram_data_out(RAM_B_0_douta),
      .rst(rst)
);
      wire [31:0] Multi_8CH32_0_Disp_num;
      wire [7:0]  Multi_8CH32_0_LE_out;
      wire [7:0]  Multi_8CH32_0_point_out;
Multi_8CH32 U5(
      .Data0(U4_Peripheral_in),
      .Disp_num(Multi_8CH32_0_Disp_num),
      .EN(U4_GPIOe0000000_we),
      .LES(64'b0),
      .LE_out(Multi_8CH32_0_LE_out),
      .Test(SW_OK[7:5]),
      .clk(~Clk_CPU),
      .data1({2'b0,PC_out_IF[31:2]}),
      .data2(Inst_in),
      .data3(U10_counter_out),
      .data4(Addr_out),
      .data5(Data_out),
      .data6(Data_in),
      .data7(PC_out_IF),
      .point_in({clkdiv[31:0],clkdiv[31:0]}),
      .point_out(Multi_8CH32_0_point_out),
      .rst(rst));
SSeg7_Dev U6(.Hexs(Multi_8CH32_0_Disp_num),
      .LES(Multi_8CH32_0_LE_out),
      .SEG_PEN(SEG_PEN),
      .SW0(SW_OK[0]),
      .Start(clkdiv[20]),
      .clk(clk_100mhz),
      .flash(clkdiv[25]),
      .point(Multi_8CH32_0_point_out),
      .rst(rst),
      .seg_clk(seg_clk),
      .seg_clrn(seg_clrn),
      .seg_sout(seg_sout));
wire [1:0] U7_counter_set;
SPIO U7(.EN(U4_GPIOf0000000_we),
      .LED_PEN(LED_PEN),
      .LED_out(U7_LED_out),
      .P_Data(U4_Peripheral_in),
      .Start(clkdiv[20]),
      .clk(~Clk_CPU),
      .counter_set(U7_counter_set),
      .led_clk(led_clk),
      .led_clrn(led_clrn),
      .led_sout(led_sout),
      .rst(rst));
clk_div U8(.Clk_CPU(Clk_CPU),
      .STEP(BTN_OK[0]|SW_OK[10]),
      .SW2(SW_OK[2]),
      .SW8(SW_OK[8]),
      .clk(clk_100mhz),
      .clkdiv(clkdiv),
      .rst(rst));
SAnti_jitter U9(.BTN_OK(BTN_OK),
      .Key_y(BTN_y),
      .RSTN(RSTN),
      .SW(SW),
      .SW_OK(SW_OK),
      .clk(clk_100mhz),
      .readn(1'b0),
      .rst(rst)
);
Counter_x U10
      (.clk(~Clk_CPU),
      .clk0(clkdiv[6]),
      .clk1(clkdiv[9]),
      .clk2(clkdiv[11]),
      .counter0_OUT(U10_counter0_OUT),
      .counter1_OUT(U10_counter1_OUT),
      .counter2_OUT(U10_counter2_OUT),
      .counter_ch(U7_counter_set),
      .counter_out(U10_counter_out),
      .counter_val(U4_Peripheral_in),
      .counter_we(U4_counter_we),
      .rst(rst));

VGA u_VGA(
      .clk_25m        (clkdiv[1]),
      .clk_100m       (clk_100mhz),
      .rst            (rst),
      .PC_IF          (PC_out_IF),
      .inst_IF        (inst_IF),
      .PC_ID          (PC_out_ID),
      .inst_ID        (inst_ID),
      .IFID_valid     (IFID_valid),
      .PC_Ex(PC_out_EX),
      .IDEX_inst      (IDEX_inst),
      .IDEX_valid     (IDEX_valid),
      .IDEX_rd        (IDEX_rd),
      .IDEX_rs1       (IDEX_rs1),
      .IDEX_rs2       (IDEX_rs2),
      .IDEX_rs1_val   (IDEX_rs1_val),
      .IDEX_rs2_val   (IDEX_rs2_val),
      .IDEX_reg_wen   (IDEX_reg_wen),
      .IDEX_is_imm    (IDEX_is_imm),
      .IDEX_imm       (IDEX_imm),
      .MemRW_Ex(MemRW_EX),
      .IDEX_mem_ren   (IDEX_mem_ren),
      .IDEX_is_branch (IDEX_is_branch),
      .IDEX_is_jal    (IDEX_is_jal),
      .IDEX_is_auipc  (IDEX_is_auipc),
      .IDEX_is_lui    (IDEX_is_lui),
      .IDEX_ALU_ctrl  (IDEX_ALU_ctrl),
      .EXMA_pc        (EXMA_pc),
      .EXMA_inst      (EXMA_inst),
      .EXMA_valid     (EXMA_valid),
      .EXMA_rd        (EXMA_rd),
      .EXMA_reg_wen   (EXMA_reg_wen),  
      .Data_out(Data_out), 
      .Addr_out(Addr_out),
      .MemRW_Mem(MemRW_Mem),
      .EXMA_Mem_ren   (EXMA_Mem_ren),
      .EXMA_is_jal    (EXMA_is_jal),
      .MAWB_pc        (MAWB_pc),
      .MAWB_inst      (MAWB_inst),
      .MAWB_valid     (MAWB_valid),
      .MAWB_rd        (MAWB_rd),
      .MAWB_reg_wen   (MAWB_reg_wen),
      .Data_out_WB(Data_out_WB),
      .x0(wire_x0),
      .x1(wire_x1),
      .x2(wire_x2),
      .x3(wire_x3),
      .x4(wire_x4),
      .x5(wire_x5),
      .x6(wire_x6),
      .x7(wire_x7),
      .x8(wire_x8),
      .x9(wire_x9),
      .x10(wire_x10),
      .x11(wire_x11),
      .x12(wire_x12),
      .x13(wire_x13),
      .x14(wire_x14),
      .x15(wire_x15),
      .x16(wire_x16),
      .x17(wire_x17),
      .x18(wire_x18),
      .x19(wire_x19),
      .x20(wire_x20),
      .x21(wire_x21),
      .x22(wire_x22),
      .x23(wire_x23),
      .x24(wire_x24),
      .x25(wire_x25),
      .x26(wire_x26),
      .x27(wire_x27),
      .x28(wire_x28),
      .x29(wire_x29),
      .x30(wire_x30),
      .x31(wire_x31),
      .hs(HSYNC),
      .vs(VSYNC),
      .vga_r(Red),
      .vga_g(Green),
      .vga_b(Blue)
);

endmodule

