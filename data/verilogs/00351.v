module four_bit_adder(
    input signed [3:0] a,
    input signed [3:0] b,
    input cin,
    output signed [3:0] sum,
    output cout
);

wire [3:0] temp_sum;
assign temp_sum = a + b + cin;

assign sum = temp_sum[3:0];
assign cout = temp_sum[4];

endmodule