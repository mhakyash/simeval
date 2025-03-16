module POR (
  output reg reset
);

parameter t = 10; // time in milliseconds

initial begin
  #t reset = 1'b0; // delay for t milliseconds and set reset to low
  reset = 1'b1; // set reset to high
end

endmodule