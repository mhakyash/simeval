// Benchmark "thermal_management" written by ABC on Wed Jun 26 15:22:20 2024

module thermal_management ( 
    temp,
    fan_speed  );
  input  temp;
  output fan_speed;
  ZERO     g0(.Y(fan_speed));
endmodule


