module mealy_fsm_4bit_sequence_detection (
  input clk,
  input reset,
  input data,
  output reg match
);

  parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;
  reg [1:0] state, next_state;

  always @(posedge clk) begin
    if (reset) begin
      state <= S0;
      match <= 1'b0;
    end else begin
      state <= next_state;
      match <= 1'b0;
      case (state)
        S0: begin
          if (data == 1'b1) begin
            next_state <= S1;
          end else begin
            next_state <= S0;
          end
        end
        S1: begin
          if (data == 1'b0) begin
            next_state <= S2;
          end else begin
            next_state <= S0;
          end
        end
        S2: begin
          if (data == 1'b1) begin
            next_state <= S0;
            match <= 1'b1;
          end else begin
            next_state <= S0;
          end
        end
      endcase
    end
  end

endmodule
