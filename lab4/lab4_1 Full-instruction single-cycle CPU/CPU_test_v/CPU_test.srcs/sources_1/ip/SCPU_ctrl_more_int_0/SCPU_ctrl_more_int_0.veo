// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:user:SCPU_ctrl_more_int:1.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
SCPU_ctrl_more_int_0 your_instance_name (
  .ALUSrc_B(ALUSrc_B),        // output wire ALUSrc_B
  .Branch(Branch),            // output wire Branch
  .BranchN(BranchN),          // output wire BranchN
  .CPU_MIO(CPU_MIO),          // output wire CPU_MIO
  .Fun7(Fun7),                // input wire Fun7
  .Jump(Jump),                // output wire [1 : 0] Jump
  .MIO_ready(MIO_ready),      // input wire MIO_ready
  .MemRW(MemRW),              // output wire MemRW
  .RegWrite(RegWrite),        // output wire RegWrite
  .ALU_Control(ALU_Control),  // output wire [3 : 0] ALU_Control
  .Fun3(Fun3),                // input wire [2 : 0] Fun3
  .Fun_ecall(Fun_ecall),      // input wire [2 : 0] Fun_ecall
  .Fun_mret(Fun_mret),        // input wire [1 : 0] Fun_mret
  .ImmSel(ImmSel),            // output wire [2 : 0] ImmSel
  .MemtoReg(MemtoReg),        // output wire [1 : 0] MemtoReg
  .OPcode(OPcode),            // input wire [4 : 0] OPcode
  .ecall(ecall),              // output wire ecall
  .mret(mret),                // output wire mret
  .ill_instr(ill_instr)      // output wire ill_instr
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file SCPU_ctrl_more_int_0.v when simulating
// the core, SCPU_ctrl_more_int_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

