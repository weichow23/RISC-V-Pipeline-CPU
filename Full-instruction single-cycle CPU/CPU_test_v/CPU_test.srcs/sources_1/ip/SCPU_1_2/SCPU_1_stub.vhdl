-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Mar 20 11:47:31 2023
-- Host        : LAPTOP-H0UE0F8B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top SCPU_1 -prefix
--               SCPU_1_ SCPU_0_stub.vhdl
-- Design      : SCPU_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SCPU_1 is
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
    Addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x31 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end SCPU_1;

architecture stub of SCPU_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,MIO_ready,inst_in[31:0],Data_in[31:0],CPU_MIO,MemRW,PC_out[31:0],Data_out[31:0],Addr_out[31:0],x0[31:0],x1[31:0],x2[31:0],x3[31:0],x4[31:0],x5[31:0],x6[31:0],x7[31:0],x8[31:0],x9[31:0],x10[31:0],x11[31:0],x12[31:0],x13[31:0],x14[31:0],x15[31:0],x16[31:0],x17[31:0],x18[31:0],x19[31:0],x20[31:0],x21[31:0],x22[31:0],x23[31:0],x24[31:0],x25[31:0],x26[31:0],x27[31:0],x28[31:0],x29[31:0],x30[31:0],x31[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SCPU,Vivado 2019.2";
begin
end;
