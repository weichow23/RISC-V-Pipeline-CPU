module REG32(
    input clk,
    input rst,
    input [31:0] D,
    input CE,
    output reg [31:0] Q
    );
    always@(posedge clk or posedge rst) begin
        if(rst==1) Q<=32'b0;
        else if(CE) Q<=D;
    end
endmodule