module hamming_code (
  input [6:0] data_in,
  input clk,
  input rst,
  input enable,
  output reg [15:0] code_out,
  output reg error
);

  reg [3:0] parity_bits;

  always @* begin
    parity_bits[0] = data_in[2] ^ data_in[4] ^ data_in[6] ^ data_in[0] ^ data_in[8] ^ data_in[10] ^ data_in[12];
    parity_bits[1] = data_in[2] ^ data_in[5] ^ data_in[6] ^ data_in[9] ^ data_in[10] ^ data_in[13] ^ data_in[12];
    parity_bits[2] = data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[12] ^ data_in[13] ^ data_in[14] ^ data_in[15];
    parity_bits[3] = data_in[8] ^ data_in[9] ^ data_in[10] ^ data_in[11] ^ data_in[12] ^ data_in[13] ^ data_in[14];
    code_out = {parity_bits, data_in};
  end

  always @(posedge clk) begin
    if (rst) begin
      code_out <= 0;
      error <= 0;
    end else if (enable) begin
      if (parity_bits != 0) begin
        // Error detected
        if (parity_bits[0] ^ parity_bits[1] ^ parity_bits[2] ^ parity_bits[3]) begin
          // Single bit error
          code_out[parity_bits[3:0]] <= ~code_out[parity_bits[3:0]];
          error <= 1;
        end else begin
          // Multiple bit errors
          error <= 1;
        end
      end else begin
        // No error
        error <= 0;
      end
    end
  end

endmodule