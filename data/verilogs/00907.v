module fsm_3bit_pattern_detection (
  input clk,
  input reset,
  input data,
  output reg match
);

  // Define the states
  parameter S0 = 2'b00;
  parameter S1 = 2'b01;
  parameter S2 = 2'b10;
  parameter Match = 2'b11;

  // Define the state register and next state logic
  reg [1:0] state, next_state;
  always @ (posedge clk, posedge reset) begin
    if (reset) begin
      state <= S0;
    end else begin
      state <= next_state;
    end
  end

  // Define the output logic
  always @ (state) begin
    match = (state == Match);
  end

  // Define the next state logic
  always @ (state, data) begin
    case (state)
      S0: begin
        if (data == 1) begin
          next_state = S1;
        end else begin
          next_state = S0;
        end
      end
      S1: begin
        if (data == 0) begin
          next_state = S2;
        end else begin
          next_state = S0;
        end
      end
      S2: begin
        if (data == 1) begin
          next_state = Match;
        end else begin
          next_state = S0;
        end
      end
      Match: begin
        next_state = S0;
      end
      default: begin
        next_state = S0;
      end
    endcase
  end

endmodule
