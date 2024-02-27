`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 10:08:22
// Design Name: 
// Module Name: divider
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
module divider(
    input  clk,
    input  rst,
    input  start,
    input [31:0] dividend, //除数
    input [31:0] divisor,  //被除数
    output reg  divide_zero,    //除零异常
    output reg  finish,
    output [31:0] res,  //商
    output [31:0] rem  //余数
    ); 
    reg [5:0] state;
    reg [63:0] remain_reg;
    wire [31:0] temp;
    wire flag;
    assign temp = remain_reg[63:32] - divisor;
    assign flag = remain_reg[63:32] >= divisor; 
    assign res = remain_reg[31:0];
    assign rem = {1'b0, remain_reg[63:33]};
    always@(posedge clk or posedge rst) begin
        if(start) begin
            finish <= 0;
            divide_zero <=0;  //初始化为低平
        end else if(!finish) begin
            finish <= (state == 32);
            divide_zero <= (divisor == 0); 
        end else begin
            finish <= 1;
            divide_zero <= (divisor == 0); 
        end
    end
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            state <= 0;
            finish <= 1;
            remain_reg[31:0] <= dividend;
            remain_reg[63:32] <= 0;
        end 
        else begin
            if(divisor == 0) begin //如果除数为零，则不执行后面的算法
            state <= state; 
            finish <= finish; 
            divide_zero <= 1; 
            //res <= res;    res,rem任意，因此此处不赋值
            //rem <= rem; 
            remain_reg[63:32] <= remain_reg[63:32]; 
            remain_reg[31:1] <= remain_reg[31:1]; 
            remain_reg[0] <= remain_reg[0]; 
            end
            else if((!finish) && (!start)) begin //没有完成也没有重开，则继续执行算法
                state <= state + 1'b1;
                remain_reg[63:32] <= flag ? {temp[30:0], remain_reg[31]} : remain_reg[62:31];
                remain_reg[31:1] <= remain_reg[30:0];
                remain_reg[0] <= flag;
            end else if(!finish) begin
                state <= 0;
                remain_reg[31:0] <= dividend;
                remain_reg[63:32] <= 0;
            end else begin
                state <= 0;
            end
        end
    end
endmodule