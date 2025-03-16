module round_saturation (
  input signed [ib+fb-1:0] in,
  output signed [ib+fb-1:0] out
);

parameter ib = 4; // number of integer bits
parameter fb = 8; // number of fractional bits

integer round_val;
integer max_val;
integer min_val;
integer in_val;

assign in_val = in * (2 ** fb); // Shift input to left by fb bits to convert to integer

always @(*) begin
  if (in_val >= 0) begin
    round_val = (in_val + (2 ** (fb - 1))) >> fb; // Round up if fractional part is greater than or equal to 0.5
  end else begin
    round_val = (in_val - (2 ** (fb - 1))) >> fb; // Round down if fractional part is less than 0.5
  end
  
  max_val = (2 ** (ib + fb - 1)) - 1; // Calculate maximum representable value
  min_val = -(2 ** (ib + fb - 1)); // Calculate minimum representable value
  
  if (round_val > max_val) begin
    out = max_val; // Saturation: Output maximum representable value if rounded value is too large
  end else if (round_val < min_val) begin
    out = min_val; // Saturation: Output minimum representable value if rounded value is too small
  end else begin
    out = round_val; // Output rounded value
  end
end

endmodule