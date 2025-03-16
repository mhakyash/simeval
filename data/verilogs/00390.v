module top_module (
    input a,
    input b,
    output out
);

// Behavioral XOR gate
reg xor1_out;
always @ (a, b) begin
    xor1_out = a ^ b;
end

// Structural XOR gate
xor2 xor_inst(.a(xor1_out), .b(b), .out(xor2_out));

// AND gate
and and_inst(.a(xor1_out), .b(xor2_out), .out(out));

endmodule

// Structural XOR gate module
module xor2 (
    input a,
    input b,
    output out
);

assign out = a ^ b;

endmodule

// AND gate module
module and (
    input a,
    input b,
    output out
);

assign out = a & b;

endmodule