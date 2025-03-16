module max_finder(
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    output [7:0] max_val
);

    wire [7:0] temp_max;

    assign temp_max = (A > B) ? A : B;
    assign max_val = (temp_max > C) ? temp_max : C;

    assign max_val = (A == B && B == C) ? A : max_val;

endmodule