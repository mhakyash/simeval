// Benchmark "PWM" written by ABC on Wed Jun 26 15:21:59 2024

module PWM ( 
    clk, ctrl,
    pwm  );
  input  clk, ctrl;
  output pwm;
  ZERO     g0(.Y(pwm));
endmodule


