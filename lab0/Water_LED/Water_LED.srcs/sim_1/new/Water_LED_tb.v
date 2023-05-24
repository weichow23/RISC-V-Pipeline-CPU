`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/01 15:36:55
// Design Name: 
// Module Name: Water_LED_tb
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

module Water_LED_tb;
    reg CLK_i;
    reg RSTn_i;
    wire  [3:0]LED_o;
Water_LED Water_LED_U(   //创建仿真实例用于仿真
    .CLK_i(CLK_i),
    .RSTn_i(RSTn_i),
    .LED_o(LED_o)
);
    always #5 CLK_i = ~CLK_i;   //每5mhz翻转
    //设置初始值
    initial begin    
        CLK_i = 0;
        RSTn_i = 0; 
        #100 RSTn_i = 1;     //100mhz后复位
    end
endmodule