`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 14:03:11
// Design Name: 
// Module Name: mul32
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
module mul32(
    input clk,
    input start,
    input rst,
    input [31:0] A, //multiplicand
    input [31:0] B, //multiplier
    output reg finish,
    output reg [63:0] res //product    
);
    reg [4:0] cnt;
    wire [31:0] temp_sum;
    reg sign; 
    reg [31:0] A_abs; 
    reg [31:0] B_abs; 
    assign temp_sum = res[63:32] + A_abs; //无符号乘法
    always@(posedge clk or posedge rst) begin
        if(start) begin
            finish <= 0;
        end 
        else if(!finish) begin
            finish <= (cnt == 31);
        end 
        else begin
            finish <= 1;
        end
    end
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            cnt <= 0;
            res <= 0;
            finish <= 1;
            sign <= 0; 
            A_abs <= A; //初始化A的绝对值为A本身（假设为正数）
            B_abs <= B; //初始化B的绝对值为B本身（假设为正数）
            
        end 
        else begin
            if((!finish) && (!start)) begin
                res[63:32] <= res[0] ? {1'b0, temp_sum[31:1]} : {1'b0, res[63:33]};
                res[31:0] <= res[0] ? {temp_sum[0], res[31:1]} : {res[32], res[31:1]};
                cnt <= cnt + 1;
            end 
            else if(!finish) begin
                cnt <= 0;
                sign <= A[31]^B[31]; //得到结果符号位
                if(A[31]) A_abs = ~A + 'b1;  //负数则取原码
                else A_abs = A; 
                if(B[31]) B_abs = ~B + 'b1;
                else B_abs = B; //否则直接赋值
            
                res[63:32] <= 0;
                res[31:0] <= B_abs;
            end 
            else begin
                cnt <= 0;
                if(sign) begin
                    res = ~res + 'b1;
                    sign =~sign;  //保证只取反一次
                end
                else res = res;
            end
        end
    end
endmodule
