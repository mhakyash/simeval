module pipelined_dff (
    input clk,
    input reset,
    input [7:0] d,
    output reg [7:0] q
);

reg [7:0] lfsr;
reg [7:0] d1, d2, d3, d4, d5, d6, d7, d8;

always @(posedge clk) begin
    if (reset) begin
        lfsr <= 8'hF0;
        d1 <= 8'hAA;
        d2 <= 8'h55;
        d3 <= 8'hA5;
        d4 <= 8'h5A;
        d5 <= 8'h33;
        d6 <= 8'hCC;
        d7 <= 8'hC3;
        d8 <= 8'h3C;
    end else begin
        lfsr <= {lfsr[6:0], lfsr[7]^lfsr[2]};
        d1 <= lfsr == 8'h00 || lfsr == 8'h34 ? 8'hAA : d;
        d2 <= d1;
        d3 <= d2;
        d4 <= d3;
        d5 <= d4;
        d6 <= d5;
        d7 <= d6;
        d8 <= d7;
    end
end

assign q = d8;

endmodule

module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);

wire [7:0] q1, q2, q3, q4, q5, q6, q7, q8;

pipelined_dff dff1 (.clk(clk), .reset(reset), .d(d), .q(q1));
pipelined_dff dff2 (.clk(clk), .reset(reset), .d(q1), .q(q2));
pipelined_dff dff3 (.clk(clk), .reset(reset), .d(q2), .q(q3));
pipelined_dff dff4 (.clk(clk), .reset(reset), .d(q3), .q(q4));
pipelined_dff dff5 (.clk(clk), .reset(reset), .d(q4), .q(q5));
pipelined_dff dff6 (.clk(clk), .reset(reset), .d(q5), .q(q6));
pipelined_dff dff7 (.clk(clk), .reset(reset), .d(q6), .q(q7));
pipelined_dff dff8 (.clk(clk), .reset(reset), .d(q7), .q(q8));

assign q = q8;

endmodule