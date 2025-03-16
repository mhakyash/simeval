module binary_adder(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    output [4:0] sum
);

wire [4:0] temp_sum;

assign temp_sum = a + b + c;

assign sum = {temp_sum[3], temp_sum[2], temp_sum[1], temp_sum[0], temp_sum[4]};

endmodule