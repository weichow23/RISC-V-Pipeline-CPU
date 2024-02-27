// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 10 15:08:58 2023
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
YFKXAdUyhYxEb/nmNEri1Yh2gA==
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
