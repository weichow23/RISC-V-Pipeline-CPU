// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 11 10:15:10 2023
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
rx52cz0iQ+P9ZPeENrZelFSrxQ==
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
