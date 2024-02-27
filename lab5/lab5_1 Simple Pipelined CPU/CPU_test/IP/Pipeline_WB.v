module Pipeline_WB( 
    input[31:0] PC4_in_WB,
    input[31:0] ALU_in_WB,
    input[31:0] DMem_data_WB,
    input[31:0] Imm_in_WB,
    input[1:0] MemtoReg_in_WB,
    input Half_WB,
    input Byte_WB,
    input Sign_WB,
    output[31:0] Data_out_WB
);
    wire [31:0] data;
    assign data = (Byte_WB == 1) ? (
    (ALU_in_WB[1:0] == 2'b00) ? {{24{Sign_WB & DMem_data_WB[7]}}, DMem_data_WB[7:0]} :
    (ALU_in_WB[1:0] == 2'b01) ? {{24{Sign_WB & DMem_data_WB[15]}}, DMem_data_WB[15:8]} :
    (ALU_in_WB[1:0] == 2'b10) ? {{24{Sign_WB & DMem_data_WB[23]}}, DMem_data_WB[23:16]} :
    (ALU_in_WB[1:0] == 2'b11) ? {{24{Sign_WB & DMem_data_WB[31]}}, DMem_data_WB[31:24]} :
    DMem_data_WB
) : (
    (Half_WB == 1) ? (
        (ALU_in_WB[1:0] == 2'b00) ? {{16{Sign_WB & DMem_data_WB[15]}}, DMem_data_WB[15:0]} :
        (ALU_in_WB[1:0] == 2'b01) ? {{16{Sign_WB & DMem_data_WB[23]}}, DMem_data_WB[23:8]} :
        (ALU_in_WB[1:0] == 2'b10) ? {{16{Sign_WB & DMem_data_WB[31]}}, DMem_data_WB[31:16]} :
        DMem_data_WB
    ) : DMem_data_WB
);

    // assign Data_out_WB=MemtoReg_in_WB[1]==1?PC4_in_WB:MemtoReg_in_WB[0]===1?DMem_data_WB:ALU_in_WB;

    assign Data_out_WB = (MemtoReg_in_WB == 2'b00) ? ALU_in_WB :
                    (MemtoReg_in_WB == 2'b01) ? data :
                    (MemtoReg_in_WB == 2'b10) ? PC4_in_WB :
                    Imm_in_WB;

endmodule