module add_subtract(
    input signed [7:0] A,
    input signed [7:0] B,
    output signed [15:0] result
);

    wire [15:0] sum = A + B;

    assign result = (sum > 255) ? (sum - 256) : sum;

endmodule