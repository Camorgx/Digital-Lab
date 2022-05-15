`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 14:26:37
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


module three(
    input clk, reset, button, sw,
    output reg[3 : 0] hexplay_data,
    output reg hexplay_an
);
    reg[13 : 0] cnt = 0;
    reg[7 : 0] ans = 8'h1f;
    reg flag = 0;
    always @(posedge clk) begin
        if (cnt == 100000) cnt <= 0;
        else cnt <= cnt + 1;
    end
    always @ (posedge clk) begin
        if (cnt == 0) begin
            flag = ~flag;
            if (flag) begin
                hexplay_an <= 1;
                hexplay_data <= ans[7 : 4];
            end
            else begin
                hexplay_an <= 0;
                hexplay_data <= ans[3 : 0];
            end
        end
    end
    reg button_r1 = 0, button_r2 = 0;
    always @(posedge clk) button_r1 <= button;
    always @(posedge clk) button_r2 <= button_r1;
    always @(posedge clk) begin
        if (reset) ans <= 8'h1f;
        else if (button_r1 & (~button_r2)) 
            ans <= sw ? ans + 1 : ans - 1;
    end
endmodule
