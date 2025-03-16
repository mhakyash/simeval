module full_adder(
  input [15:0] in1,
  input [15:0] in2,
  input cin,
  output [15:0] out,
  output cout
);

  wire [16:0] temp_out;
  wire [16:1] carry;
  assign temp_out = {1'b0, in1} + {1'b0, in2} + {1'b0, cin};
  assign carry = {1'b0, temp_out} + {1'b0, in1} + {1'b0, in2} + {1'b0, cin};
  assign out = temp_out[15:0];
  assign cout = carry[17];

endmodule