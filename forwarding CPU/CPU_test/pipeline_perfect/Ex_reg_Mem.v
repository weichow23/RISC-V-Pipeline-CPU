module Ex_reg_Mem( 
    input clk_EXMem,                    //寄存器时�?
    input rst_EXMem,                    //寄存器复
    input en_EXMem,                     //寄存器使�?
    input[31:0] PC_imm_EXMem,           //PC+imm输入
    input[31:0] PC_in_EXMem,            //PC输入
    input[31:0] PC4_in_EXMem,           //PC+4输入
    input valid_in_EXMem,               //有效�?
    input[31:0] Inst_in_EXMem,          //指令输入
    input [4:0] Rd_addr_EXMem,          //写目的寄存器地址输入
    input zero_in_EXMem,                //zero
    input[31:0] ALU_in_EXMem,           //ALU输入
    input[31:0] Rs2_in_EXMem,           //操作�?2输入
    input Branch_in_EXMem,              //beq
    input BranchN_in_EXMem,             //bne
    input[3:0] MemRW_in_EXMem,
    input [1:0]Jump_in_EXMem,           //Jal
    input [1:0] MemtoReg_in_EXMem,      //写回
    input RegWrite_in_EXMem,            //寄存器堆读写

    input Half_in_EXMem, 
    input Byte_in_EXMem,
    input Sign_in_EXMem,
    input [31:0] Imm_in_EXMem,
    output reg Half_out_EXMem,
    output reg Byte_out_EXMem,
    output reg Sign_out_EXMem,
    output reg[31:0] Imm_out_EXMem,    

    output reg[31:0] PC_imm_out_EXMem,  //PC+imm输出
    output reg[31:0] PC_out_EXMem,      //PC输出
    output reg[31:0] PC4_out_EXMem,     //PC+4输出
    output reg valid_out_EXMem,         //有效�?
    output reg[31:0] Inst_out_EXMem,    //指令输出
    output reg[4:0] Rd_addr_out_EXMem,  //写目的寄存器输出
    output reg zero_out_EXMem,          //zero
    output reg[31:0] ALU_out_EXMem,     //ALU输出
    output reg[31:0] Rs2_out_EXMem,     //操作�?2输出
    output reg Branch_out_EXMem,        //Beq
    output reg BranchN_out_EXMem,       //Bne
    output reg[3:0] MemRW_out_EXMem,         //存储器读�?
    output reg [1:0]Jump_out_EXMem,     //Jal
    output reg [1:0]MemtoReg_out_EXMem, //写回
    output reg RegWrite_out_EXMem       //寄存器堆读写
); 
always @(posedge clk_EXMem or posedge rst_EXMem) begin
    if(rst_EXMem==1) begin
        PC_out_EXMem<=0;   
        PC4_out_EXMem<=0;
        Rd_addr_out_EXMem<=0;
        zero_out_EXMem<=0;        
        ALU_out_EXMem<=0;  
        Rs2_out_EXMem<=0; 
        Branch_out_EXMem<=0;       
        BranchN_out_EXMem<=0;       
        MemRW_out_EXMem<=4'b0;      
        Jump_out_EXMem<=0;     
        MemtoReg_out_EXMem<=0;      
        RegWrite_out_EXMem<=0;
        Inst_out_EXMem<=0;
        PC_imm_out_EXMem<=0;
        valid_out_EXMem<=1;

        Half_out_EXMem<=0;
        Byte_out_EXMem<=0;
        Sign_out_EXMem<=0;
        Imm_out_EXMem<=0;
    end
    else if(valid_in_EXMem==0) begin
        PC_out_EXMem<=0;   
        PC4_out_EXMem<=0;
        Rd_addr_out_EXMem<=0;
        zero_out_EXMem<=0;        
        ALU_out_EXMem<=0;  
        Rs2_out_EXMem<=0; 
        Branch_out_EXMem<=0;       
        BranchN_out_EXMem<=0;       
        MemRW_out_EXMem<=4'b0;      
        Jump_out_EXMem<=0;     
        MemtoReg_out_EXMem<=0;      
        RegWrite_out_EXMem<=0;
        Inst_out_EXMem<=32'h0000_0013;
        PC_imm_out_EXMem<=0;
        valid_out_EXMem<=0;

        Half_out_EXMem<=0;
        Byte_out_EXMem<=0;
        Sign_out_EXMem<=0;
        Imm_out_EXMem<=0;
    end
    else if(en_EXMem) begin
        PC_out_EXMem<=PC_in_EXMem;   
        PC4_out_EXMem<=PC4_in_EXMem;
        Rd_addr_out_EXMem<=Rd_addr_EXMem;
        zero_out_EXMem<=zero_in_EXMem;        
        ALU_out_EXMem<=ALU_in_EXMem;  
        Branch_out_EXMem<=Branch_in_EXMem;       
        BranchN_out_EXMem<=BranchN_in_EXMem;           
        Jump_out_EXMem<=Jump_in_EXMem;     
        MemtoReg_out_EXMem<=MemtoReg_in_EXMem;      
        RegWrite_out_EXMem<=RegWrite_in_EXMem;
        Inst_out_EXMem<=Inst_in_EXMem;
        PC_imm_out_EXMem<=PC_imm_EXMem;
        valid_out_EXMem<=valid_in_EXMem;

        //store
        if(MemRW_in_EXMem==4'b1111)begin
            if(Byte_in_EXMem==1) begin
            case(ALU_in_EXMem[1:0])
                2'b00: begin MemRW_out_EXMem=4'b0001;Rs2_out_EXMem<={{24{1'b0}}, Rs2_in_EXMem[7:0]}; end
                2'b01: begin MemRW_out_EXMem=4'b0010;Rs2_out_EXMem<={{16{1'b0}}, Rs2_in_EXMem[7:0], 8'b0}; end
                2'b10: begin MemRW_out_EXMem=4'b0100;Rs2_out_EXMem<={{8{1'b0}}, Rs2_in_EXMem[7:0], 16'b0}; end
                2'b11: begin MemRW_out_EXMem=4'b1000;Rs2_out_EXMem<={Rs2_in_EXMem[7:0], {24{1'b0}}}; end
                default: begin MemRW_out_EXMem=4'b1111;Rs2_out_EXMem<=Rs2_in_EXMem; end
            endcase
            end
        else if(Half_in_EXMem==1) begin
            case(ALU_in_EXMem[1:0])
                2'b00: begin MemRW_out_EXMem=4'b0011;Rs2_out_EXMem<={{16{1'b0}}, Rs2_in_EXMem[15:0]}; end
                2'b01: begin MemRW_out_EXMem=4'b0110;Rs2_out_EXMem<={{8{1'b0}}, Rs2_in_EXMem[15:0],{8{1'b0}}}; end
                2'b10: begin MemRW_out_EXMem=4'b1100;Rs2_out_EXMem<={Rs2_in_EXMem[15:0], 16'b0}; end
                default: begin MemRW_out_EXMem=4'b1111;Rs2_out_EXMem<=Rs2_in_EXMem; end
            endcase
        end
        else
            begin MemRW_out_EXMem=4'b1111;Rs2_out_EXMem<=Rs2_in_EXMem; end
        end
        else begin
            MemRW_out_EXMem<=MemRW_in_EXMem;
            Rs2_out_EXMem<=Rs2_in_EXMem;
        end
        Half_out_EXMem<=Half_in_EXMem;
        Byte_out_EXMem<=Byte_in_EXMem;
        Sign_out_EXMem<=Sign_in_EXMem;
        Imm_out_EXMem<=Imm_in_EXMem;   
    end
end 
endmodule