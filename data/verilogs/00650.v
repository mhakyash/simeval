module mux_2to1(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output reg out_always
);

always @(*) begin
    out_always = (sel_b2 & ~sel_b1) ? b : a;
end

endmodule