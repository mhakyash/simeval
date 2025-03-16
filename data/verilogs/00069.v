module dff_module (
    input clk,
    input d,
    output q
);

reg t1, t2;

always @ (negedge clk) begin
    t1 <= ~d;
    t2 <= ~t1;
    q <= ~t2;
end

endmodule

module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);

wire [7:0] t;

dff_module dff0(clk, d[0], t[0]);
dff_module dff1(clk, t[0], t[1]);
dff_module dff2(clk, t[1], t[2]);
dff_module dff3(clk, t[2], t[3]);
dff_module dff4(clk, t[3], t[4]);
dff_module dff5(clk, t[4], t[5]);
dff_module dff6(clk, t[5], t[6]);
dff_module dff7(clk, t[6], t[7]);

assign q = t;

endmodule