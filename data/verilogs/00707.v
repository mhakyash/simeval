module pulse_detection (
  input clk,
  input reset,
  input [31:0] in,
  input [15:0] threshold,
  output reg [15:0] frequency,
  output reg threshold_exceeded
);

  reg [31:0] count;
  reg [3:0] prescaler;
  reg [31:0] prev_in;
  reg [31:0] curr_in;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 0;
      prescaler <= 0;
      prev_in <= 0;
      curr_in <= 0;
      frequency <= 0;
      threshold_exceeded <= 0;
    end
    else begin
      if (prescaler == 0) begin
        prev_in <= curr_in;
        curr_in <= in;
        if (prev_in == 1'b0 && curr_in == 1'b1) begin
          count <= count + 1;
        end
        prescaler <= 15;
      end
      else begin
        prescaler <= prescaler - 1;
      end
      if (count >= 100000000) begin
        frequency <= count / 100000;
        count <= 0;
        if (frequency > threshold) begin
          threshold_exceeded <= 1;
        end
        else begin
          threshold_exceeded <= 0;
        end
      end
    end
  end

endmodule