`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:    
// 
// Create Date: 2021/12/22 16:22:28
// Design Name: 
// Module Name: Top
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


module Top(
    input clk, rst,
    input rx,
    output tx 
);
    //Wires
    wire rx_vld, tx_rd;
    reg computing_finished = 1, output_ready = 0;
    wire[7 : 0] rx_data;
    
    //Registers
    reg calculator_reset = 1;
    reg tx_ready = 0;
    reg[7 : 0] tx_data = 0;
    reg[7 : 0] input_array[31 : 0];
    reg[255 : 0] input_data = 0;
    reg[7 : 0] input_iterator = 0, output_iterator = 0;
    reg[7 : 0] output_array[7 : 0];
    reg[31 : 0] output_data = 0, output_length = 0;
    
    //Use the teachers reader and writer module.
    Reader reader(.clk(clk), .rst(rst), .rx_vld(rx_vld), 
        .rx(rx), .rx_data(rx_data));
    Writer writer(.clk(clk), .rst(rst), .tx_ready(tx_ready), 
        .tx(tx), .tx_rd(tx_rd), .tx_data(tx_data));
    
    //FSM
    parameter[4 : 0] Idle = 0, Reading = 1, Generate_Input = 2, Calculating = 3;
    parameter[4 : 0] Generate_Output = 4, Writing = 5;
    parameter[4 : 0] Check_End_Of_Input = 6, Check_End_Of_Output = 7;
    parameter[4 : 0] Add_Input_Iterator = 8, Add_Output_Iterator = 9, Init = 10;
    reg[4 : 0] state = Init, next_state;
    integer i = 0;
    always @(*) begin
        case (state)
            Init: next_state = Idle;
            Idle: next_state = rx_vld ? Reading : Idle;
            Reading: next_state = Add_Input_Iterator;
            Add_Input_Iterator: next_state = Check_End_Of_Input;
            Check_End_Of_Input: 
                next_state = (input_array[input_iterator - 1] == "\n") ? Generate_Input : Idle;
            Generate_Input: next_state = Calculating;
            Calculating: next_state = computing_finished ? Generate_Output : Calculating;
            Generate_Output: next_state = output_ready ? Writing : Generate_Output;
            Writing: next_state = tx_rd ? Add_Output_Iterator : Writing;
            Add_Output_Iterator: next_state = Check_End_Of_Output;
            Check_End_Of_Output: next_state = (output_iterator == output_length) ? Init : Writing; 
        endcase
    end
    always @(posedge clk or posedge rst) begin
        if (rst) state <= Idle;
        else state <= next_state;
    end
    
    //Operations on each state.
    always @(posedge clk) begin
        case (state)
            Init: begin
                calculator_reset <= 1;
                tx_ready <= 0; output_ready <= 0;
                tx_data <= 0; input_data <= 0;
                input_iterator <= 0; output_iterator <= 0;
                output_length <= 0;
            end
            Reading: input_array[input_iterator] <= rx_data;
            Calculating: calculator_reset <= 0;
            Add_Input_Iterator: input_iterator <= input_iterator + 1;
            Generate_Input: begin
                for (i = 0; i < 32; i = i + 1) begin
                    input_data[i * 8 +: 8] <= input_array[31 - i];
                end
            end
            Generate_Output: begin
                output_ready <= 1;
                output_array[0] <= "Y"; output_array[1] <= "e"; output_array[2] <= "s";
                output_length <= 3; 
            end
            Writing: begin tx_ready <= 1; tx_data <= output_array[output_iterator]; end
            Add_Output_Iterator: output_iterator <= output_iterator + 1;
        endcase
    end
endmodule
