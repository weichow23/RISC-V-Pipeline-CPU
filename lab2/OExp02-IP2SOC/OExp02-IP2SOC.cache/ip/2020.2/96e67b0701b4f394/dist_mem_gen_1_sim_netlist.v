// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Mar 26 19:41:08 2023
// Host        : MAXWELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
