`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/01 20:29:14
// Design Name: 
// Module Name: ALU
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
//ALU for 32 bit, including arithmetic operations, logical operations, comparison operations, and shift operations
module ALU32(
    input [31:0] cin0,cin1,
    input [10:0] op,
    output reg[31:0] out,
    output reg cout,overflow,zero
    );
always@(*)
begin
    case(op)
        //add
        11'b00000100000:
            begin
            out=cin0+cin1;
            overflow=((cin0[31]==cin1[31])&&(~out[31]==cin0[31]))?1:0;
            zero=(out==0)?1:0;
            cout=0;
            end
        //addu
        11'b00000100001:
            begin
            {cout,out}=cin0+cin1;
            zero=(out==0)?1:0;
            overflow=0;
            end
        //sub
        11'b00000100010:
            begin
            out=cin0-cin1;
            overflow=((cin0[31]==0&&cin1[31]==1&&out[31]==1)||(cin0[31]==1&&cin1[31]==0&&out[31]==0))?1:0;
            zero=(cin0==cin1)?1:0;
            cout=0;
            end
        //subu
        11'b00000100011:
            begin
            {cout,out}=cin0-cin1;
            zero=(out==0)?1:0;
            overflow=0;
            end
        //and
        11'b00000100100:
            begin
            out=cin0&cin1;
            zero=(out==0)?1:0;
            cout=0;
            overflow=0;
            end
        //or
        11'b00000100101:
            begin
            out=cin0|cin1;
            zero=(out==0)?1:0;
            cout=0;
            overflow=0;
            end
        //xor
        11'b00000100110:
            begin
            out=cin0^cin1;
            zero=(out==0)?1:0;
            cout=0;
            overflow=0;
            end
        //nor
        11'b00000100111:
            begin
            out=~(cin0|cin1);
            zero=(out==0)?1:0;
            cout=0;
            overflow=0;
            end
        //slt
        11'b00000101010:
            begin                        
            if(cin0[31]==1&&cin1[31]==0)
                out=1;
            else if(cin0[31]==0&&cin1[31]==1)
                out=0;
            else 
                out=(cin0<cin1)?1:0;
        overflow=out; 
        zero=(out==0)?1:0;
        cout=0;              
        end
        //sltu
        11'b00000101011:
            begin
                out=(cin0<cin1)?1:0;
                cout=out;
                zero=(out==0)?1:0;
                overflow=0;
            end
        //shl
        11'b00000000100:
            begin
            {cout,out}=cin0<<cin1;
            overflow=0;
            zero=(out==0)?1:0;
            end
        //shr
        11'b00000000110:
            begin
            out=cin0>>cin1;
            cout=cin0[cin1-1];
            overflow=0;
            zero=(out==0)?1:0;
            end
        //sar
        11'b00000000111:
            begin
            out=($signed(cin0))>>>cin1;
            cout=cin0[cin1-1];
            overflow=0;
            zero=(out==0)?1:0;
            end
    endcase
end
endmodule