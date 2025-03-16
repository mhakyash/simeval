module parity (
  input in,
  output out
);

  reg [1:0] count;
  
  always @ (in) begin
    count = {count[0], in} + count[1];
  end
  
  assign out = ~count[0];
  
endmodule
