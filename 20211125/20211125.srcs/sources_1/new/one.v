`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:02:02
// Design Name: 
// Module Name: one
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


module one(
    input [7 : 0] sw,
    output wire [7 : 0] led
);
    dist_mem_gen_1 rom1(.a({sw[3], sw[2], sw[1], sw[0]}), .spo(led));
endmodule
