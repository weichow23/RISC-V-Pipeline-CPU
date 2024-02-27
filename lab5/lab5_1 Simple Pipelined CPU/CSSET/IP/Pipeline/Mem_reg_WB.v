module Mem_reg_WB( 
input clk_MemWB,
input rst_MemWB,
input en_MemWB,
input[31:0] PC4_in_MemWB,
input[4:0] Rd_addr_MemWB,
input[31:0] ALU_in_MemWB,
// input[31:0] DMem_data_MemWB,//load data
input[1:0] MemtoReg_in_MemWB,
input RegWrite_in_MemWB, 
input [31:0] Imm_in_MemWB,
input Half_in_MemWB,
input Byte_in_MemWB,
input Sign_in_MemWB,
output reg Half_out_MemWB,
output reg Byte_out_MemWB,
output reg Sign_out_MemWB,
output reg[31:0] PC4_out_MemWB,
output reg[4:0] Rd_addr_out_MemWB, 
output reg[31:0] ALU_out_MemWB,
// output reg[31:0] DMem_data_out_MemWB,
// output [31:0] DMem_data_out_MemWB,
output reg[1:0] MemtoReg_out_MemWB,
output reg RegWrite_out_MemWB,
output reg[31:0] Imm_out_MemWB
);
always @(posedge clk_MemWB or posedge rst_MemWB) begin
    if(rst_MemWB==1) begin
        PC4_out_MemWB<=0;
        Rd_addr_out_MemWB<=0;
        ALU_out_MemWB<=0;
        // DMem_data_out_MemWB<=0;
        MemtoReg_out_MemWB<=0;
        RegWrite_out_MemWB<=0;
        Imm_out_MemWB<=0;

        Half_out_MemWB<=0;
        Byte_out_MemWB<=0;
        Sign_out_MemWB<=0;
    end
    else begin
        PC4_out_MemWB<=PC4_in_MemWB;
        Rd_addr_out_MemWB<=Rd_addr_MemWB;
        ALU_out_MemWB<=ALU_in_MemWB;

        // load
        // if(Byte_in_MemWB==1)begin
        //     case(ALU_in_MemWB[1:0])
        //         2'b00:DMem_data_out_MemWB = {{24{Sign_in_MemWB & DMem_data_MemWB[7]}},DMem_data_MemWB[7:0]};
        //         2'b01:DMem_data_out_MemWB = {{24{Sign_in_MemWB & DMem_data_MemWB[15]}},DMem_data_MemWB[15:8]};
        //         2'b10:DMem_data_out_MemWB = {{24{Sign_in_MemWB & DMem_data_MemWB[23]}},DMem_data_MemWB[23:16]};
        //         2'b11:DMem_data_out_MemWB = {{24{Sign_in_MemWB & DMem_data_MemWB[31]}},DMem_data_MemWB[31:24]};
        //     default:DMem_data_out_MemWB = DMem_data_MemWB;
        // endcase
        // end
        // else if(Half_in_MemWB==1)begin
        //     case(ALU_in_MemWB[1:0])
        //         2'b00:DMem_data_out_MemWB = {{16{Sign_in_MemWB & DMem_data_MemWB[15]}},DMem_data_MemWB[15:0]};
        //         2'b01:DMem_data_out_MemWB = {{16{Sign_in_MemWB & DMem_data_MemWB[23]}},DMem_data_MemWB[23:8]};
        //         2'b10:DMem_data_out_MemWB = {{16{Sign_in_MemWB & DMem_data_MemWB[31]}},DMem_data_MemWB[31:16]};
        //         default:DMem_data_out_MemWB = DMem_data_MemWB;
        //     endcase
        // end
        // else
        //     DMem_data_out_MemWB = DMem_data_MemWB;

        MemtoReg_out_MemWB<=MemtoReg_in_MemWB;
        RegWrite_out_MemWB<=RegWrite_in_MemWB;
        Imm_out_MemWB<=Imm_in_MemWB;


        Half_out_MemWB<=Half_in_MemWB;
        Byte_out_MemWB<=Byte_in_MemWB;
        Sign_out_MemWB<=Sign_in_MemWB;
    end
end 

// assign DMem_data_out_MemWB = (Byte_in_MemWB == 1) ? (
//     (ALU_in_MemWB[1:0] == 2'b00) ? {{24{Sign_in_MemWB & DMem_data_MemWB[7]}}, DMem_data_MemWB[7:0]} :
//     (ALU_in_MemWB[1:0] == 2'b01) ? {{24{Sign_in_MemWB & DMem_data_MemWB[15]}}, DMem_data_MemWB[15:8]} :
//     (ALU_in_MemWB[1:0] == 2'b10) ? {{24{Sign_in_MemWB & DMem_data_MemWB[23]}}, DMem_data_MemWB[23:16]} :
//     (ALU_in_MemWB[1:0] == 2'b11) ? {{24{Sign_in_MemWB & DMem_data_MemWB[31]}}, DMem_data_MemWB[31:24]} :
//     DMem_data_MemWB
// ) : (
//     (Half_in_MemWB == 1) ? (
//         (ALU_in_MemWB[1:0] == 2'b00) ? {{16{Sign_in_MemWB & DMem_data_MemWB[15]}}, DMem_data_MemWB[15:0]} :
//         (ALU_in_MemWB[1:0] == 2'b01) ? {{16{Sign_in_MemWB & DMem_data_MemWB[23]}}, DMem_data_MemWB[23:8]} :
//         (ALU_in_MemWB[1:0] == 2'b10) ? {{16{Sign_in_MemWB & DMem_data_MemWB[31]}}, DMem_data_MemWB[31:16]} :
//         DMem_data_MemWB
//     ) : DMem_data_MemWB
// );
endmodule 