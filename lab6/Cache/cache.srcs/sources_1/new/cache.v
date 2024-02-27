`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/01 11:52:17
// Design Name: 
// Module Name: cache
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


module cache(
  input             clk,
  input             rst,
  input[31:0]       data_cpu_write, //data from cpu
  input[127:0]      data_mem_read, //data from mem
  input[31:0]       addr_cpu, //addr from cpu
  input             wr_cpu, //cpu write enable
  input             rd_cpu, //cpu read enable
  input             ready_mem, //mem ready
  output reg        wr_mem, //mem write enable
  output reg        rd_mem, //mem read enable
  output reg[127:0] data_mem_write, //data to mem
  output reg[31:0]  data_cpu_read,  // data to cpu
  output reg[31:0]  addr_mem //cache for mem addr
);

wire dirty;
reg[1:0] state;
reg[1:0] next_state;
wire cpu_valid;
wire[22:0] cpu_tag;
wire[6:0] cpu_id;
wire[1:0] cpu_offset;
assign cpu_valid=rd_cpu|wr_cpu;

wire[25:0]  tag_out_orig0;
wire[25:0]  tag_out_orig1;
wire[22:0]  tag_out_new0;
wire[22:0]  tag_out_new1;
reg[25:0]   tag_in0;
reg[25:0]   tag_in1;
assign tag_out_new0=tag_out_orig0[22:0],tag_out_new1=tag_out_orig1[22:0];
assign cpu_tag=addr_cpu[31:9];
assign cpu_id=addr_cpu[8:2];
assign cpu_offset=addr_cpu[1:0];
assign dirty=tag_out_orig1[23]?tag_out_orig0[24]:tag_out_orig1[24];

reg wt_0;
reg wt_1;
wire[127:0] d_out0;
wire[127:0] d_out1;
reg[127:0] d_in0;
reg[127:0] d_in1;
Data_ram d0(
  .clk(~clk),
  .addr(cpu_id),
  .rst(rst),
  .en(1),
  .wt(wt_0),
  .din(d_in0),
  .dout(d_out0)
);
Data_ram d1(
  .clk(~clk),
  .addr(cpu_id),
  .rst(rst),
  .en(1),
  .wt(wt_1),
  .din(d_in1),
  .dout(d_out1)
);
reg wt_t0;
reg wt_t1;
Tag_ram t0(
  .clk(~clk),
  .addr(cpu_id),
  .rst(rst),
  .en(1),
  .wt(wt_t0),
  .din(tag_in0),
  .dout(tag_out_orig0)
);
Tag_ram t1(
  .clk(~clk),
  .addr(cpu_id),
  .rst(rst),
  .en(1),
  .wt(wt_t1),
  .din(tag_in1),
  .dout(tag_out_orig1)
);
reg hit;
// change state every posedge clk
always @(posedge clk or posedge rst) begin
  if(rst) begin 
    state<=0;
    wt_t0<=0;
    wt_t1<=0;
    wt_0<=0;
    wt_1<=0;
  end
  else 
    state<=next_state;
end 

always @ (*) begin
  case(state)
  //IDLE
  2'b00: begin
    wt_t0<=0;
    wt_t1<=0;   
    wt_0<=0;
    wt_1<=0;
    if(cpu_valid) 
      next_state<=2'b01; 
    else
      next_state<=2'b00;
  end
  //Compare Tag
  2'b01:begin
  //hit begin
    if(tag_out_new0==cpu_tag||tag_out_new1==cpu_tag) begin 
      hit<=1;
      next_state<=2'b00;
      wt_t0<=1;
      wt_t1<=1;
      if(tag_out_new0==cpu_tag) begin
        if(rd_cpu) begin 
          tag_in0<={3'b101,tag_out_new0[22:0]}; 
          tag_in1<={tag_out_orig1[25:24],1'b0,tag_out_new1[22:0]};
          case(cpu_offset)
            2'b00:  data_cpu_read<=d_out0[31:0] ;
            2'b01:  data_cpu_read<=d_out0[63:32]; 
            2'b10:  data_cpu_read<=d_out0[95:64]; 
            2'b11:  data_cpu_read<=d_out0[127:96]; 
          endcase
        end
        else if(wr_cpu) begin 
          tag_in0<={3'b111,tag_out_new0[22:0]};
          tag_in1<={tag_out_orig1[25:24],1'b0,tag_out_new1[22:0]};
          case(cpu_offset)
            2'b00: d_in0<={d_out0[127:32],data_cpu_write}; 
            2'b01: d_in0<={d_out0[127:64],data_cpu_write,d_out0[31:0]}; 
            2'b10: d_in0<={d_out0[127:96],data_cpu_write,d_out0[63:0]}; 
            2'b11: d_in0<={data_cpu_write,d_out0[95:0]}; 
          endcase
          wt_0<=1;
        end
      end
      else if(tag_out_new1==cpu_tag) begin
        if(rd_cpu) begin 
          tag_in1<={3'b101,tag_out_new1[22:0]};
          tag_in0<={tag_out_orig0[25:24],1'b0,tag_out_new0[22:0]};
          case(cpu_offset)
            2'b00:  data_cpu_read<=d_out1[31:0] ;
            2'b01:  data_cpu_read<=d_out1[63:32]; 
            2'b10:  data_cpu_read<=d_out1[95:64]; 
            2'b11:  data_cpu_read<=d_out1[127:96]; 
          endcase
        end
        else if(wr_cpu) begin 
          tag_in1<={3'b111,tag_out_new1[22:0]};
          tag_in0<={tag_out_orig0[25:24],1'b0,tag_out_new0[22:0]};
          case(cpu_offset)
            2'b00: d_in1<={d_out1[127:32],data_cpu_write}; 
            2'b01: d_in1<={d_out1[127:64],data_cpu_write,d_out1[31:0]}; 
            2'b10: d_in1<={d_out1[127:96],data_cpu_write,d_out1[63:0]}; 
            2'b11: d_in1<={data_cpu_write,d_out1[95:0]}; 
          endcase
          wt_1<=1;
        end //wt
      end //the second way
    end 
    //hit end
    //not hit, replace
    else if(dirty) begin  
      hit<=0;next_state<=2'b10;
      end
    else begin 
      hit<=0;next_state<=2'b11;
      end
  end
  //Write Back
  2'b10:begin
    addr_mem = {cpu_tag, cpu_id, 4'b0000};  //我新加的
    if(ready_mem) begin //write back
      next_state<=2'b11;
      wr_mem<=1;
      data_mem_write<=tag_out_orig1[23]?d_out0:d_out1;
    end
    else 
      next_state<=2'b10;
  end
  //Allocate
  2'b11:begin
    addr_mem = {cpu_tag, cpu_id, 4'b0000}; //我新加的
    if(ready_mem) begin
      next_state<=2'b00;
      rd_mem<=1;
      if(tag_out_orig1[23])begin  //the second data
        d_in0<=data_mem_read; 
        wt_0<=1;
        tag_in0<={3'b000,cpu_tag[22:0]};
        wt_t0<=1;
      end
      else if(tag_out_orig0[23])begin   //the second data in
        d_in1<=data_mem_read;
        tag_in1<={3'b000,cpu_tag[22:0]};
        wt_1<=1;
        wt_t1<=1;
      end
      else begin   //the first data in 
        d_in0<=data_mem_read;
        wt_0<=1;
        tag_in0<={3'b000,cpu_tag[22:0]};
        wt_t0<=1;
      end
    end
    else
      next_state<=2'b11; 
  end
  default:  
    next_state<=2'b00; 
  endcase
end
endmodule