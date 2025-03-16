module chatgpt_generate_edge_detect(
  input               clk,
  input               rst_n,
  input               a,
  output reg          rise,
  output reg          down
);

  // Define states
  parameter STATE_IDLE = 2'b00;
  parameter STATE_RISING_EDGE = 2'b01;
  parameter STATE_FALLING_EDGE = 2'b10;

  // Define current state and next state
  reg [1:0] state, next_state;

  // Define edge detection variables
  reg prev_a;

  // Assign initial values
  always @ (posedge clk or negedge rst_n) begin
    if (~rst_n) begin
      state <= STATE_IDLE;
      prev_a <= 1'b0;
      rise <= 1'b0;
      down <= 1'b0;
    end else begin
      state <= next_state;
      prev_a <= a;
    end
  end

  // Define state transitions and edge detection
  always @ (*) begin
    case (state)
      STATE_IDLE: begin
        if (a != prev_a) begin
          if (a > prev_a) begin
            next_state = STATE_RISING_EDGE;
          end else begin
            next_state = STATE_FALLING_EDGE;
          end
        end else begin
          next_state = STATE_IDLE;
        end
      end
      STATE_RISING_EDGE: begin
        rise <= 1'b1;
        next_state = STATE_IDLE;
      end
      STATE_FALLING_EDGE: begin
        down <= 1'b1;
        next_state = STATE_IDLE;
      end
      default: next_state = STATE_IDLE;
    endcase
  end

endmodule