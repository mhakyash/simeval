module RingOscillatorInterface (
  output reg out
);

parameter n = 5; // number of inverters in the oscillator (must be odd)
parameter f_clk = 50; // frequency of the clock signal used to measure the oscillator frequency

reg [n-1:0] inverter_outputs; // output signals of the inverters
reg [n-1:0] inverter_inputs; // input signals of the inverters

// define the inverters and connect them in a loop to form the oscillator
generate
  genvar i;
  for (i = 0; i < n; i = i + 1) begin : inverter_loop
    not #(1) inverter (
      .in (inverter_inputs[i]),
      .out (inverter_outputs[i])
    );
  end
  assign inverter_inputs[0] = 1'b1;
  assign inverter_inputs[n-1] = inverter_outputs[n-2];
  assign inverter_inputs[1:n-2] = inverter_outputs[0:n-3];
endgenerate

// use a counter to measure the frequency of the oscillator and generate the output signal
reg [31:0] counter;
always @(posedge clk) begin
  counter <= counter + 1;
end
assign out = counter[31];

endmodule