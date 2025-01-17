module Pipeline_Mem( 
    input zero_in_Mem, //zero
    input Branch_in_Mem, //beq
    input BranchN_in_Mem, //bne
    input [1:0]Jump_in_Mem, //jal

    output[1:0] PCSrc //PC选控制输出择
    // output reg[1:0] PCSrc //PC选控制输出择
);

    assign PCSrc = {Jump_in_Mem[1],{(Branch_in_Mem & zero_in_Mem) | (BranchN_in_Mem & (~zero_in_Mem))|Jump_in_Mem[0]}};
    // always@*begin
    //     PCSrc = {Jump_in_Mem[1],{(Branch_in_Mem & zero_in_Mem) | (BranchN_in_Mem & (~zero_in_Mem))|Jump_in_Mem[0]}};
    // end
endmodule