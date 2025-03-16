module seq_detector (
  input in,
  output out
);

  // Define the states of the state machine
  parameter STATE0 = 2'b00;
  parameter STATE1 = 2'b01;
  parameter STATE2 = 2'b10;
  
  // Define the current state and next state variables
  reg [1:0] current_state;
  reg [1:0] next_state;
  
  // Initialize the current state to STATE0
  initial current_state = STATE0;
  
  // Define the state transition logic
  always @ (current_state, in) begin
    case (current_state)
      STATE0: begin
        if (in == 1) begin
          next_state = STATE1;
        end else begin
          next_state = STATE0;
        end
      end
      STATE1: begin
        if (in == 0) begin
          next_state = STATE0;
        end else begin
          next_state = STATE2;
        end
      end
      STATE2: begin
        if (in == 1) begin
          next_state = STATE0;
          out = 1;
        end else begin
          next_state = STATE0;
        end
      end
    endcase
  end
  
  // Update the current state with the next state
  always @ (posedge clk) begin
    current_state <= next_state;
  end
  
endmodule