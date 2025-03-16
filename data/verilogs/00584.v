module hash(
  input CLK,
  input RST,
  input enable,
  input onloop,
  input [7:0] word,
  input [7:0] key_length,
  input [7:0] interval,
  output reg valid,
  output reg [31:0] hashkey
);

reg [7:0] count;
reg [31:0] hash;
reg [31:0] poly_coeffs = 8'b10000001;

always @(posedge CLK) begin
  if (RST) begin
    count <= 8'b0;
    hash <= 32'b0;
    valid <= 1'b0;
    hashkey <= 32'b0;
  end else if (enable) begin
    if (count == key_length - 1) begin
      valid <= 1'b1;
      hashkey <= hash;
    end else if (count % interval == 0) begin
      hashkey <= hash;
    end

    if (onloop) begin
      hash <= hash + (word << (count * 8));
      count <= count + 8'b1;
    end
  end
end

always @(*) begin
  if (enable && !onloop) begin
    hashkey <= hash;
  end
end

always @(posedge CLK) begin
  if (RST) begin
    hash <= 32'b0;
  end else if (enable && onloop) begin
    hash <= (hash << 8) ^ (word * poly_coeffs);
  end
end

endmodule