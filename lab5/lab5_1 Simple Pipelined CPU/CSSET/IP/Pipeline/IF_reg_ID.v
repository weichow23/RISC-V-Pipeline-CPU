module IF_reg_ID(
    input clk_IFID,
    input rst_IFID,
    input en_IFID,
    input[31:0] PC_in_IFID,
    input[31:0] inst_in_IFID,
    output reg[31:0] PC_out_IFID,
    output reg[31:0] inst_out_IFID
);
    always @(posedge clk_IFID or posedge rst_IFID) begin
        if(rst_IFID==1'b1) begin
            PC_out_IFID<= 0 ;
            inst_out_IFID<=0;
        end
        else begin
            if(en_IFID) begin
                PC_out_IFID<=PC_in_IFID;
                inst_out_IFID<=inst_in_IFID;
            end
        end
    end
endmodule
