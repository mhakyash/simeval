module digital_system (
  input a,
  input b,
  input c,
  input d,
  output reg out
);

  always @* begin
    if ((a+b+c+d)%3 == 0) begin
      out <= 1;
    end
    else begin
      out <= 0;
    end
  end
  
endmodule
