module byte_counter(
    input wire [15:0] in,
    input [254:0] in_vec,
    output wire [7:0] out
);

// Split input word into two bytes
wire [7:0] upper_byte = in[15:8];
wire [7:0] lower_byte = in[7:0];

// Count number of 1's in upper byte
wire [7:0] upper_count;
barrel_shifter barrel_upper(.in(upper_byte), .out(upper_count));
binary_tree_adder adder_upper(.in(upper_count), .out(out[7]));

// Count number of 1's in lower byte
wire [7:0] lower_count;
barrel_shifter barrel_lower(.in(lower_byte), .out(lower_count));
binary_tree_adder adder_lower(.in(lower_count), .out(out[6]));

// Count number of 1's in input vector
wire [7:0] vec_count;
barrel_shifter barrel_vec(.in(in_vec), .out(vec_count));
binary_tree_adder adder_vec(.in(vec_count), .out(out[5:0]));

// Add upper and lower byte counts to get final output
assign out = out[7:6] + out[5:0];

endmodule

module barrel_shifter(
    input [7:0] in,
    output [7:0] out
);

// Shift input left by 1, 2, 4, 8 bits and add results
wire [7:0] shift1 = {in[6:0], 1'b0};
wire [7:0] shift2 = {in[5:0], 2'b00};
wire [7:0] shift4 = {in[3:0], 4'b0000};
wire [7:0] shift8 = {in[7:0], 8'b00000000};
wire [7:0] sum1 = shift1 + in;
wire [7:0] sum2 = shift2 + sum1;
wire [7:0] sum4 = shift4 + sum2;
wire [7:0] sum8 = shift8 + sum4;

// Output sum8
assign out = sum8;

endmodule

module binary_tree_adder(
    input [7:0] in,
    output [7:0] out
);

// Add pairs of adjacent bits until only one bit is left
wire [7:0] sum1 = in[0] + in[1];
wire [7:0] sum2 = in[2] + in[3];
wire [7:0] sum3 = in[4] + in[5];
wire [7:0] sum4 = in[6] + in[7];
wire [7:0] sum5 = sum1 + sum2;
wire [7:0] sum6 = sum3 + sum4;
wire [7:0] sum7 = sum5 + sum6;
wire [7:0] sum8 = sum7[0] + sum7[1] + sum7[2] + sum7[3] + sum7[4] + sum7[5] + sum7[6] + sum7[7];

// Output sum8
assign out = sum8;

endmodule

module top_module( 
    input wire [15:0] in,
    input [254:0] in_vec,
    output wire [7:0] out
);

// Instantiate byte_counter module
byte_counter counter(.in(in), .in_vec(in_vec), .out(out));

endmodule