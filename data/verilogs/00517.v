module clock_gate_d_ff_en(input CLK, input EN, input TE, input D, output reg Q);
  wire ENCLK;

  assign ENCLK = EN ? CLK : 1'b0; // Clock gate implementation

  always @(posedge ENCLK) begin // Positive-edge triggered D flip-flop with asynchronous reset
    if (!TE) begin
      Q <= 1'b0;
    end else begin
      Q <= D;
    end
  end

endmodule