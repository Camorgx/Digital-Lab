`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 14:15:05
// Design Name: 
// Module Name: 1
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
    output reg a,b
);
    initial begin
        a = 1; 
        b = 0;
        #100 b = 1;
        #100 a = 0;
        #75 b = 0;
        #75 b = 1;
        #75 $finish;
    end
endmodule
