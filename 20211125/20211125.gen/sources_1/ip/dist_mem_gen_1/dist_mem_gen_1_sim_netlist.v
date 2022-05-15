// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Nov 25 20:04:38 2021
// Host        : MECHREVO-Bill running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Source/Vivado
//               Projects/20211125/20211125.gen/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_sim_netlist.v}
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module dist_mem_gen_1
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
  dist_mem_gen_1_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3616)
`pragma protect data_block
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
MAjFk8DLgMGs9q9kP/HKh0GemOe2ap3LTQ==
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
