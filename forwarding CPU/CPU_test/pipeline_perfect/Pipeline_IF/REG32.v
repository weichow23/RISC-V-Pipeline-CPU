
module REG32(
    input wire clk, rst, CE,
    input wire [31:0] D,
    
    output reg [31:0] Q
    );
    
    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 32'b0;
        else if (CE)
            Q <= D;
    end
endmodule
