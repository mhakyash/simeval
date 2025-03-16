module xor_comb_ff(
    input clk,
    input a,
    input b,
    output reg out_comb_ff
);

reg a_ff;

always @(posedge clk) begin
    a_ff <= a;
    out_comb_ff <= a_ff ^ b;
end

endmodule