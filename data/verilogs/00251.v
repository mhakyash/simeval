module HysteresisComparator (
  input Vin,
  output reg Vout
);

parameter Vth = 1.0; // threshold voltage
parameter Vh = 0.1; // hysteresis voltage

always @ (Vin, Vout) begin
  if (Vin > Vth + Vh) begin
    Vout <= 1;
  end else if (Vin < Vth - Vh) begin
    Vout <= 0;
  end
end

endmodule