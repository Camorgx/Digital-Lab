`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 16:03:33
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
    input clk,
    input [7 : 0] sw,
    output reg [3 : 0] hexplay_data,
    output reg [2 : 0] hexplay_an
);
    reg flag = 0;
    reg [24 : 0] cnt = 0;
    always @ (posedge clk) begin
        if (cnt == 100000) cnt <= 0;
        else cnt <= cnt + 1;
    end
    always @ (posedge clk) begin
        if (cnt == 0) begin
            flag = ~flag;
            if (flag) begin
                hexplay_an <= 3'h1;
                hexplay_data <= sw[7 : 4];
            end
            else begin
                hexplay_an <= 3'h0;
                hexplay_data <= sw[3 : 0];
            end
        end
    end
endmodule
