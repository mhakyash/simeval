module chatgpt_generate_JC_counter(
  input                clk,
  input                rst_n,
  output reg  [3:0]    Q
);

  reg [63:0] shift_reg;
  reg [3:0] next_state;

  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
      shift_reg <= 64'b0;
      Q <= 4'b0;
    end
    else begin
      shift_reg <= {shift_reg[62:0], Q[3]};
      next_state = {shift_reg[0], shift_reg[31], shift_reg[47], shift_reg[55]} ^ 4'b1111;
      Q <= next_state;
    end
  end

endmodule