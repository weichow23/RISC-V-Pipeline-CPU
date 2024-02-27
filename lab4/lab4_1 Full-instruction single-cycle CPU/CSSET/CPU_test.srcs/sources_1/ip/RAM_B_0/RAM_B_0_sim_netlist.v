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
