module chatgpt_generate_JC_counter(
  input                clk,
  input                rst_n,
  output reg  [3:0]    Q
);

  reg [63:0] shift_reg;
  wire xor_out;

  assign xor_out = shift_reg[0] ^ shift_reg[5] ^ shift_reg[10] ^ shift_reg[27] ^ shift_reg[63];

  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
      shift_reg <= 64'b0;
      Q <= 4'b0;
    end
    else begin
      shift_reg <= {shift_reg[62:0], xor_out};
      Q <= shift_reg[3:0];
    end
  end

endmodule