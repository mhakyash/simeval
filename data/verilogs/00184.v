module xor_gate (
    input a,
    input b,
    output out
);

// Behavioral always block implementation
reg out_reg;
always @ (a, b) begin
    out_reg = a ^ b;
end

// Structural implementation using pipeline
reg a_reg, b_reg;
wire xor1_out, xor2_out;
assign xor1_out = a_reg ^ b_reg;
assign xor2_out = a ^ b_reg;
always @ (posedge clk) begin
    a_reg <= a;
    b_reg <= b;
    out <= xor2_out;
end

endmodule