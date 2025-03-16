module mealy_101_sequence_detection (
  input clk,
  input reset,
  input in1,
  input in2,
  output reg out
);

  // Define the states
  parameter C = 2'b00;
  parameter A = 2'b01;
  parameter B = 2'b10;
  
  // Define the current state and next state
  reg [1:0] curr_state, next_state;
  
  // Define the output
  reg out_reg;
  
  // Synchronous reset
  always @(posedge clk) begin
    if (reset) begin
      curr_state <= C;
      out_reg <= 1'b0;
    end
    else begin
      curr_state <= next_state;
      out_reg <= 1'b0;
    end
  end
  
  // Mealy state machine
  always @(*) begin
    case (curr_state)
      C: begin
        if (in1 == 1'b1 && in2 == 1'b0)
          next_state = A;
        else
          next_state = C;
      end
      A: begin
        if (in1 == 1'b0 && in2 == 1'b1)
          next_state = B;
        else if (in1 == 1'b1 && in2 == 1'b0)
          next_state = A;
        else
          next_state = C;
      end
      B: begin
        if (in1 == 1'b1 && in2 == 1'b1) begin
          next_state = C;
          out_reg <= 1'b1;
        end
        else if (in1 == 1'b1 && in2 == 1'b0)
          next_state = A;
        else
          next_state = C;
      end
    endcase
  end
  
  // Assign the output
  always @(posedge clk) begin
    out <= out_reg;
  end

endmodule
