module serial_binary_adder(
    input clk,
    input [7:0] d,
    output [7:0] q
);

reg [7:0] shift_reg;
wire [7:0] sum;
reg carry;

// Shift register module from problem 1
always @(posedge clk) begin
    shift_reg <= {shift_reg[6:0], d};
end

// Half adder module from problem 2
assign sum = shift_reg[7] ^ d;
assign carry = shift_reg[7] & d;

// Final output module
always @(negedge clk) begin
    q <= sum + carry;
end

endmodule

// Top module to connect input and output to the serial binary adder
module top_module(
    input clk,
    input [7:0] d,
    output [7:0] q
);

serial_binary_adder sba(
    .clk(clk),
    .d(d),
    .q(q)
);

endmodule