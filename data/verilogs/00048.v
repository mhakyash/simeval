module hamming_code (
  input [k-1:0] in,
  output [n-1:0] out
);

parameter k = 4; // number of input signals
parameter n = 7; // number of output signals (must satisfy n = 2^r - 1 where r is an integer)

// Define parity bit positions
integer i, j;
reg [3:0] parity_pos;
initial begin
  parity_pos[0] = 1;
  for (i = 1; i < 4; i = i + 1) begin
    parity_pos[i] = parity_pos[i-1] << 1;
  end
end

// Encoder
reg [k-1:0] data_bits;
reg [n-k-1:0] parity_bits;
wire [n-1:0] encoded_bits;
assign encoded_bits = {parity_bits, data_bits};
always @* begin
  for (i = 0; i < k; i = i + 1) begin
    data_bits[i] = in[i];
  end
  for (i = 0; i < n-k; i = i + 1) begin
    parity_bits[i] = 0;
    for (j = 0; j < k; j = j + 1) begin
      if (parity_pos[i] & (j+1)) begin
        parity_bits[i] = parity_bits[i] ^ data_bits[j];
      end
    end
  end
end

// Decoder
reg [n-1:0] received_bits;
reg [k-1:0] corrected_bits;
wire error_detected;
assign error_detected = (received_bits ^ encoded_bits) != 0;
always @* begin
  for (i = 0; i < n; i = i + 1) begin
    received_bits[i] = out[i];
  end
  if (error_detected) begin
    for (i = 0; i < n; i = i + 1) begin
      if (parity_pos & (i+1)) begin
        corrected_bits[i] = received_bits[i] ^ 1;
      end else begin
        corrected_bits[i] = received_bits[i];
      end
    end
  end else begin
    for (i = 0; i < k; i = i + 1) begin
      corrected_bits[i] = received_bits[i+n-k];
    end
  end
end

endmodule