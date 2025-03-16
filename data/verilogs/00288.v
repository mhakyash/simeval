module priority_encoder (
  input [3:0] in,
  output [1:0] out
);

  assign out = 2'b00;
  always @ (in) begin
    if (in[3] == 1) begin
      out = 2'b11;
    end else if (in[2] == 1) begin
      out = 2'b10;
    end else if (in[1] == 1) begin
      out = 2'b01;
    end else if (in[0] == 1) begin
      out = 2'b00;
    end
  end
  
endmodule
