`timescale 1ns / 1ps

module tb();
    reg clk = 0, rst = 0;
    reg[255 : 0] inp;
    wire[31 : 0] out, optop;
    wire finished;
    wire[5 : 0] state;
    wire[7 : 0] current, tmp_c;
    Calculator calculator(.clk(clk), .rst(rst), .inp(inp), .ans(out), .finished(finished), .sta(state), 
        .current(current), .tmp_c(tmp_c), .optop(optop));
    
    initial begin
        rst <= 1;
        inp <= {{"1*2+3*4\n"}, {24{"\n"}}};
        
        #10 rst <= 0;
        
        //#300 rst <= 1;
        //inp <= {{"2+2*3\n"}, {26{"\n"}}};
        
        //#10 rst <= 0;
    end
    
    initial begin
        #400 $finish;
    end
    
    always begin
        #1 clk = ~clk;
    end
endmodule
