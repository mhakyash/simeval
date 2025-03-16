module FSM (
  input [n-1:0] in,
  output [m-1:0] out
);

parameter n = 4; // number of input signals
parameter m = 2; // number of output signals
parameter s = 8; // number of states in the FSM

reg [s-1:0] state;
reg [m-1:0] output_reg;

always @ (posedge clk) begin
  case(state)
    3'b000: begin // state 0
      if (in[0] && !in[1]) begin
        state <= 3'b001;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b010;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b000;
        output_reg <= 2'b00;
      end
    end
    3'b001: begin // state 1
      if (in[0] && !in[1]) begin
        state <= 3'b011;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b000;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b001;
        output_reg <= 2'b00;
      end
    end
    3'b010: begin // state 2
      if (in[0] && !in[1]) begin
        state <= 3'b000;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b110;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b010;
        output_reg <= 2'b00;
      end
    end
    3'b011: begin // state 3
      if (in[0] && !in[1]) begin
        state <= 3'b111;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b100;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b011;
        output_reg <= 2'b00;
      end
    end
    3'b100: begin // state 4
      if (in[0] && !in[1]) begin
        state <= 3'b101;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b010;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b100;
        output_reg <= 2'b00;
      end
    end
    3'b101: begin // state 5
      if (in[0] && !in[1]) begin
        state <= 3'b110;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b001;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b101;
        output_reg <= 2'b00;
      end
    end
    3'b110: begin // state 6
      if (in[0] && !in[1]) begin
        state <= 3'b100;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b011;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b110;
        output_reg <= 2'b00;
      end
    end
    3'b111: begin // state 7
      if (in[0] && !in[1]) begin
        state <= 3'b010;
        output_reg <= 2'b10;
      end else if (!in[0] && in[1]) begin
        state <= 3'b101;
        output_reg <= 2'b01;
      end else begin
        state <= 3'b111;
        output_reg <= 2'b00;
      end
    end
  endcase
end

assign out = output_reg;

endmodule