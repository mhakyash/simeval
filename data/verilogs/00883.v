module schmitt_trigger (
  input in,
  output out
);

  parameter vth = 1.5; // threshold voltage
  parameter vtl = 0.2; // hysteresis voltage
  
  reg out_reg; // output register
  
  always @(in) begin
    if (in > vth) begin
      out_reg <= 1'b1;
    end else if (in < vth - vtl) begin
      out_reg <= 1'b0;
    end
  end
  
  assign out = out_reg;
  
endmodule