`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/16 10:14:40
// Design Name: 
// Module Name: CPU_test
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


module CPU_test(
    input clk,
    input rst
    );
    wire CPU_MIO;
    wire [31:0] Addr,DataIn,Inst,DataOut,PC;
    wire [31:0] PC_out_IF,PC_out_ID,inst_ID,PC_out_EX,Data_out_WB;
    wire [3:0] MemRW,MemRW_EX,MemRW_Mem;
    RAM_B_0 RAM_B (
      .clka(~clk),    // input wire clka
      .wea(MemRW_Mem),      // input wire [3 : 0] wea
      .addra(Addr[11:2]),  // input wire [9 : 0] addra
      .dina(DataIn),    // input wire [31 : 0] dina
      .douta(DataOut)  // output wire [31 : 0] douta
    );
    ROM_D_0 ROM_D (
      .a(PC_out_IF[11:2]),      // input wire [9 : 0] a
      .spo(Inst)  // output wire [31 : 0] spo
    );
    Pipeline_CPU u_Pipeline_CPU(
    .clk       ( clk       ),
    .rst       ( rst       ),
    .Data_in   ( DataOut   ),
    .inst_IF   ( Inst   ),
    .PC_out_IF ( PC_out_IF ),
    .PC_out_ID ( PC_out_ID ),
    .inst_ID   ( inst_ID   ),
    .PC_out_EX ( PC_out_EX ),
    .MemRW_EX  ( MemRW_EX  ),
    .MemRW_Mem ( MemRW_Mem ),
    .Addr_out  ( Addr  ),
    .Data_out  ( DataIn  ),
    .Data_out_WB  ( Data_out_WB  )
    );

endmodule
