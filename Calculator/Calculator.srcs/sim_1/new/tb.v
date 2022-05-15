`timescale 1ns / 1ps

module tb();
    reg clk, rst, rx;
    wire tx;
    
    Top top(.clk(clk), .rst(rst), .rx(rx), .tx(tx));
    
    initial begin
    end
endmodule
