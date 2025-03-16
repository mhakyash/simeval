module detect_sequence(
  input clk,
  input data,
  output reg out
);

reg [3:0] state;

always @(posedge clk) begin
  case (state)
    4'b0000: if (data == 1'b0) state <= 4'b0001; else state <= 4'b0000;
    4'b0001: if (data == 1'b1) state <= 4'b0010; else state <= 4'b0000;
    4'b0010: if (data == 1'b1) state <= 4'b0010; else state <= 4'b0011;
    4'b0011: if (data == 1'b0) state <= 4'b0100; else state <= 4'b0000;
    4'b0100: if (data == 1'b1) begin out <= 1'b1; state <= 4'b0100; end else state <= 4'b0000;
    default: state <= 4'b0000;
  endcase
end

endmodule