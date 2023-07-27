`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/02 20:51:19
// Design Name: 
// Module Name: cache_tb
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


module cache_tb();
    reg clk;
    reg rst;
    reg[31:0] data_cpu_write;
    reg[127:0] data_mem_read;
    reg[31:0] addr_cpu;
    reg wr_cpu;
    reg rd_cpu;
    reg ready_mem;
    wire wr_mem;
    wire rd_mem;
    wire[127:0] data_mem_write;
    wire[31:0] data_cpu_read;
    wire[31:0]  addr_mem;
cache cache(
    .clk(clk),
    .rst(rst),
    .data_cpu_write(data_cpu_write),
    .data_mem_read(data_mem_read),
    .addr_cpu(addr_cpu),
    .wr_cpu(wr_cpu),
    .rd_cpu(rd_cpu),
    .ready_mem(ready_mem),
    .wr_mem(wr_mem),
    .rd_mem(rd_mem),
    .data_mem_write(data_mem_write),
    .data_cpu_read(data_cpu_read),
    .addr_mem(addr_mem)      
);

always #5 clk=~clk;
initial begin
    clk=0;
    rst=1;
    ready_mem=1;
    #2;
    rst=0;
    //read miss
    #8;
    addr_cpu=32'hA0000000;
    wr_cpu=0;
    rd_cpu=1;
    data_mem_read=128'h11111111222222223333333344444444;
    //read hit
    #40;
    addr_cpu=32'hA0000004;
    wr_cpu=0;
    rd_cpu=1;
    //write hit
    #40;
    addr_cpu=32'hA0000002;
    wr_cpu=1;
    rd_cpu=0;
    data_cpu_write=32'hBBBBBBBB;
    //write miss
    #40;
    addr_cpu=32'hB0000000;
    wr_cpu=1;
    rd_cpu=0;
    data_cpu_write=32'hDDDDDDDD;
    data_mem_read=128'h22222222333333334444444455555555;
    //read hit
    #40;
    addr_cpu=32'hB0000000;
    wr_cpu=0;
    rd_cpu=1;
    //write miss + write back
    #40;
    addr_cpu=32'hC0000000;
    wr_cpu=1;
    rd_cpu=0;
    data_cpu_write=32'hEEEEEEEE;
    data_mem_read=128'h66666666777777778888888899999999;
    //read hit
    #40;
    addr_cpu=32'hC0000004;
    wr_cpu=0;
    rd_cpu=1;
end
endmodule