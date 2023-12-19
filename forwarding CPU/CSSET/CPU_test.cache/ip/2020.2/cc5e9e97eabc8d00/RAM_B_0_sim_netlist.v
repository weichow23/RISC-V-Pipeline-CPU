// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  2 17:21:15 2023
// Host        : MAXWELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RAM_B_0_sim_netlist.v
// Design      : RAM_B_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_B_0.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
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
