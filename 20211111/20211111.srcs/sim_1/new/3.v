`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:00:01
// Design Name: 
// Module Name: three
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module three();
    reg CLK, RST_N, D;
    wire Q;
    d_ff_r dfr(.clk(CLK), .rst_n(RST_N),
        .d(D), .q(Q));
    initial begin
        D = 0; CLK = 0; RST_N = 0;
        #13 D = 1;
        #14 RST_N = 1;
        #10 D = 0;
        #18 $finish;
    end
    always begin
        #5 CLK = ~CLK;
    end
endmodule
