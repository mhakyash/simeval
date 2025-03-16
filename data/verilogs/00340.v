module counter_modulo3 (
  input clk,
  input reset,
  output reg [3:0] count,
  output reg mod3
);

  reg [1:0] mod_cnt;

  always @(posedge clk) begin
    if (reset) begin
      count <= 4'b0000;
      mod_cnt <= 2'b00;
      mod3 <= 1'b0;
    end
    else begin
      count <= count + 1;
      mod_cnt <= mod_cnt + 1;
      if (mod_cnt == 2'b10) begin
        mod_cnt <= 2'b00;
        mod3 <= ~mod3;
      end
    end
  end

endmodule