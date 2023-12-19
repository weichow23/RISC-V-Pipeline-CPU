module Pipeline_Ex( 
input[31:0] PC_in_EX,
input[31:0] Rs1_in_EX,
input[31:0] Rs2_in_EX,
input[31:0] Imm_in_EX ,
input ALUSrc_B_in_EX ,
input[3:0] ALU_control_in_EX,

input Auipc_in_EX,
input Half_in_EX,
input Byte_in_EX,
input Sign_Load_in_EX,

//forward realted
input [31:0] A_src_EXMem,B_src_EXMem,A_src_MemWB,B_src_MemWB,
input [1:0] A_forward,B_forward,

output reg Sign_out_EX,
output reg Half_out_EX,
output reg Byte_out_EX,
// output Sign_out_EX,
// output Half_out_EX,
// output Byte_out_EX,

// output  [31:0] PC_out_EX, //在没有冒险的适合这里是reg，不知道会不会有时序问题
// output  [31:0] PC4_out_EX,

output reg [31:0] PC_out_EX, //在没有冒险的适合这里是reg，不知道会不会有时序问题
output reg [31:0] PC4_out_EX,

output  zero_out_EX,
output  [31:0] ALU_out_EX,
// output  [31:0] Rs2_out_EX
output reg [31:0] Rs2_out_EX
);
    wire [31:0] ALU_A_raw,ALU_A,ALU_B,Rs2_forward;
    // assign    PC4_out_EX=PC_in_EX+4;
    // assign    PC_out_EX=PC_in_EX+Imm_in_EX;    
    // assign    Rs2_out_EX=Rs2_in_EX;

    // assign Half_out_EX=Half_in_EX;
    // assign Byte_out_EX=Byte_in_EX;
    // assign Sign_out_EX=Sign_Load_in_EX;

    always @*begin
        PC4_out_EX=PC_in_EX+4;
        PC_out_EX=PC_in_EX+Imm_in_EX;    
        Rs2_out_EX=Rs2_forward;
        Half_out_EX=Half_in_EX;
        Byte_out_EX=Byte_in_EX;
        Sign_out_EX=Sign_Load_in_EX;
    end

    assign Rs2_forward=(B_forward==2'b00)?Rs2_in_EX:((B_forward==2'b10)?B_src_EXMem:((B_forward==2'b01)?B_src_MemWB:32'b0));

    MUX2T1_32 mux(
        .I0(Rs1_in_EX),  // input wire [31 : 0] I0
        .I1(PC_in_EX),  // input wire [31 : 0] I1
        .s(Auipc_in_EX),    // input wire s
        .o(ALU_A_raw)    // output wire [31 : 0] o  
    );

    assign ALU_A=(A_forward==2'b00)?ALU_A_raw:((A_forward==2'b10)?A_src_EXMem:((A_forward==2'b01)?A_src_MemWB:32'b0));
    assign ALU_B=ALUSrc_B_in_EX==1?Imm_in_EX:Rs2_forward;

    ALU_more u_ALU_more(
        .A     (ALU_A),
        .B     (ALU_B),
        .ALUop (ALU_control_in_EX),
        .res   (ALU_out_EX),
        .zero  (zero_out_EX)
    );

endmodule