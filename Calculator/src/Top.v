`timescale 1ns / 1ps

module Top(
    input clk, rx,
    output tx 
);
    //Wires
    wire rx_vld, tx_rd;
    wire computing_finished, output_ready;
    wire[7 : 0] rx_data, output_length;
    wire[31 : 0] output_data;
    wire[63 : 0] translated_output;
    wire[7 : 0] translated_length;
    
    //Registers
    reg calculator_reset = 1, translator_reset = 1;
    reg tx_ready = 0;
    reg[7 : 0] tx_data = 0;
    reg[7 : 0] input_array[31 : 0];
    reg[255 : 0] input_data = 0;
    reg[7 : 0] input_iterator = 0, output_iterator = 0;
    reg[7 : 0] output_array[7 : 0];
    
    //Module used
    Reader reader(.clk(clk), .rst(rst), .rx_vld(rx_vld), 
        .rx(rx), .rx_data(rx_data));
    Writer writer(.clk(clk), .rst(rst), .tx_ready(tx_ready), 
        .tx(tx), .tx_rd(tx_rd), .tx_data(tx_data));
    Calculator calculator(.clk(clk), .rst(calculator_reset), 
        .inp(input_data), .ans(output_data), .finished(computing_finished));
    Translator translator(.clk(clk), .rst(translator_reset), 
        .x(output_data), .ans(translated_output), .length(output_length),
        .ready(output_ready));
    
    //FSM
    parameter[4 : 0] Idle = 0, Reading = 1, Generate_Input = 2, Calculating = 3;
    parameter[4 : 0] Generate_Output = 4, Writing = 5;
    parameter[4 : 0] Check_End_Of_Input = 6, Check_End_Of_Output = 7;
    parameter[4 : 0] Add_Input_Iterator = 8, Add_Output_Iterator = 9, Init = 10;
    parameter[4 : 0] Get_Output_Array = 11, Set_Output_Data = 12;
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
            Generate_Output: next_state = output_ready ? Get_Output_Array : Generate_Output;
            Get_Output_Array: next_state = Set_Output_Data;
            Set_Output_Data: next_state = Writing;
            Writing: next_state = tx_rd ? Add_Output_Iterator : Writing;
            Add_Output_Iterator: next_state = Check_End_Of_Output;
            Check_End_Of_Output: next_state = (output_iterator == output_length) ? Init : Set_Output_Data; 
        endcase
    end
    always @(posedge clk) state <= next_state;
    
    //Operations on each state.
    always @(posedge clk) begin
        case (state)
            Init: begin
                calculator_reset <= 1; translator_reset <= 1;
                tx_ready <= 0; tx_data <= 0; input_data <= 0;
                input_iterator <= 0; output_iterator <= 0;
            end
            Reading: input_array[input_iterator] <= rx_data;
            Calculating: calculator_reset <= 0;
            Add_Input_Iterator: input_iterator <= input_iterator + 1;
            Generate_Input: begin
                for (i = 0; i < 32; i = i + 1)
                    input_data[i * 8 +: 8] <= input_array[31 - i];
            end
            Generate_Output: translator_reset <= 0;
            Get_Output_Array: begin
                output_array[0] <= translated_output[7 : 0];
                output_array[1] <= translated_output[15 : 8];
                output_array[2] <= translated_output[23 : 16];
                output_array[3] <= translated_output[31 : 24];
                output_array[4] <= translated_output[39 : 32];
                output_array[5] <= translated_output[47 : 40];
                output_array[6] <= translated_output[55 : 48];
                output_array[7] <= translated_output[63 : 56];
            end
            Set_Output_Data: tx_data <= output_array[output_iterator];
            Writing: tx_ready <= 1;
            Add_Output_Iterator: begin output_iterator <= output_iterator + 1; tx_ready <= 0; end
        endcase
    end
endmodule
