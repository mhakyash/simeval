module binary_to_gray(
  input wire clk,
  input wire reset,
  input wire [7:0] bin,
  output reg [7:0] gray
);

  always @(posedge clk, posedge reset) begin
    if (reset) begin
      gray <= 8'b0;
    end else begin
      gray[7] <= bin[7];
      gray[6] <= bin[7] ^ bin[6];
      gray[5] <= bin[6] ^ bin[5];
      gray[4] <= bin[5] ^ bin[4];
      gray[3] <= bin[4] ^ bin[3];
      gray[2] <= bin[3] ^ bin[2];
      gray[1] <= bin[2] ^ bin[1];
      gray[0] <= bin[1] ^ bin[0];
    end
  end

endmodule