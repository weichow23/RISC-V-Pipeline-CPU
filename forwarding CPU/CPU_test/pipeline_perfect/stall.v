`timescale 1ns / 1ps

module stall(
    input rst_stall,             //复位
    input RegWrite_out_IDEX,     //ִ执行阶段寄存器控�??
    input [4:0]Rd_addr_out_IDEX, //ִ执行阶段寄存器写入地�??
    input [4:0]Rd_addr_out_EXMem,//访存阶段寄存器写入地�??
    input [4:0]Rs1_addr_ID,      //译码阶段寄存器读取地�??1
    input [4:0]Rs2_addr_ID,      //译码阶段寄存器读取地�??2
    input [1:0]MemToReg_EX,
    input Rs1_used,              //Rs1被使�??
    input Rs2_used,              //Rs2被使�??
    input Branch_ID,             //译码阶段beq
    input BranchN_ID,            //译码阶段bne
    input Jump_ID,               //译码阶段jal
    input Branch_out_IDEX,       //执行阶段beq
    input BranchN_out_IDEX,      //ִ执行阶段bne
    input Jump_out_IDEX,         //执行阶段jal
    input Branch_out_EXMem,      //访存阶段beq
    input BranchN_out_EXMem,     //访存阶段bne
    input Jump_out_EXMem,        //访存阶段jal
    output wire en_IF,           //流水线寄存器的使能信号及NOP信号
    output wire en_IFID,
    output wire NOP_IDEX,
    output wire NOP_IFID
    );
    reg data_stall, control_stall;
    always@*begin
        if(rst_stall)begin 
            data_stall <= 1'b0; 
            control_stall <= 1'b0; 
        end
        else begin
            // data stall
            // memory
            if(MemToReg_EX==2'b01 && (RegWrite_out_IDEX && Rs1_used) && (Rs1_addr_ID != 5'b00000) && (Rd_addr_out_IDEX == Rs1_addr_ID))
                data_stall <= 1'b1; 
            else if(MemToReg_EX==2'b01 && (RegWrite_out_IDEX && Rs2_used) && (Rs2_addr_ID != 5'b00000) && (Rd_addr_out_IDEX == Rs2_addr_ID))
                data_stall <= 1'b1; 
             // execute

            // no data stall
            else
                data_stall <= 1'b0; 
            // control stall
            if((Branch_ID || BranchN_ID || Jump_ID) || (Branch_out_IDEX || BranchN_out_IDEX || Jump_out_IDEX))
                control_stall <= 1'b1; 
            // no control stall
            else 
                control_stall <= 1'b0; 
        end
    end
    assign en_IF = ~data_stall & ~control_stall; 
    assign en_IFID = ~data_stall; 
    assign NOP_IDEX = data_stall; 
    assign NOP_IFID = control_stall & (~data_stall); 
endmodule