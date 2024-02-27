// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 10 00:06:55 2023
// Host        : MAXWELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/ComputerOrnazation/lab4_3/CPU_test_v/CPU_test.srcs/sources_1/ip/RAM_B_0/RAM_B_0_sim_netlist.v
// Design      : RAM_B_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM_B_0
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
  RAM_B_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27584)
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
