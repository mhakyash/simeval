module seq_detector (
  input in,
  output out
);

  // Define the four states
  parameter state0 = 2'b00;
  parameter state1 = 2'b01;
  parameter state2 = 2'b10;
  parameter state3 = 2'b11;

  // Define the state register and initialize to state0
  reg [1:0] state_reg = state0;

  // Define the output register and initialize to 0
  reg out_reg = 1'b0;

  // Define the state machine transitions
  always @ (posedge in) begin
    case (state_reg)
      state0: if (in) state_reg <= state1;
              else state_reg <= state0;
      state1: if (in) state_reg <= state2;
              else state_reg <= state0;
      state2: if (in) state_reg <= state3;
              else state_reg <= state0;
      state3: if (!in) begin
                state_reg <= state0;
                out_reg <= 1'b1;
              end
              else state_reg <= state3;
    endcase
  end

  // Define the output as a function of the current state and input
  always @ (state_reg) begin
    case (state_reg)
      state0: out_reg <= 1'b0;
      state1: out_reg <= 1'b0;
      state2: out_reg <= 1'b0;
      state3: out_reg <= 1'b1;
    endcase
  end

  // Assign the output to the output register
  assign out = out_reg;

endmodule