`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/20 15:16:07
// Design Name: 
// Module Name: SSeg_map
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


module SSeg_map(input[63:0]Disp_num, 
				// input ecall,
				// input ill_instr,
				// input INT0,
				input [31:0] mcause,
                output[63:0]Seg_map
);

assign Seg_map = {Disp_num[0], Disp_num[4],  Disp_num[16], Disp_num[25], Disp_num[17], Disp_num[5],  Disp_num[12], Disp_num[24], 							 
					Disp_num[1], Disp_num[6],  Disp_num[18], Disp_num[27], Disp_num[19], Disp_num[7],  Disp_num[13], Disp_num[26], 
					Disp_num[2], Disp_num[8],  Disp_num[20], Disp_num[29], Disp_num[21], Disp_num[9],  Disp_num[14], Disp_num[28], 
					Disp_num[3], Disp_num[10], Disp_num[22], Disp_num[31], Disp_num[23], Disp_num[11], Disp_num[15], Disp_num[30],
					 // Copied right part
					Disp_num[0], Disp_num[4],  Disp_num[16], Disp_num[25], Disp_num[17], Disp_num[5],  Disp_num[12], Disp_num[24], 
					Disp_num[1], Disp_num[6],  Disp_num[18], Disp_num[27], Disp_num[19], Disp_num[7],  Disp_num[13], Disp_num[26], 
					Disp_num[2], Disp_num[8],  Disp_num[20], Disp_num[29], Disp_num[21], Disp_num[9],  Disp_num[14], Disp_num[28], 
					Disp_num[3], Disp_num[10], Disp_num[22], Disp_num[31], Disp_num[23], Disp_num[11], Disp_num[15], Disp_num[30]};

// assign Seg_map = 
//     (mcause == {1'b1, 31'd11}) ? {2{32'hf791a813}} : //INT
//     (mcause == {1'b0, 31'd11}) ? {2{32'h7545bc58}} : //ecall
//     (mcause == {1'b0, 31'd2}) ? {2{32'hfdf9ff9f}} :  //ill
//     {Disp_num[0], Disp_num[4],  Disp_num[16], Disp_num[25], Disp_num[17], Disp_num[5],  Disp_num[12], Disp_num[24], 							 
//     Disp_num[1], Disp_num[6],  Disp_num[18], Disp_num[27], Disp_num[19], Disp_num[7],  Disp_num[13], Disp_num[26], 
//     Disp_num[2], Disp_num[8],  Disp_num[20], Disp_num[29], Disp_num[21], Disp_num[9],  Disp_num[14], Disp_num[28], 
//     Disp_num[3], Disp_num[10], Disp_num[22], Disp_num[31], Disp_num[23], Disp_num[11], Disp_num[15], Disp_num[30],
//      // Copied right part
//     Disp_num[0], Disp_num[4],  Disp_num[16], Disp_num[25], Disp_num[17], Disp_num[5],  Disp_num[12], Disp_num[24], 
//     Disp_num[1], Disp_num[6],  Disp_num[18], Disp_num[27], Disp_num[19], Disp_num[7],  Disp_num[13], Disp_num[26], 
//     Disp_num[2], Disp_num[8],  Disp_num[20], Disp_num[29], Disp_num[21], Disp_num[9],  Disp_num[14], Disp_num[28], 
//     Disp_num[3], Disp_num[10], Disp_num[22], Disp_num[31], Disp_num[23], Disp_num[11], Disp_num[15], Disp_num[30]};

endmodule
