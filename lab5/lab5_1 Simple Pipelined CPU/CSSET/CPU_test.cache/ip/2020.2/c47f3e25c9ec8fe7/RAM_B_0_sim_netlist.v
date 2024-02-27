// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 11 10:03:33 2023
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1437 mW" *) 
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
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
otHJd/XBP7XBVSJACtaOK8vI1Q==
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
