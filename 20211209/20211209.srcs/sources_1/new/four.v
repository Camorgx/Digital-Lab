`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 15:44:48
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

module four(
    input clk, commit, in,
    output reg[3 : 0] hexplay_data,
    output reg[2 : 0] hexplay_an
);
    reg[3 : 0] recent[3 : 0], ans_cnt = 0;
    reg[13 : 0] cnt = 0;
    reg[2 : 0] flag = 0;
    initial begin
        recent[0] = 0; recent[1] = 0;
        recent[2] = 0; recent[3] = 0;
    end
    always @(posedge clk) begin
        if (cnt == 100000) cnt <= 0;
        else cnt <= cnt + 1;
    end
    always @ (posedge clk) begin
        if (cnt == 0) begin
            flag = flag + 1;
            if (flag == 6) flag = 0;
            if (flag == 0) begin
                hexplay_an <= 0;
                hexplay_data <= recent[0];
            end
            else if (flag == 1) begin
                hexplay_an <= 1;
                hexplay_data <= recent[1];
            end
            else if (flag == 2) begin
                hexplay_an <= 2;
                hexplay_data <= recent[2];
            end
            else if (flag == 3) begin
                hexplay_an <= 3;
                hexplay_data <= recent[3];
            end
            else if (flag == 4) begin
                hexplay_an <= 5;
                hexplay_data <= ans_cnt;
            end
            else begin
                hexplay_an <= 7;
                hexplay_data <= state;
            end
        end
    end
    
    reg button_r1 = 0, button_r2 = 0;
    always @(posedge clk) button_r1 <= commit;
    always @(posedge clk) button_r2 <= button_r1;
    // S0 = 0/0, S1 = 1/0, S2 = 11/0, S3 = 110/0, S4 = 0/1
    parameter[2 : 0] S0 = 3'd0, S1 = 3'd1, S2 = 3'd2, 
        S3 = 3'd3, S4 = 3'd4; 
	reg[2 : 0] state = S0, next_state;
    always @(*) begin
        // State transition logic
        case (state)
            S0: next_state <= in ? S1 : S0;
            S1: next_state <= in ? S2 : S0;
            S2: next_state <= in ? S1 : S3;
            S3: next_state <= in ? S1 : S4;
            default: next_state <= in ? S1 : S0;
        endcase
	end
	always @(posedge clk) begin
        // State flip-flops
        if (button_r1 & (~button_r2)) begin
            recent[3] = recent[2];
            recent[2] = recent[1];
            recent[1] = recent[0];
            recent[0] = in;
            state = next_state;
            ans_cnt = ans_cnt + (state == S4);
        end
    end
endmodule
