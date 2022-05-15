// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 25 15:27:23 2021
// Host        : MECHREVO-Bill running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [3:0]a;
  output [7:0]spo;

  wire [3:0]a;
  wire [7:0]spo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JqLVJNxQZkLohSEqQ9ITFybNm9QPcaTh8kyc7h4uGNwD1GaEe9dZHqj61sUilGTlF+FUk7afNjXe
+9yQ4e75SyWC3Z6F0o0CdI6t84E2VRqNvne6PMLMbSrRPmTgt8cbodbZa3saUKncQltVwK/zTxXc
dXyeIJwoVnylCRZ8MPU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RMR60V/K16S3hDpcgdlFzH6vzNttFBxzcEIP9k8l6xLxOXzEGeRk2beZg3IkkpX9ywpiLolj/ijd
pAlaBccK0sBT48q6qTKLouly7vRT3U8EOwOAJBZoDUnL/NwrlIomkg8Pj/4x8iecc9IFkdcLg53k
dreGnJ/4ti8Qi6sHP5Vsy0qpJoYpWsOBc2cmgH9vayWn6WlV7QL8YjnFQ6bQnWuyarN2QQK+bLzc
JrPAdTBzH05U9MiHwKRG1GlZxJA5fxQttnLA39Nwggz6r5qeYai4Vo+J8h0NQDa/GYHeYKSYsF9p
VKrYe14mz3CSYvF3+NMCtnCz+VeW7lF95iKCXA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k6iMAgjYok8KaQLMY/TME6/aSCYTKFMZWtHwbD2VKIKOoM9woUSioI0NuiYfkPizuiBJEl8Af3NJ
M5VmpW3SVM0lwPjVSCSNmHMIfc2krrmg962M4XaG4w+tnp7hwZbdNZ8ahj6pOLDYSTGKwdGQanuk
rIQbC+15rT9WEK2XGDQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lHyAdhaPyzMCy12MalQZTt5ud3be/nityQmJ518pNrYUzgCs2nz/J1pZZgf+RWFgX9JUwWOgttjl
3vfihnzL/+pRWaWe8tlTToa5xX6V/jpw3hAcktXx9YKYreiOr2qpeTLkbp0k6MDPx0OZ6zF6OnXU
mj71WlXFOMXCx/95ZDxCuphivrOiA+pFZwGv2NIFmX/Oh4q8NTSFzJYzF3L9rWrI08UUEu9QuuxY
Iqlhuw+fXq//x9+jC7JNcedTSCXVkefBvZdJcbH0kbNA5ChG445apiF/OiKhKxTUjVKp7Rkm62fE
cFEo6KH1Cp+QaVxNQ55dcOTpVSSDpQGvshrQzw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D53lVPGhmka10zY9LQFvI7i1UPoiOm2NaQ+1PpDUs4OCbAMqPLHQSHIZ3EMPWpwgdfAtW9t+9lxl
o33XZq60DBUJ4ZKPRvcfbZCHmpPyjm3Rs8+ACxnIH7G37stehOSCzSXeqM9ORqajk0MjoE3bDLx9
FtW+eEPY1KauFU6KHAWAdaZPPnc5QfgBkK0c27Y7CfkJ049Sjv4lFwtiVOmSkCvdDDisv3/WAcSs
c5Zo+cJIWzw/prfWYTGIB0goZNZRXZpB/aULwQ5itLufopA2f9cHo50fqlIvQX4YoYlfQTXpj3Lj
Qd+7/1UmFCqQLsnOUXy9D/tgspVDu7POGbmsiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bN8g8/EQJ5JNLmcuNioMXeo6xxPhQlbGMqXyUcnPTkqRMGYI+G4Ejpt9cT2XLx48MsTE+bzhGByG
1H1pqr4NO588pcozvxJ5bo7FJRCIhLP1e3pwipkX+z6IlClWyStmkrlQmh4o/jTM/s88Fv0m7FSH
jNd3hhAeYNPIdw9Btn4UcBuZre9QZnCZ+Qb3nW7FuuEd1RxTmP0y9EFC185+bRy+SMigW3FTt75l
qdmakEvm3BkGv3IiztGz6MLRqvBdHQYtaZ17Jeh1xGZ//F4QzRytN/lcdqSrZA6MOo1ObtGE9SFJ
SDo82E2CZlkQZfPVe6EC4/a7V7wIwES5EDHHnw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ewjro/5A8FySdAgSJfHQFGxdnPvtSB6vt25wsSfZkZlB9FCU7IhXRDEGCyqtZv1GE8Vi5CjQkNFt
lkkrCSRYIU5yoD/IUiSUo3oerXD+F7eyfUTsdMH8pyAOmszG4J/U4h2F0oGz4IGjnQhlKadatt3U
Pet1uDdo6p7Uz7fluWoE453v5O5Ag7QL3l2r7pK9QbtKW2b2ZgHI0FP1PfpuAESmBITtaB68uLNI
9IqIpc/l+MM956Gz3Ei4nFXbBqRkNnOoEIr1KKujTAkLJl3zAW45fRxt/SNdspyyOfwqw8HQ4aKl
7gQZLNfO7M9S9RaTP7tfDlNXrjIs40/SiH7VMA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
BU7byHg11K8bY2oU9sv2hTEzfbBQxIL/wbPRcw3zRiIVklygkCLwToVotzcIxQi5+AgzzF89UJr5
6GTSf74dEO/L+7MiiVhop835AvOvvIFH3e15os3Ed8MZ/CykLdSs8kOVPSgygUECxKL/9FDmPOPu
fo2rClbqDh81jw/cX48EVuss3UxP/PNd7DI06TMx7v4Cwbv+pkvbuSJ9JUQBcJB2a2vbXuFSdPnT
ejL1XTVXeTbl2M6D7N0iqk4rwD1DAC1ao/d+axn50hvVPzigrvjqcQX/U1IENh7yF/bcNB1NT4d2
IdXJlmV2SEYwQNjb9ZTuSLUlehhVKrT3vH5zFJC80glrrjZK2l4tx9ZECJLmYjz00oxWf1dNVI0i
SuSyr3w6cWekzZQOv6vsFN+CRqWOkos5IUF5EaLFMFmcV5BtlgtZ9rm6OCo3zn726oQF5zZNaTBv
qrb5vLe4ELSA4fL4YBwiVDxVDpGpLzJNu+m6WS/V5oWJs1UQV1sRHSGu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dAIafnl1hEJ76Z8bYZlZKSAU+OyCQ2PwlK+IUKj9QNvxJJYU8c0z5dZmxP4ePLBS+vp0Lekmf+JK
ZmwpMP0AH+BW93Y8Y+QNBeNdszz6mwXF1zf7ZAzf+51PzoZEli3SBCs9JMOdSCtnTg1W+j4FkEYs
NWN3ZK6tfrYSbplsV4lsmoYu2c81xW2Ns3lV8YRQCE8VSADdb1pe8pEztQYXzBmAfCVgwFNJ1kXV
pEtDN1MRi07FvYZeUJ/cX+ebYB0p5w0vxVO4vSr0XOHKMcQkxb/64oEoe4AhHQNWURWYKDxNNzm+
jElAKl1fJL20OmItj+GmJlETFK09uAgqwtZ5HQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3712)
`pragma protect data_block
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
7KOrbdC8tw==
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
