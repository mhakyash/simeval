module half_adder (
    input a, b,
    output sum, carry_out
);

    assign sum = a ^ b;
    assign carry_out = a & b;

endmodule

module top_module (
    input a, b,
    input [2:0] sel,
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out
);

    wire [3:0] selected_input;
    wire [3:0] bitwise_operation_output;
    wire sum, carry_out;

    // Select input based on sel
    always @*
    begin
        case (sel)
            3'b000: selected_input = data0;
            3'b001: selected_input = data1;
            3'b010: selected_input = data2;
            3'b011: selected_input = data3;
            3'b100: selected_input = data4;
            3'b101: selected_input = data5;
            default: selected_input = 4'b0;
        endcase
    end

    // Perform bitwise AND or OR operation based on parity of sel
    always @*
    begin
        if (sel % 2 == 0)
            bitwise_operation_output = selected_input & 4'h0F;
        else
            bitwise_operation_output = selected_input | 4'hF0;
    end

    // Generate sum and carry-out using half adder
    half_adder ha (
        .a(a),
        .b(b),
        .sum(sum),
        .carry_out(carry_out)
    );

    // Perform bitwise XOR operation on sum and selected output
    always @*
    begin
        out = sum ^ bitwise_operation_output;
    end

endmodule