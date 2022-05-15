`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 17:02:59
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


module three_32(
    input clk, rst,
    output wire [7 : 0] led
);
    wire [23 : 0] tmp;
    counter_32 cnt(.clk(clk), .rst(rst), .out({led, tmp}));
endmodule
