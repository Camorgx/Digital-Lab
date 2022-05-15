// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 25 20:04:38 2021
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

  wire \<const0> ;
  wire [3:0]a;
  wire [6:0]\^spo ;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;
  wire [7:7]NLW_U0_spo_UNCONNECTED;

  assign spo[7] = \<const0> ;
  assign spo[6:0] = \^spo [6:0];
  GND GND
       (.G(\<const0> ));
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
        .spo({NLW_U0_spo_UNCONNECTED[7],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3600)
`pragma protect data_block
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
fq543iHhpcvq
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
