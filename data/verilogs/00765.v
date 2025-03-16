module one_shot_pulse_generator (
  input trig,
  input clk,
  output reg out
);

  parameter t = 10; // duration of output pulse, in clock cycles
  
  reg [3:0] counter; // 4-bit counter to count t clock cycles
  
  always @(posedge clk) begin
    if (trig) begin // trigger signal is high
      counter <= 0; // reset counter
      out <= 1; // output pulse is high
    end else if (counter < t) begin // counter is less than t
      counter <= counter + 1; // increment counter
      out <= 1; // output pulse is high
    end else begin // counter is greater than or equal to t
      out <= 0; // output pulse is low
    end
  end
  
endmodule