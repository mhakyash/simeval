module bool_func (
  input x,
  input y,
  input z,
  output f
);

  wire x_or_y = x | y;
  wire x_xor_z = x ^ z;
  
  assign f = x_or_y & x_xor_z;

endmodule
