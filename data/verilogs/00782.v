module PLL40_2(
  input BYPASS,
  input [7:0] DYNAMICDELAY,
  input EXTFEEDBACK,
  input LATCHINPUTVALUE,
  output LOCK,
  input PLLIN,
  output PLLOUTCOREA,
  output PLLOUTCOREB,
  output PLLOUTGLOBALA,
  output PLLOUTGLOBALB,
  input RESETB,
  input SCLK,
  input SDI,
  output SDO
);

  // Internal signals
  wire [7:0] delay_count;
  wire [7:0] delay_count_max = 8'hFF;
  reg [1:0] state_reg = 2'b00;
  reg [1:0] state_next;
  reg [7:0] feedback_reg;
  reg [7:0] feedback_next;
  reg [7:0] shift_reg = 8'hAA;
  reg [7:0] shift_next;
  reg [7:0] delay_reg;
  reg [7:0] delay_next;
  reg lock_reg;
  reg lock_next;
  reg [7:0] counter_reg = 8'h00;
  reg [7:0] counter_next;
  reg [7:0] corea_reg = 8'h00;
  reg [7:0] corea_next;
  reg [7:0] coreb_reg = 8'h00;
  reg [7:0] coreb_next;
  reg [7:0] globala_reg = 8'h00;
  reg [7:0] globala_next;
  reg [7:0] globalb_reg = 8'h00;
  reg [7:0] globalb_next;

  // State machine
  always @ (posedge PLLIN or negedge RESETB) begin
    if (!RESETB) begin
      state_reg <= 2'b00;
    end else begin
      state_reg <= state_next;
    end
  end

  always @ (*) begin
    case (state_reg)
      2'b00: begin
        state_next = BYPASS ? 2'b01 : 2'b10;
      end
      2'b01: begin
        state_next = 2'b00;
      end
      2'b10: begin
        state_next = 2'b11;
      end
      2'b11: begin
        state_next = 2'b10;
      end
      default: begin
        state_next = 2'b00;
      end
    endcase
  end

  // Feedback loop
  always @ (posedge PLLIN or negedge RESETB) begin
    if (!RESETB) begin
      feedback_reg <= 8'h00;
    end else begin
      feedback_reg <= feedback_next;
    end
  end

  always @ (*) begin
    if (EXTFEEDBACK) begin
      feedback_next = {feedback_reg[6:0], PLLOUTCOREA};
    end else begin
      feedback_next = {feedback_reg[6:0], feedback_reg[7]};
    end
  end

  // Shift register
  always @ (posedge SCLK) begin
    shift_reg <= {shift_reg[6:0], SDI};
  end

  always @ (*) begin
    shift_next = {shift_reg[6:0], shift_reg[7]};
  end

  // Delay counter
  always @ (posedge PLLIN) begin
    if (delay_count == delay_count_max) begin
      delay_count <= 0;
    end else begin
      delay_count <= delay_count + 1;
    end
  end

  always @ (*) begin
    delay_next = DYNAMICDELAY + shift_next;
  end

  // Lock detector
  always @ (posedge PLLIN) begin
    if (delay_count == delay_next) begin
      lock_reg <= 1;
    end else begin
      lock_reg <= 0;
    end
  end

  always @ (*) begin
    lock_next = lock_reg;
  end

  // Counter
  always @ (posedge PLLIN) begin
    if (counter_reg == delay_count_max) begin
      counter_reg <= 0;
    end else begin
      counter_reg <= counter_reg + 1;
    end
  end

  always @ (*) begin
    counter_next = counter_reg;
  end

  // Core output A
  always @ (posedge PLLIN) begin
    if (counter_reg == delay_count_max) begin
      corea_reg <= {corea_reg[6:0], lock_reg};
    end else begin
      corea_reg <= {corea_reg[6:0], corea_reg[7]};
    end
  end

  always @ (*) begin
    corea_next = corea_reg;
  end

  // Core output B
  always @ (posedge PLLIN) begin
    if (counter_reg == delay_count_max) begin
      coreb_reg <= {coreb_reg[6:0], corea_reg[7]};
    end else begin
      coreb_reg <= {coreb_reg[6:0], coreb_reg[7]};
    end
  end

  always @ (*) begin
    coreb_next = coreb_reg;
  end

  // Global output A
  always @ (posedge PLLIN) begin
    if (counter_reg == delay_count_max) begin
      globala_reg <= {globala_reg[6:0], lock_reg};
    end else begin
      globala_reg <= {globala_reg[6:0], globala_reg[7]};
    end
  end

  always @ (*) begin
    globala_next = globala_reg;
  end

  // Global output B
  always @ (posedge PLLIN) begin
    if (counter_reg == delay_count_max) begin
      globalb_reg <= {globalb_reg[6:0], globala_reg[7]};
    end else begin
      globalb_reg <= {globalb_reg[6:0], globalb_reg[7]};
    end
  end

  always @ (*) begin
    globalb_next = globalb_reg;
  end

  // Output assignment
  assign LOCK = lock_reg;
  assign PLLOUTCOREA = corea_reg[7];
  assign PLLOUTCOREB = coreb_reg[7];
  assign PLLOUTGLOBALA = globala_reg[7];
  assign PLLOUTGLOBALB = globalb_reg[7];
  assign SDO = shift_reg[7];

  // Register updates
  always @ (posedge PLLIN) begin
    feedback_reg <= feedback_next;
    shift_reg <= shift_next;
    delay_reg <= delay_next;
    lock_reg <= lock_next;
    counter_reg <= counter_next;
    corea_reg <= corea_next;
    coreb_reg <= coreb_next;
    globala_reg <= globala_next;
    globalb_reg <= globalb_next;
  end

endmodule