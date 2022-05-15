`timescale 1ns / 1ps

module Calculator(
    input clk, rst,
    input[255 : 0] inp,
    output reg[31 : 0] ans,
    output reg finished
);
    //Registers
    reg[7 : 0] in[31 : 0];
    reg[31 : 0] num = 0, len = 0;
    reg[31 : 0] string_iterator = 0;
    reg[3 : 0] where_after_push_op_stack = 0, where_after_push_num_stack = 0;
    reg[3 : 0] where_after_pop_op_stack = 0, where_after_pop_num_stack = 0;
    reg[31 : 0] a = 0, b = 0;
    reg[7 : 0] c = 0;
    reg in_num = 0, branch = 0;
    integer i = 0;

    //Params
    //where_after_push_op_stack
    parameter[3 : 0] initial_push_op = 0, handle_others = 1;
    //where_after_pop_op_stack
    parameter[3 : 0] handle_md = 2, handle_right_bracket = 3, handle_left_bracket = 4;
    //where_after_push_num_stack
    parameter[3 : 0] set_in_num = 5, after_compute = 6;
    //where_after_pop_num_stack
    parameter[3 : 0] pop_before_set_A = 7, pop_before_set_B = 8;

    //Stacks
    reg[31 : 0] stack_num[31 : 0], num_top = 0, op_top = 0;
    reg[7 : 0] stack_op[31 : 0];

    //FSM
    reg[5 : 0] state, next_state;
    parameter[5 : 0] Init = 0;
    parameter[5 : 0] Init_Search = 1, Add_Len = 2, Add_Right_Bracket = 3, Initial_Push_Op = 4;
    parameter[5 : 0] Search_String = 5, Space = 6, Num = 7, Op = 8;
    parameter[5 : 0] Push_Num = 9, Reset_Num = 10, Handle_PM = 11, Handle_MD = 12;
    parameter[5 : 0] Handle_Left_Bracket = 13, Handle_Right_Bracket = 14, Handle_Others = 15; 
    parameter[5 : 0] Set_C_PM = 16, Set_C_Brackets = 17, Pop_Op_PM = 18, Push_Num_Stack = 19, Push_Op_Stack = 20;
    parameter[5 : 0] Pop_Before_Set_A = 21, Pop_Before_Set_B = 22;
    parameter[5 : 0] Add = 23, Minus = 24, Multiply = 25, Divide = 26;
    parameter[5 : 0] Set_A = 27, Set_B = 28, Add_Iterator = 29, Push_Op_Input = 30;
    parameter[5 : 0] Pop_Op_Left_Bracket = 31, Set_C_MD = 32, Set_C_Left_Bracket = 33;
    parameter[5 : 0] Pop_Op_Stack = 34, Pop_Num_Stack = 35;
    parameter[5 : 0] Terminate = 36;
    always @(*) begin
        case (state)
            Init: next_state = Init_Search;
            Init_Search: next_state = (in[len] != "\n") ? Add_Len : Add_Right_Bracket;
            Add_Len: next_state = Init_Search;
            Add_Iterator: next_state = Search_String;
            Add_Right_Bracket: next_state = Initial_Push_Op;
            Initial_Push_Op: next_state = Push_Op_Stack;
            Search_String: begin
                if (in[string_iterator] == " ") next_state = Space;
                if (in[string_iterator] >= "0" && in[string_iterator] <= "9")
                    next_state = Num;
                else if (in[string_iterator] == "\n") next_state = Terminate;
                else next_state = Op;
            end
            Space: next_state = Add_Iterator;
            Num: next_state = Add_Iterator;
            Op: next_state = in_num ? Push_Num : Reset_Num;
            Push_Num: next_state = Push_Num_Stack;
            Reset_Num: begin
                if ((in[string_iterator] == "+" || in[string_iterator] == "-") && op_top != 0)
                    next_state = Handle_PM;
                else if (in[string_iterator] == ")") next_state = Handle_Right_Bracket;
                else next_state = Handle_Others;
            end

            Handle_PM: next_state = Set_C_PM;
            Set_C_PM: next_state = Handle_MD;
            Handle_MD: begin
                if ((c == "*" || c == "/") && op_top != 0) next_state = Pop_Op_PM;
                else if (in[string_iterator] == ")") next_state = Handle_Right_Bracket;
                else next_state = Handle_Others;
            end
            Pop_Op_PM: next_state = Pop_Op_Stack;
            
            Handle_Others: next_state = Push_Op_Input;
            Push_Op_Input: next_state = Push_Op_Stack;
            
            Handle_Right_Bracket: next_state = Pop_Op_Stack;
            Set_C_Brackets: next_state = Handle_Left_Bracket;
            Handle_Left_Bracket: begin
                if (c != "(") next_state = Pop_Before_Set_A;
                else next_state = Add_Iterator;
            end
            
            Pop_Before_Set_A: next_state = Pop_Num_Stack;
            Set_A: next_state = Pop_Before_Set_B;
            Pop_Before_Set_B: next_state = Pop_Num_Stack;
            Set_B: begin
                case (c)
                    "+": next_state = Add;
                    "-": next_state = Minus;
                    "*": next_state = Multiply;
                    "/": next_state = Divide;           
                endcase
            end
            Add: next_state = Push_Num_Stack;
            Minus: next_state = Push_Num_Stack;
            Multiply: next_state = Push_Num_Stack;
            Divide: next_state = Push_Num_Stack;

            Set_C_MD: next_state = Handle_MD;
            Pop_Op_Left_Bracket: next_state = Pop_Op_Stack;
            Set_C_Left_Bracket: next_state = Handle_Left_Bracket;

            Push_Num_Stack: begin
                case (where_after_push_num_stack) 
                    set_in_num: next_state = Reset_Num;
                    default: next_state = branch ? Pop_Op_Left_Bracket : Set_C_MD;                
                endcase
            end
            Push_Op_Stack: begin
                case (where_after_push_op_stack)
                    initial_push_op: next_state = Search_String;
                    default: next_state = Add_Iterator;
                endcase
            end
            Pop_Op_Stack: begin
                case (where_after_pop_op_stack)
                    handle_md: next_state = Pop_Before_Set_A;
                    handle_right_bracket: next_state = Set_C_Brackets;
                    default: next_state = Set_C_Left_Bracket;
                endcase
            end
            Pop_Num_Stack: begin
                case (where_after_pop_num_stack)
                    pop_before_set_A: next_state = Set_A;
                    default: next_state = Set_B;
                endcase
            end

            default: next_state = Terminate;
        endcase
    end
    always @(posedge clk) begin
        if (rst) state <= Init;
        else state <= next_state;
    end
    
    //Operations on each state
    always @(posedge clk) begin
        case (state)
            Init: begin
                num <= 0; ans <= 0; len <= 0;
                string_iterator <= 0;
                c <= 0; in_num <= 0; branch <= 0;
                num_top <= 0; op_top <= 0;
                a <= 0; b <= 0; finished <= 0;
                for (i = 0; i < 32; i = i + 1)
                    in[31 - i] <= inp[i * 8 +: 8];
            end
            Add_Len: len <= len + 1;
            Add_Iterator: string_iterator <= string_iterator + 1;
            Add_Right_Bracket: begin in[len] <= ")"; in[len + 1] <= "\n"; end
            Initial_Push_Op: begin 
                stack_op[op_top] <= "(";  
                where_after_push_op_stack <= initial_push_op;
            end
            Num: begin num <= num * 10 + (in[string_iterator] - 48); in_num <= 1; end
            Push_Num: begin 
                stack_num[num_top] <= num; in_num <= 0;
                where_after_push_num_stack = set_in_num; 
            end
            Reset_Num: num <= 0;
            
            Handle_PM: branch <= 0;
            Handle_Right_Bracket: begin 
                branch <= 1; 
                where_after_pop_op_stack <= handle_right_bracket; 
            end

            Set_C_PM: c <= stack_op[op_top - 1];
            Pop_Op_PM: where_after_pop_op_stack <= handle_md;
            
            Push_Op_Input: begin
                stack_op[op_top] <= in[string_iterator];
                where_after_push_op_stack <= handle_others;
            end
            
            Handle_Right_Bracket: where_after_pop_op_stack <= handle_right_bracket;
            Set_C_Brackets: c <= stack_op[op_top];
            
            Pop_Before_Set_A: where_after_pop_num_stack <= pop_before_set_A;
            Set_A: a <= stack_num[num_top];
            Pop_Before_Set_B: where_after_pop_num_stack <= pop_before_set_B;
            Set_B: b <= stack_num[num_top];
            Add: begin
                stack_num[num_top] <= b + a;
                where_after_push_num_stack <= after_compute;
            end
            Minus: begin
                stack_num[num_top] <= b - a;
                where_after_push_num_stack <= after_compute;
            end
            Multiply: begin
                stack_num[num_top] <= b * a;
                where_after_push_num_stack <= after_compute;
            end
            Divide: begin
                stack_num[num_top] <= b / a;
                where_after_push_num_stack <= after_compute;
            end

            Set_C_MD: c <= stack_op[op_top - 1];
            Pop_Op_Left_Bracket: where_after_pop_op_stack <= handle_left_bracket;
            Set_C_Left_Bracket: c <= stack_op[op_top];

            Push_Num_Stack: num_top <= num_top + 1;
            Push_Op_Stack: op_top <= op_top + 1;
            Pop_Op_Stack: op_top <= op_top - 1;
            Pop_Num_Stack: num_top <= num_top - 1;

            Terminate: begin ans <= stack_num[num_top - 1]; finished <= 1; end
        endcase
    end
endmodule
