// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jun 22 10:58:58 2023
// Host        : DESKTOP-5FEH4HR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [23:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [23:0]douta;
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
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.20565 mW" *) 
  (* C_FAMILY = "artix7" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "100" *) 
  (* C_READ_DEPTH_B = "100" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
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
  (* C_WRITE_DEPTH_A = "100" *) 
  (* C_WRITE_DEPTH_B = "100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19840)
`pragma protect data_block
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
1eIujg==
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
