module up_down_counter(
  input aclr, clock, cnt_en, sclr, updown, sload,
  input [3:0] data,
  output reg [3:0] q
);

  always @(posedge clock or negedge aclr or negedge sclr) begin
    if (!aclr) begin
      q <= 4'b0;
    end else if (!sclr) begin
      q <= 4'b0;
    end else if (sload) begin
      q <= data;
    end else if (cnt_en) begin
      if (updown) begin
        q <= q + 1;
      end else begin
        q <= q - 1;
      end
    end
  end

endmodule