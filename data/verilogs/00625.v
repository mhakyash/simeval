module chatgpt_generate_JC_counter(
  input                clk,
  input                rst_n,
  output reg  [63:0]   Q
);

  reg [3:0] q0, q1, q2, q3;

  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
      q0 <= 4'b0000;
      q1 <= 4'b0000;
      q2 <= 4'b0000;
      q3 <= 4'b0000;
      Q <= 64'b0;
    end else begin
      q0 <= {q1[2:0], q1[3]};
      q1 <= {q2[2:0], q2[3]};
      q2 <= {q3[2:0], q3[3]};
      q3 <= {q0[2:0], q0[3]};
      Q <= {q3, q2, q1, q0};
    end
  end

endmodule