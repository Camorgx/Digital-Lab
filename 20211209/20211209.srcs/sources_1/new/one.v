module one(
    input clk, rst,
    output led
);
    reg[1:0] next_state, state = S0;
    parameter[1 : 0] S0 = 0, S1 = 1, S2 = 2, S3 = 3;
    always @(*) begin
        // State transition logic
        case (state)
            S0: next_state = S1;
            S1: next_state = S2; 
            S2: next_state = S3; 
            default: next_state = S0;
        endcase
	end
	always @(posedge clk or posedge rst) begin
        // State flip-flops with asynchronous reset
        if (rst) state <= S0;
        else state <= next_state;
    end
    // State output logic
    assign led = (state == S3);
endmodule