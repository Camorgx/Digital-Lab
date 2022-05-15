`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 16:42:22
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

`timescale 1ns / 1ps

module two (
    input clk, rst,
    input [7:0] sw,
    output reg [7:0] led
);
    always @ (posedge clk or posedge rst) begin
        if(rst) led <= 8'haa;
        else led <= {sw[7], sw[6], sw[5], sw[4], 
                sw[3], sw[2], sw[1],sw[0]};
    end
endmodule
