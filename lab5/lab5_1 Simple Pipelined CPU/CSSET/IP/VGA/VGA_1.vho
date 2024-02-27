-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:VGA:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT VGA_1
  PORT (
    clk_25m : IN STD_LOGIC;
    clk_100m : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    PC_IF : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inst_IF : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC_ID : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inst_ID : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IFID_valid : IN STD_LOGIC;
    PC_Ex : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_inst : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_valid : IN STD_LOGIC;
    IDEX_rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IDEX_rs1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IDEX_rs2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IDEX_rs1_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_rs2_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_reg_wen : IN STD_LOGIC;
    IDEX_is_imm : IN STD_LOGIC;
    IDEX_imm : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MemRW_Ex : IN STD_LOGIC;
    IDEX_mem_ren : IN STD_LOGIC;
    IDEX_is_branch : IN STD_LOGIC;
    IDEX_is_jal : IN STD_LOGIC;
    IDEX_is_auipc : IN STD_LOGIC;
    IDEX_is_lui : IN STD_LOGIC;
    IDEX_ALU_ctrl : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    EXMA_pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    EXMA_inst : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    EXMA_valid : IN STD_LOGIC;
    EXMA_rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    EXMA_reg_wen : IN STD_LOGIC;
    Data_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Addr_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MemRW_Mem : IN STD_LOGIC;
    EXMA_Mem_ren : IN STD_LOGIC;
    EXMA_is_jal : IN STD_LOGIC;
    MAWB_pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MAWB_inst : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MAWB_valid : IN STD_LOGIC;
    MAWB_rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    MAWB_reg_wen : IN STD_LOGIC;
    Data_out_WB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x11 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x14 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x17 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x18 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x19 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x20 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x21 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x22 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x23 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x24 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x25 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x26 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x27 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x28 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x29 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x30 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x31 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    hs : OUT STD_LOGIC;
    vs : OUT STD_LOGIC;
    vga_r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    vga_g : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    vga_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : VGA_1
  PORT MAP (
    clk_25m => clk_25m,
    clk_100m => clk_100m,
    rst => rst,
    PC_IF => PC_IF,
    inst_IF => inst_IF,
    PC_ID => PC_ID,
    inst_ID => inst_ID,
    IFID_valid => IFID_valid,
    PC_Ex => PC_Ex,
    IDEX_inst => IDEX_inst,
    IDEX_valid => IDEX_valid,
    IDEX_rd => IDEX_rd,
    IDEX_rs1 => IDEX_rs1,
    IDEX_rs2 => IDEX_rs2,
    IDEX_rs1_val => IDEX_rs1_val,
    IDEX_rs2_val => IDEX_rs2_val,
    IDEX_reg_wen => IDEX_reg_wen,
    IDEX_is_imm => IDEX_is_imm,
    IDEX_imm => IDEX_imm,
    MemRW_Ex => MemRW_Ex,
    IDEX_mem_ren => IDEX_mem_ren,
    IDEX_is_branch => IDEX_is_branch,
    IDEX_is_jal => IDEX_is_jal,
    IDEX_is_auipc => IDEX_is_auipc,
    IDEX_is_lui => IDEX_is_lui,
    IDEX_ALU_ctrl => IDEX_ALU_ctrl,
    EXMA_pc => EXMA_pc,
    EXMA_inst => EXMA_inst,
    EXMA_valid => EXMA_valid,
    EXMA_rd => EXMA_rd,
    EXMA_reg_wen => EXMA_reg_wen,
    Data_out => Data_out,
    Addr_out => Addr_out,
    MemRW_Mem => MemRW_Mem,
    EXMA_Mem_ren => EXMA_Mem_ren,
    EXMA_is_jal => EXMA_is_jal,
    MAWB_pc => MAWB_pc,
    MAWB_inst => MAWB_inst,
    MAWB_valid => MAWB_valid,
    MAWB_rd => MAWB_rd,
    MAWB_reg_wen => MAWB_reg_wen,
    Data_out_WB => Data_out_WB,
    x0 => x0,
    x1 => x1,
    x2 => x2,
    x3 => x3,
    x4 => x4,
    x5 => x5,
    x6 => x6,
    x7 => x7,
    x8 => x8,
    x9 => x9,
    x10 => x10,
    x11 => x11,
    x12 => x12,
    x13 => x13,
    x14 => x14,
    x15 => x15,
    x16 => x16,
    x17 => x17,
    x18 => x18,
    x19 => x19,
    x20 => x20,
    x21 => x21,
    x22 => x22,
    x23 => x23,
    x24 => x24,
    x25 => x25,
    x26 => x26,
    x27 => x27,
    x28 => x28,
    x29 => x29,
    x30 => x30,
    x31 => x31,
    hs => hs,
    vs => vs,
    vga_r => vga_r,
    vga_g => vga_g,
    vga_b => vga_b
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file VGA_1.vhd when simulating
-- the core, VGA_1. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

