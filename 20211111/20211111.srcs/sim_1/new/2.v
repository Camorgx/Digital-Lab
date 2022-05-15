`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 14:37:07
// Design Name: 
// Module Name: two
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


module two(
    output reg CLK, RST_N, D
);
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
