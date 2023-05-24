`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/01 20:52:02
// Design Name: 
// Module Name: ALU_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module ALU_tb( ); 
    reg [10:0] op;
    reg [31:0] in0,in1;
    wire [31:0] out;
    wire carryout,overflow,zero;
    ALU32 alu(.op(op),.cin0(in0),.cin1(in1),.cout(carryout),.overflow(overflow),.zero(zero),.out(out));
    initial
        begin
        op=11'b00000100000; //add       
        in0=32'hf0000000;
        in1=32'h00000000;
        #100  
        op=11'b00000100100; //and  
        #100  
        op=11'b00000100001; //addu   
        #100 
        op=11'b00000100010; //sub          
        #100  
        op=11'b00000100011; //subu              
        #100  
        op=11'b00000100110; //xor        
        #100 
        op=11'b00000100111; //nor        
        #100  
        op=11'b00000101010; //slt      
        #100  
        op=11'b00000101011; //sltu       
        #100  
        op=11'b00000000100; //shl
        #100  
        op=11'b00000000110; //shr
        #100  
        op=11'b00000000111; //sar
    end
    always@(*) begin
        #20
        in0 <= in0-1;
        in1 <= in1+1;
    end    
    
endmodule
