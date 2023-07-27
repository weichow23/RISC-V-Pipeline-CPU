// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 11 10:16:58 2023
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
K3R1QtokbjK6qRNRv5VYtPTYZQ==
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
