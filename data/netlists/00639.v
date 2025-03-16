// Benchmark "TCPWM" written by ABC on Wed Jun 26 15:22:16 2024

module TCPWM ( 
    stop, count, reload, start, capture, clock,
    interrupt, ov, un, cc, line, line_n  );
  input  stop, count, reload, start, capture, clock;
  output interrupt, ov, un, cc, line, line_n;
  ZERO     g0(.Y(interrupt));
  ZERO     g1(.Y(ov));
  ZERO     g2(.Y(un));
  ZERO     g3(.Y(cc));
  ZERO     g4(.Y(line));
  ONE      g5(.Y(line_n));
endmodule


