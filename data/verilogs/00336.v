module Timer(clk_i, signal_i, button_i, second_o);
  input clk_i;
  input [2:0] signal_i;
  input [2:0] button_i;
  output reg [31:0] second_o;

  reg [31:0] counter;
  reg [1:0] state;

  assign second_o = state == 2'b01 ? counter / 25000 : 32'd0;

  parameter SSTOP = 2'b00;
  parameter SSTART = 2'b01;
  parameter SPAUSE = 2'b10;

  initial begin
    state = SSTOP;
    counter = 0;
    second_o = 0;
  end

  parameter K0 = 3'b100;
  parameter K1 = 3'b101;
  parameter K2 = 3'b110;
  parameter K3 = 3'b111;

  parameter CLKRATE = 32'd25000;

  always @(posedge clk_i) begin
    case (state)
      SSTOP: begin
        if (button_i == K3) begin
          state <= SSTART;
        end
      end
      SSTART: begin
        if (button_i == K1) begin
          state <= SSTOP;
          counter <= 0;
          second_o <= 0;
        end else if (button_i == K3) begin
          state <= SPAUSE;
        end else begin
          if (counter == CLKRATE) begin
            counter <= 0;
            second_o <= second_o + 1;
          end else begin
            counter <= counter + 1;
          end
        end
      end
      SPAUSE: begin
        if (button_i == K1) begin
          state <= SSTOP;
          counter <= 0;
          second_o <= 0;
        end else if (button_i == K3) begin
          state <= SSTART;
        end
      end
    endcase
  end
endmodule