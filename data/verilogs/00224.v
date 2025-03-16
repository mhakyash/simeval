module async_reset_release (
  input clk,
  input reset,
  output release
);

  parameter release_time = 10; // release time in clock cycles.

  reg [7:0] counter; // 8-bit counter to count the number of clock cycles that the reset signal has been released
  reg release_ff; // flip-flop to store the state of the release signal

  always @(posedge clk) begin
    if (reset) begin
      counter <= 0;
      release_ff <= 0;
    end else begin
      if (counter < release_time) begin
        counter <= counter + 1;
        release_ff <= 0;
      end else begin
        release_ff <= 1;
      end
    end
  end

  assign release = release_ff;

endmodule