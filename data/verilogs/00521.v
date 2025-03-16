module TDC (
  input in1,
  input in2,
  input clk,
  output reg [31:0] out
);

reg [31:0] counter;
reg [1:0] state;

always @(posedge clk) begin
  case (state)
    2'b00: begin
      counter <= 0;
      if (in1) state <= 2'b01;
    end
    2'b01: begin
      if (in2) begin
        out <= counter;
        state <= 2'b00;
      end else begin
        counter <= counter + 1;
      end
    end
  endcase
end

endmodule