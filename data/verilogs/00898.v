module fsm_pattern_detection (
  input clk,
  input reset,
  input data,
  output reg match,
  output reg done
);

  // Define the states
  parameter IDLE = 2'b00;
  parameter DETECT_1 = 2'b01;
  parameter DETECT_2 = 2'b10;

  // Define the current state
  reg [1:0] state = IDLE;

  // Define the pattern to detect
  parameter PATTERN = 2'b1010;

  // Define the pattern index
  reg [1:0] pattern_idx = 2'b00;

  // Define the match flag
  reg match_flag = 1'b0;

  // Define the done flag
  reg done_flag = 1'b0;

  // State transition logic
  always @(posedge clk) begin
    if (reset) begin
      state <= IDLE;
      pattern_idx <= 2'b00;
      match_flag <= 1'b0;
      done_flag <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          if (data == 1'b1) begin
            state <= DETECT_1;
            pattern_idx <= 2'b01;
          end
        end
        DETECT_1: begin
          if (data == 1'b0) begin
            state <= IDLE;
            pattern_idx <= 2'b00;
          end else if (pattern_idx == 2'b11) begin
            match_flag <= 1'b1;
            state <= DETECT_2;
          end else begin
            pattern_idx <= pattern_idx + 2'b01;
          end
        end
        DETECT_2: begin
          if (data == 1'b0) begin
            state <= IDLE;
            pattern_idx <= 2'b00;
            match_flag <= 1'b0;
            done_flag <= 1'b1;
          end
        end
      endcase
    end
  end

  // Assign the outputs
  assign match = match_flag;
  assign done = done_flag;

endmodule
