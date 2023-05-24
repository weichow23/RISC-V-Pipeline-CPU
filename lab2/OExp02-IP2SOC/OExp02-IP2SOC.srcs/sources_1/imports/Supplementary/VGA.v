//原VGA.V
module VGA(clk_25m, clk_100m, rst, pc, inst, alu_res, mem_wen, 
  dmem_o_data, dmem_i_data, dmem_addr, hs, vs, vga_r, vga_g, vga_b)
/* synthesis syn_black_box black_box_pad_pin="clk_25m,clk_100m,rst,pc[31:0],inst[31:0],alu_res[31:0],mem_wen,dmem_o_data[31:0],dmem_i_data[31:0],dmem_addr[31:0],hs,vs,vga_r[3:0],vga_g[3:0],vga_b[3:0]" */;
  input clk_25m;
  input clk_100m;
  input rst;
  input [31:0]pc;
  input [31:0]inst;
  input [31:0]alu_res;
  input mem_wen;
  input [31:0]dmem_o_data;
  input [31:0]dmem_i_data;
  input [31:0]dmem_addr;
  output hs;
  output vs;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
endmodule