module traffic_light_controller (
  input clk,
  input reset,
  input [1:0] state_in,
  output reg [1:0] state_out,
  output reg red,
  output reg green
);

  reg [2:0] state;
  reg [2:0] next_state;
  
  always @(posedge clk, posedge reset) begin
    if (reset) begin
      state <= 3'b000;
    end else begin
      state <= next_state;
    end
  end
  
  always @(*) begin
    case (state)
      3'b000: begin // red light on
        state_out = 3'b000;
        red = 1'b1;
        green = 1'b0;
        next_state = 3'b001;
      end
      3'b001: begin // green light on
        state_out = 3'b001;
        red = 1'b0;
        green = 1'b1;
        next_state = 3'b010;
      end
      3'b010: begin // yellow light on
        state_out = 3'b010;
        red = 1'b1;
        green = 1'b0;
        next_state = 3'b011;
      end
      3'b011: begin // red light on
        state_out = 3'b000;
        red = 1'b1;
        green = 1'b0;
        next_state = 3'b000;
      end
      default: begin // should never happen
        state_out = 3'b000;
        red = 1'b1;
        green = 1'b0;
        next_state = 3'b000;
      end
    endcase
  end
  
endmodule
