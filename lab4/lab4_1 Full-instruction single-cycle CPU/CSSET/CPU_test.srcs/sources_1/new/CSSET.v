`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/02 15:40:21
// Design Name: 
// Module Name: CSSTE
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
    wire [31:0] PC_out;
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
    SCPU_more_int U1(.Addr_out(Addr_out),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .MIO_ready(1'b0),
        .INT0(1'b0),
        .MemRW(MemRW),
        .PC_out(PC_out),
        .clk(Clk_CPU),
        .inst_in(Inst_in),
        .rst(rst),
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
        .rs1(rs1),                // output wire [4 : 0] rs1
        .rs2(rs2),                // output wire [4 : 0] rs2
        .rd(rd),                  // output wire [4 : 0] rd
        .reg_i_data(reg_i_data),  // output wire [31 : 0] reg_i_data
        .rs1_val(rs1_val),        // output wire [31 : 0] rs1_val
        .rs2_val(rs2_val),        // output wire [31 : 0] rs2_val
        .reg_wen(reg_wen),        // output wire reg_wen
        .is_imm(is_imm),          // output wire is_imm
        .is_lui(is_lui),          // output wire is_lui
        .a_val(a_val),            // output wire [31 : 0] a_val
        .b_val(b_val),            // output wire [31 : 0] b_val
        .alu_res(alu_res),        // output wire [31 : 0] alu_res
        .alu_ctrl(alu_ctrl)      //  output wire [3 : 0] alu_ctrl
        );
    ROM_D_0 U2(.a(PC_out[11:2]),
        .spo(Inst_in));
    RAM_B_0 U3(.addra(ram_addr),
        .clka(~clk_100mhz),
        .dina(ram_data_in),
        .douta(RAM_B_0_douta),
        // .wea(U4_data_ram_we)
        .wea(MemRW)
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
        .mem_w(MemRW),
        .ram_addr(ram_addr),
        .ram_data_in(ram_data_in),
        .ram_data_out(RAM_B_0_douta),
        .rst(rst));
    wire [31:0] Multi_8CH32_0_Disp_num;
    wire [7:0]  Multi_8CH32_0_LE_out;
    wire [7:0]  Multi_8CH32_0_point_out;
    Multi_8CH32 U5(.Data0(U4_Peripheral_in),
        .Disp_num(Multi_8CH32_0_Disp_num),
        .EN(U4_GPIOe0000000_we),
        .LES(64'b0),
        .LE_out(Multi_8CH32_0_LE_out),
        .Test(SW_OK[7:5]),
        .clk(~Clk_CPU),
        .data1({2'b0,PC_out[31:2]}),
        .data2(Inst_in),
        .data3(U10_counter_out),
        .data4(Addr_out),
        .data5(Data_out),
        .data6(Data_in),
        .data7(PC_out),
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
        .rst(rst));
    Counter_x U10(.clk(~Clk_CPU),
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
    VGA U11(.alu_res(Addr_out),
        .clk_100m(clk_100mhz),
        .clk_25m(clkdiv[1]),
        .dmem_addr(Addr_out),
        .dmem_i_data(ram_data_in),
        .dmem_o_data(RAM_B_0_douta),
        .hs(HSYNC),
        .inst(Inst_in),
        .mem_wen(MemRW),
        .mem_ren(~MemRW),
        .pc(PC_out),
        .rst(rst),
        .vga_b(Blue),
        .vga_g(Green),
        .vga_r(Red),
        .vs(VSYNC),
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
        .rs1(rs1),                // output wire [4 : 0] rs1
        .rs2(rs2),                // output wire [4 : 0] rs2
        .rd(rd),                  // output wire [4 : 0] rd
        .reg_i_data(reg_i_data),  // output wire [31 : 0] reg_i_data
        .rs1_val(rs1_val),        // output wire [31 : 0] rs1_val
        .rs2_val(rs2_val),        // output wire [31 : 0] rs2_val
        .reg_wen(reg_wen),        // output wire reg_wen
        .is_imm(is_imm),          // output wire is_imm
        .is_lui(is_lui),          // output wire is_lui
        .a_val(a_val),            // output wire [31 : 0] a_val
        .b_val(b_val),            // output wire [31 : 0] b_val
        .alu_ctrl(alu_ctrl)      //  output wire [3 : 0] alu_ctrl
);
endmodule