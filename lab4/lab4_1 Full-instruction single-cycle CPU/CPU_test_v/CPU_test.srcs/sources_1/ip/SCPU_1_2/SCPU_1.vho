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

-- IP VLNV: xilinx.com:user:SCPU:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT SCPU_1
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    MIO_ready : IN STD_LOGIC;
    inst_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    CPU_MIO : OUT STD_LOGIC;
    MemRW : OUT STD_LOGIC;
    PC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Addr_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : SCPU_1
  PORT MAP (
    clk => clk,
    rst => rst,
    MIO_ready => MIO_ready,
    inst_in => inst_in,
    Data_in => Data_in,
    CPU_MIO => CPU_MIO,
    MemRW => MemRW,
    PC_out => PC_out,
    Data_out => Data_out,
    Addr_out => Addr_out,
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
    x31 => x31
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file SCPU_1.vhd when simulating
-- the core, SCPU_1. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

