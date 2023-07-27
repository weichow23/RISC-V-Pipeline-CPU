`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/28 20:09:12
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [2:0] ALU_operation,
    input [31:0] B,
    output [31:0] res,
    output zero
    );
    wire [31:0]and_res,or_res,xor_res,nor_res,srl_res,mux_res;
    wire [32:0]adc_res;
    wire op2;
    wire [31:0]op2Ex;
    assign op2=ALU_operation[2];
    and32_0 and0(A,B,and_res);
    or32_0 or0(A,B,or_res);
    xor32_0 xor0(A,B,xor_res);
    nor32_0 nor0(A,B,nor_res);
    srl32_0 srl0(A,B,srl_res);
    ADC32_0 adc0(A,B,op2,adc_res);
    SignalExt_32_0 ext0(op2,op2Ex);
    MUX8T1_32_0 mux0 (
    .I0(and_res),
    .I1(or_res),
    .I2(adc_res[31:0]),
    .I3(xor_res),
    .I4(nor_res),
    .I5(srl_res),
    .I6(adc_res[31:0]),
    .I7({31'b0,adc_res[32]}),
    .s(ALU_operation),
    .o(mux_res)
    );
    assign res=mux_res;
    or_bit_32_0 or_bit_0(mux_res,zero);
    endmodule
