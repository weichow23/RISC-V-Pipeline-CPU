// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  9 14:09:12 2023
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
