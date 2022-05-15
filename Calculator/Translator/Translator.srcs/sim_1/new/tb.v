`timescale 1ns / 1ps

module tb();
    reg clk = 0, rst = 0;
    reg[31 : 0] x = 7;
    wire[7 : 0] len;
    wire[63 : 0] out;
    wire ready;
    
    Translator translator(.clk(clk), .rst(rst), .x(x), .ans(out), .length(len), .ready(ready));
    
    initial begin
        rst <= 1;
        #10 rst <= 0;
        #100 rst <= 1; x = 114515;
        #10 rst <= 0;
        #100 $finish;
    end
    
    always begin
        #1 clk = ~clk;
    end
endmodule
