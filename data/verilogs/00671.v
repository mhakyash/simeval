module logic_gate (
  input a,
  input b,
  input c,
  output reg y1,
  output reg y2
);
  
  assign y1 = ~(a | b | c);
  assign y2 = ~(a ^ b);
  
endmodule
