-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Mar 16 11:32:31 2023
-- Host        : LAPTOP-H0UE0F8B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/RISC_V_my/lab/lab04/CPU_test/CPU_test.srcs/sources_1/ip/SCPU_0_3/SCPU_0_stub.vhdl
-- Design      : SCPU_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SCPU_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    inst_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CPU_MIO : out STD_LOGIC;
    MemRW : out STD_LOGIC;
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end SCPU_0;

architecture stub of SCPU_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,MIO_ready,inst_in[31:0],Data_in[31:0],CPU_MIO,MemRW,PC_out[31:0],Data_out[31:0],Addr_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SCPU,Vivado 2019.2";
begin
end;
