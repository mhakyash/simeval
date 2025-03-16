module clock_gate(
  input CLK,
  input EN,
  input TE,
  output ENCLK
);

  reg [1:0] state;
  wire CLK_EN;

  assign CLK_EN = EN & state[1];

  always @(posedge CLK) begin
    case (state)
      2'b00: begin // IDLE
        if (EN) begin
          state <= 2'b01; // ENABLED
        end
      end
      2'b01: begin // ENABLED
        if (!EN) begin
          state <= 2'b00; // IDLE
        end
        else if (TE) begin
          state <= 2'b10; // TEST ENABLED
        end
      end
      2'b10: begin // TEST ENABLED
        if (!TE) begin
          state <= 2'b01; // ENABLED
        end
      end
    endcase
  end

  always @(posedge CLK_EN) begin
    if (state == 2'b01) begin // ENABLED
      ENCLK <= 1'b1;
    end
    else begin
      ENCLK <= 1'b0;
    end
  end

endmodule