// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Mar 26 19:41:08 2023
// Host        : MAXWELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/ComputerOrnazation/lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_1
   (a,
    spo);
  input [5:0]a;
  output [15:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [15:0]\^spo ;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;
  wire [14:2]NLW_U0_spo_UNCONNECTED;

  assign spo[15] = \^spo [15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11:4] = \^spo [11:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_1_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6016)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
