`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 17:00:06
// Design Name: 
// Module Name: counter
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


module counter (
    input clk, rst,
    output reg [29 : 0] out
);
    always @ (posedge clk or negedge rst) begin
        if (~rst) out <= 0;
        else begin
            out <= out + 1; 
        end
    end
endmodule
