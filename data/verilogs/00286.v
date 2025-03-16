module arbiter (
  input [n-1:0] req,
  output [m-1:0] grant
);

parameter n = 4; // number of request signals
parameter m = 2; // number of grant signals

// Priority Encoder
wire [n-1:0] encoded_req;
priority_encoder pe(
  .in(req),
  .out(encoded_req)
);

// Decoder
wire [n-1:0] decoded_grant;
decoder dec(
  .in(encoded_req),
  .out(decoded_grant)
);

// Assign grants
assign grant = decoded_grant[0:m-1];

endmodule

// Priority Encoder
module priority_encoder (
  input [n-1:0] in,
  output [n-1:0] out
);
  assign out = ~(in & (in - 1));
endmodule

// Decoder
module decoder (
  input [n-1:0] in,
  output [n-1:0] out
);
  assign out = {in == 0, in != 0};
endmodule