`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/08 11:32:30
// Design Name: 
// Module Name: FSM
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
//1110010
`timescale 10ns/1ns
module seq(
    input clk,
	input reset,
	input in,
	output out
);
reg [2:0] curr_state;
reg [2:0] next_state;
 //state definition
parameter [2:0] Q0 = 3'b000,
                Q1=3'b001,
                Q2=3'b010,
                Q3=3'b011,
                Q4=3'b100,
                Q5=3'b101,
                Q6=3'b110,
                Q7=3'b111;
 //first segment:state transfer
always @(posedge clk or negedge reset)
    begin
        if(!reset)
            curr_state<=Q0;
        else
            curr_state<= next_state;
    end
//second segment:transfer condition
always @(curr_state or in)
    begin
        case(curr_state)
            Q0: begin
                    if(in==0) next_state=Q0;
                    else next_state=Q1;
                end
            Q1: begin
                    if(in==0) next_state=Q0;
                    else next_state=Q2;
                end
            Q2: begin
                    if(in==0) next_state=Q0;
                    else next_state=Q3;
                end
            Q3: begin
                    if(in==0) next_state=Q4;
                    else next_state=Q3;
                end
            Q4: begin
                    if(in==0) next_state=Q5;
                    else next_state=Q1;
                end
            Q5: begin
                    if(in==0) next_state=Q0;
                    else next_state=Q6;
                end
            Q6: begin
                    if(in==0) next_state=Q7;
                    else next_state=Q2;
                end
            Q7: begin
                    if(in==0) next_state=Q0;
                    else next_state=Q1;
                end
            default: next_state=Q0;
        endcase
    end
//three segment: state output
assign out=(curr_state== Q7)?1:0;
endmodule