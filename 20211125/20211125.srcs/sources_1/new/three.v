`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 17:09:14
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
    input clk, rst,
    output reg [3 : 0] hexplay_data,
    output reg [2 : 0] hexplay_an
);
    reg [1 : 0] flag = 0;
    reg [24 : 0] cnt = 0, cnt1 = 0;
    reg [3 : 0] p0 = 4, p1 = 3, p2 = 2, p3 = 1;
    always @ (posedge clk) begin
        if(cnt1 >= 10000) cnt1 <= 0;
        else cnt1 <= cnt1 + 1;
    end
    always @ (posedge clk) begin
        if (cnt1 == 0) flag = flag + 1;
        if (flag == 0) begin
            hexplay_an <= 3'h0;
            hexplay_data <= p0;
        end
        else if (flag == 1) begin
            hexplay_an <= 3'h1;
            hexplay_data <= p1;
        end
        else if (flag == 2) begin
            hexplay_an <= 3'h2;
            hexplay_data <= p2;
        end
        else begin
            hexplay_an <= 3'h3;
            hexplay_data <= p3;
        end
    end
    always @ (posedge clk) begin
        cnt <= cnt + 1;
        if (rst == 1) begin
            p0 <= 4;
            p1 <= 3;
            p2 <= 2;
            p3 <= 1;
        end
        else if (cnt >= 10000000) begin
            cnt <= 0;
            p0 = p0 + 1;
            if (p0 == 4'ha) begin
                p0 <= 0;
                p1 = p1 + 1;
            end
            if (p1 == 4'ha) begin
                p1 <= 0;
                p2 = p2 + 1;
            end
            if (p2 == 4'h6) begin
                p2 <= 0;
                p3 = p3 + 1;
            end
            if (p3 == 4'ha) begin
                p3 <= 0;
            end
        end
    end
endmodule
