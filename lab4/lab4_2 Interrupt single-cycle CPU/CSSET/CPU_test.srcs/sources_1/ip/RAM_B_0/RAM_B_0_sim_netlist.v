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
