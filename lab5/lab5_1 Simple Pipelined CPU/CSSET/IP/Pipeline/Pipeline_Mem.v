module Pipeline_Mem( 
    input zero_in_Mem, //zero
    input Branch_in_Mem, //beq
    input BranchN_in_Mem, //bne
    input [1:0]Jump_in_Mem, //jal
    // output PCSrc //PC选控制输出择
    output[1:0] PCSrc //PC选控制输出择
);
    // assign PCSrc[0]=(Branch_in_Mem&zero_in_Mem)|(BranchN_in_Mem&(~zero_in_Mem))|Jump_in_Mem[0];
    // assign PCSrc[1]=Jump_in_Mem[1];

    assign PCSrc = {Jump_in_Mem[1],{(Branch_in_Mem & zero_in_Mem) | (BranchN_in_Mem & (~zero_in_Mem))|Jump_in_Mem[0]}};

endmodule