module binary_adder(
    input [3:0] in1,
    input [3:0] in2,
    input ctrl,
    output [3:0] sum,
    output cout
);

    wire [4:0] temp_sum;
    assign temp_sum = {1'b0, in1} + {1'b0, in2};

    assign sum = (ctrl == 1'b0) ? temp_sum[3:0] : temp_sum[4];
    assign cout = temp_sum[4];

endmodule