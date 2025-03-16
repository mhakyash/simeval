module xor_pipeline(
    input a,
    input b,
    output reg out
);

reg [1:0] stage1;
reg [1:0] stage2;
reg [1:0] stage3;

always @ (posedge clk) begin
    stage1 <= {a, b};
    stage2 <= {stage1[0] ^ stage1[1], stage1[1]};
    stage3 <= {stage2[0] ^ stage2[1], stage2[1]};
    out <= stage3[0] ^ stage3[1];
end

endmodule

module top_module(
    input a, 
    input b,
    output wire out
);

wire xor_out;

xor_pipeline u_xor_pipeline(
    .a(a),
    .b(b),
    .out(xor_out)
);

assign out = xor_out;

endmodule