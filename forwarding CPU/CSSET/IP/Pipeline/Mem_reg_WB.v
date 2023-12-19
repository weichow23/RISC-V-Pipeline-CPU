module Mem_reg_WB( 
    input clk_MemWB,                //寄存器时
    input rst_MemWB,                //寄存器复位
    input en_MemWB,                 //寄存器使能
    input[31:0] PC4_in_MemWB,       //PC+4输入
    input[31:0] PC_in_MemWB,        //PC输入
    input[31:0] Inst_in_MemWB,      //inst输入
    input valid_in_MemWB,           //inst有效
    input[4:0] Rd_addr_MemWB,       //写目的地址输入
    input[31:0] ALU_in_MemWB,       //ALU输入
    input[31:0] Dmem_data_MemWB,    //存储器数据输入
    input[1:0] MemtoReg_in_MemWB,   //写回
    input RegWrite_in_MemWB,        //寄存器堆读写

    input [31:0] Imm_in_MemWB,
    input Half_in_MemWB,
    input Byte_in_MemWB,
    input Sign_in_MemWB,

    output reg Half_out_MemWB,
    output reg Byte_out_MemWB,
    output reg Sign_out_MemWB,

    output reg[31:0] PC4_out_MemWB, //PC+4输出
    output reg[31:0] PC_out_MemWB,  //PC输出
    output reg[31:0] Inst_out_MemWB,//inst输出
    output reg valid_out_MemWB,     //inst有效
    output reg[4:0] Rd_addr_out_MemWB, //写目的地址输出
    output reg[31:0] ALU_out_MemWB,  //ALU输出
    output reg[31:0] DMem_data_out_MemWB, //存储器数据输入
    output reg[1:0] MemtoReg_out_MemWB, //寄存器堆读写
    output reg RegWrite_out_MemWB,

    output reg[31:0] Imm_out_MemWB
);
always @(posedge clk_MemWB or posedge rst_MemWB) begin
    if(rst_MemWB==1) begin
        PC4_out_MemWB<=0;
        Rd_addr_out_MemWB<=0;
        ALU_out_MemWB<=0;
        DMem_data_out_MemWB<=0;
        MemtoReg_out_MemWB<=0;
        RegWrite_out_MemWB<=0;
        PC_out_MemWB<=0;
        valid_out_MemWB<=1;
        Inst_out_MemWB<=0;
        
        Imm_out_MemWB<=0;
        Half_out_MemWB<=0;
        Byte_out_MemWB<=0;
        Sign_out_MemWB<=0;
    end
    else if(en_MemWB==1) begin
        PC4_out_MemWB<=PC4_in_MemWB;
        Rd_addr_out_MemWB<=Rd_addr_MemWB;
        ALU_out_MemWB<=ALU_in_MemWB;
        DMem_data_out_MemWB<=Dmem_data_MemWB;
        MemtoReg_out_MemWB<=MemtoReg_in_MemWB;
        RegWrite_out_MemWB<=RegWrite_in_MemWB;
        PC_out_MemWB<=PC_in_MemWB;
        valid_out_MemWB<=1;
        Inst_out_MemWB<=Inst_in_MemWB;

        Imm_out_MemWB<=Imm_in_MemWB;
        Half_out_MemWB<=Half_in_MemWB;
        Byte_out_MemWB<=Byte_in_MemWB;
        Sign_out_MemWB<=Sign_in_MemWB;
    end
    else if(valid_in_MemWB==0)begin
        PC4_out_MemWB<=0;
        Rd_addr_out_MemWB<=0;
        ALU_out_MemWB<=0;
        DMem_data_out_MemWB<=0;
        MemtoReg_out_MemWB<=0;
        RegWrite_out_MemWB<=0;
        PC_out_MemWB<=0;
        valid_out_MemWB<=0;
        Inst_out_MemWB<=32'h0000_0013;

        Imm_out_MemWB<=0;
        Half_out_MemWB<=0;
        Byte_out_MemWB<=0;
        Sign_out_MemWB<=0;
    end
end 
endmodule 