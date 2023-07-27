module Pipeline_Ex( 
    input[31:0] PC_in_EX,
    input[31:0] Rs1_in_EX,
    input[31:0] Rs2_in_EX,
    input[31:0] Imm_in_EX,
    input ALUSrc_B_in_EX,
    input[3:0] ALU_control_in_EX,
    input Auipc_in_EX,
    input Half_in_EX,
    input Byte_in_EX,
    input Sign_Load_in_EX,
    output reg Sign_out_EX,
    output reg Half_out_EX,
    output reg Byte_out_EX,
    output reg[31:0] PC_out_EX,
    output reg[31:0] PC4_out_EX,
    output zero_out_EX,
    output[31:0] ALU_out_EX,
    output reg[31:0] Rs2_out_EX
);
    wire [31:0] ALU_B,ALU_A;
    always @*begin
        PC4_out_EX=PC_in_EX+4;
        PC_out_EX=PC_in_EX+Imm_in_EX;    
        Rs2_out_EX=Rs2_in_EX;
        Half_out_EX=Half_in_EX;
        Byte_out_EX=Byte_in_EX;
        Sign_out_EX=Sign_Load_in_EX;
    end
    assign ALU_B=ALUSrc_B_in_EX==1?Imm_in_EX:Rs2_in_EX;
    MUX2T1_32 mux(
        .I0(Rs1_in_EX),  // input wire [31 : 0] I0
        .I1(PC_in_EX),  // input wire [31 : 0] I1
        .s(Auipc_in_EX),    // input wire s
        .o(ALU_A)    // output wire [31 : 0] o  
    );
    ALU_more u_ALU_more(
        .A     (ALU_A),
        .B     (ALU_B),
        .ALUop (ALU_control_in_EX),
        .res   (ALU_out_EX),
        .zero  (zero_out_EX)
    );
endmodule