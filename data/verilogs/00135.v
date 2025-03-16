module mux_2to1(
    input a,
    input b,
    input sel,
    output reg out_always
);

always @(*) begin
    if(sel == 1'b0) begin
        out_always = a;
    end else begin
        out_always = b;
    end
end

endmodule