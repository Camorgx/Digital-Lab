`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 17:38:36
// Design Name: 
// Module Name: test
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


module test();
    reg clk = 0, commit = 0, in = 0;
    wire[3 : 0] hexplay_data;
    wire[2 : 0] hexplay_an;
    wire[3 : 0] ans_cnt;
    wire state, next_state;
    four four(.clk(clk), .commit(commit), .in(in),
        .hexplay_an(hexplay_an), .hexplay_data(hexplay_data),
        .ans_cnt(ans_cnt), .state(state), .next_state(next_state));
endmodule
