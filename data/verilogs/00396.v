module shift_left (
  input wire [3:0] in,
  output wire [3:0] out
);

  // using an always block
  always @(*) begin
    out[3] = in[2];
    out[2] = in[1];
    out[1] = in[0];
    out[0] = in[3];
  end

  // using assign statements
  assign out[3] = in[2];
  assign out[2] = in[1];
  assign out[1] = in[0];
  assign out[0] = in[3];

  // using concatenation and bit-select operators
  assign out = {in[2:0], in[3]};

endmodule