`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/02 12:43:58
// Design Name: 
// Module Name: muxctrl
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
`timescale 1 ps / 1 ps
module muxctrl(    
    input [4:0]I0_0,
    input [4:0]I1_0,
    output [4:0]o_0,
    input [1:0]s,
    input s1,
    input [2:0]s2
);
    wire [4:0]I0_0_1;
    wire [4:0]I1_0_1;
    wire [4:0]MUX2T1_5_0_o;
    wire [4:0]MUX2T1_5_1_o;
    reg [4:0]MUX4T1_5_1_o;
    reg [7:0]MUX8T1_8_0_o;
    wire s_0_1;
    wire [2:0]s_0_2;
    wire [1:0]s_0_3;
    wire [7:0]xlconcat_0_dout;
    wire [7:0]xlconcat_1_dout;
    wire [4:0]xlconstant_0_dout;
    wire [4:0]xlconstant_1_dout;
    wire [7:0]xlconstant_2_dout;
    wire [0:0]xlconstant_3_dout;
    wire [3:0]xlslice_0_Dout;
    wire [3:0]xlslice_1_Dout;
    wire [4:0]xlslice_2_Dout;
    wire [4:0]xlslice_3_Dout;

    assign I0_0_1 = I0_0[4:0];
    assign I1_0_1 = I1_0[4:0];
    assign o_0[4:0] = MUX4T1_5_1_o;
    assign s_0_1 = s1;
    assign s_0_2 = s2[2:0];
    assign s_0_3 = s[1:0];
    ///     MUX 2 to 1
    assign MUX2T1_5_0_o = s_0_1?I1_0_1:I0_0_1;
    assign MUX2T1_5_1_o = xlconstant_3_dout ? I1_0_1 : I0_0_1;
    ///     MUX 4 to 1
    always@*
        case(s_0_3)
            2'b00: MUX4T1_5_1_o = xlslice_3_Dout;
            2'b01: MUX4T1_5_1_o = xlslice_2_Dout;
            2'b10: MUX4T1_5_1_o = xlconstant_1_dout;
            2'b11: MUX4T1_5_1_o = xlconstant_0_dout;
        endcase
    ///     MUX 8 to 1
    always@*
        case(s_0_2)
            3'b000: MUX8T1_8_0_o = xlconcat_0_dout;
            3'b001: MUX8T1_8_0_o = xlconcat_1_dout;
            3'b010: MUX8T1_8_0_o = xlconstant_2_dout;
            3'b011: MUX8T1_8_0_o = xlconstant_2_dout;
            3'b100: MUX8T1_8_0_o = xlconstant_2_dout;
            3'b101: MUX8T1_8_0_o = xlconstant_2_dout;
            3'b110: MUX8T1_8_0_o = xlconstant_2_dout;
            3'b111: MUX8T1_8_0_o = xlconstant_2_dout;
        endcase
    // concat 
    assign xlconcat_0_dout = {xlslice_1_Dout +xlslice_0_Dout};
    assign xlconcat_1_dout = {xlslice_0_Dout+xlslice_1_Dout};
    // constant
    assign xlconstant_0_dout = 5'b0;
    assign xlconstant_1_dout = 5'b1;
    assign xlconstant_2_dout = 8'b1;
    assign xlconstant_3_dout = 1'b1;
    // slice  5 取 低 4 位
    assign xlslice_0_Dout = MUX2T1_5_1_o[3:0] ;
    assign xlslice_1_Dout = MUX2T1_5_0_o[3:0] ;
    // slice  8 取 低 5 位
    assign xlslice_2_Dout = xlconcat_1_dout[4:0] ;
    assign xlslice_3_Dout = MUX8T1_8_0_o[4:0] ;
endmodule