`timescale 1ns / 1ps

module Translator(
    input clk, rst,
    input[31 : 0] x,
    output reg[63 : 0] ans,
    output reg[7 : 0] length,
    output reg ready
);

    //Stacks
    reg[31 : 0] stack[31 : 0], top;
    reg flag[31 : 0];

    //FSM
    reg[3 : 0] state, next_state;
    parameter[3 : 0] Init = 0, Init_Push = 1, Check_Top = 2;
    parameter[3 : 0] Check_Flag = 3, Push_Stack = 4, Add_Top = 5;
    parameter[3 : 0] Store_Value = 6, Add_Len = 7, Terminate = 8;
    always @(*) begin
        case (state)
            Init: next_state = Init_Push;
            Init_Push: next_state = Check_Top;
            Check_Top: next_state = (top != 0) ? Check_Flag : Terminate;
            Check_Flag: next_state = 
                (flag[top - 1] && stack[top - 1] > 9) ? Push_Stack : Store_Value;
            Push_Stack: next_state = Add_Top;
            Add_Top: next_state = Check_Top;
            Store_Value: next_state = Add_Len;
            Add_Len: next_state = Check_Top;
            default: next_state = Terminate;
        endcase
    end
    always @(posedge clk or posedge rst)   
        state <= rst ? Init : next_state;

    //Operations on each state
    always @(posedge clk) begin
        case (state)
            Init: begin top <= 1; length <= 0; ans <= 0; ready <= 0; end
            Init_Push: begin stack[0] <= x; flag[0] <= 1; end
            Push_Stack: begin 
                flag[top - 1] <= 0; stack[top] <= stack[top - 1] / 10; flag[top] <= 1; 
            end
            Add_Top: top <= top + 1;
            Store_Value: ans[length * 8 +: 8] <= stack[top - 1] % 10 + 48;
            Add_Len: begin length <= length + 1; top <= top - 1; end
            Terminate: ready <= 1;
        endcase
    end
endmodule
