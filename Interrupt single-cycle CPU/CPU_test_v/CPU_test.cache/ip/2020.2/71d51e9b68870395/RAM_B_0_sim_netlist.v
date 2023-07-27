// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 10 00:06:55 2023
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
guZyN3Qxlkajt/bXEq58e+inzg==
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
