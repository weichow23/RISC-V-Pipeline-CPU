// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 10 15:08:58 2023
// Host        : MAXWELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM_B_0 -prefix
//               RAM_B_0_ RAM_B_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27296)
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
