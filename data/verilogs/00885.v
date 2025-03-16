module ripple_shift (
    input clk,
    input reset,
    input [3:0] A,
    input [3:0] B,
    input cin,
    input [2:0] parallel_load,
    input shift,
    input control,
    output [3:0] sum,
    output cout,
    output reg [2:0] out,
    output [2:0] xor_result
);

    // Ripple Carry Adder
    wire [3:0] ripple_sum;
    wire ripple_cout;
    ripple_adder ripple_adder_inst(.A(A), .B(B), .cin(cin), .sum(ripple_sum), .cout(ripple_cout));

    // Shift Register
    reg [2:0] shift_reg;
    always @(posedge clk) begin
        if (reset) begin
            shift_reg <= 3'b0;
        end else if (parallel_load != 3'b0) begin
            shift_reg <= parallel_load;
        end else if (shift) begin
            if (control) begin
                shift_reg <= {shift_reg[1:0], 1'b0};
            end else begin
                shift_reg <= {1'b0, shift_reg[2:1]};
            end
        end
    end

    // XOR Module
    assign xor_result = ripple_sum ^ shift_reg;

    // Output Assignments
    assign sum = ripple_sum;
    assign cout = ripple_cout;
    assign out = shift_reg;

endmodule

module ripple_adder (
    input [3:0] A,
    input [3:0] B,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] full_sum;
    wire carry1, carry2, carry3;

    assign {carry1, full_sum[0]} = A[0] + B[0] + cin;
    assign {carry2, full_sum[1]} = A[1] + B[1] + carry1;
    assign {carry3, full_sum[2]} = A[2] + B[2] + carry2;
    assign {cout, full_sum[3]} = A[3] + B[3] + carry3;

    assign sum = full_sum;

endmodule