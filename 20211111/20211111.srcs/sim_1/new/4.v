`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:12:19
// Design Name: 
// Module Name: four
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


module four();
    reg [2 : 0] in;
    wire [7 : 0] ans;
    decoder_3_8 decoder(.in(in), .out(ans));
    initial begin
        in = 0;
        #800 $finish;
    end
    always begin
        #100 in = in + 1;
    end
endmodule
