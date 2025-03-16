module traffic_light_controller (
  input clk,
  input reset,
  output reg green,
  output reg red
);

  // Define the states
  parameter GREEN = 2'b00;
  parameter YELLOW = 2'b01;
  parameter RED = 2'b10;
  
  // Define the state register and initialize to GREEN
  reg [1:0] state = GREEN;
  
  // Define the state machine logic
  always @(posedge clk, posedge reset) begin
    if (reset) begin
      state <= GREEN;
    end else begin
      case (state)
        GREEN: begin
          // Stay in GREEN state for 10 time units
          if (count == 10) begin
            state <= YELLOW;
            count <= 0;
          end else begin
            count <= count + 1;
          end
        end
        YELLOW: begin
          // Stay in YELLOW state for 2 time units
          if (count == 2) begin
            state <= RED;
            count <= 0;
          end else begin
            count <= count + 1;
          end
        end
        RED: begin
          // Stay in RED state for 8 time units
          if (count == 8) begin
            state <= GREEN;
            count <= 0;
          end else begin
            count <= count + 1;
          end
        end
      endcase
    end
  end
  
  // Define the output logic
  always @(state) begin
    case (state)
      GREEN: begin
        green <= 1;
        red <= 0;
      end
      YELLOW: begin
        green <= 0;
        red <= 0;
      end
      RED: begin
        green <= 0;
        red <= 1;
      end
    endcase
  end
  
  // Define the count register
  reg [3:0] count = 0;
  
endmodule
