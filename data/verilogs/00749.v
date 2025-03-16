module dff_with_async_set_reset(
    input CLK,
    input D,
    input SET,
    input RESET,
    output reg Q,
    output reg Q_bar
);

always @(posedge CLK) begin
    if (SET) begin
        Q <= 1'b1;
        Q_bar <= 1'b0;
    end else if (RESET) begin
        Q <= 1'b0;
        Q_bar <= 1'b1;
    end else begin
        Q <= D;
        Q_bar <= ~D;
    end
end

endmodule