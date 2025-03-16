module d_ff_gated_clock (
    input D,
    input CLK,
    input EN,
    output Q,
    output Q_N
);

wire gated_clk = CLK & EN; // create gated clock signal

assign Q = gated_clk ? D : Q; // update Q on rising edge of gated clock
assign Q_N = gated_clk ? ~D : Q_N; // update Q_N on rising edge of gated clock

endmodule