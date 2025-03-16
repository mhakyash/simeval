module longest_sequence_detection (
  input clk,
  input reset,
  input [15:0] data,
  output reg [3:0] length,
  output reg [3:0] start_index
);

reg [3:0] count; // counter for current sequence length
reg [3:0] max_count; // counter for longest sequence length
reg [3:0] index; // counter for current sequence starting index
reg [3:0] max_index; // counter for starting index of longest sequence

always @(posedge clk) begin
  if (reset) begin
    count <= 0;
    max_count <= 0;
    index <= 0;
    max_index <= 0;
  end else begin
    if (data == 16'hFFFF) begin // all 1's case
      count <= 16;
      max_count <= 16;
      index <= 0;
      max_index <= 0;
    end else if (data == 16'h0000) begin // all 0's case
      count <= 0;
      max_count <= 0;
      index <= 0;
      max_index <= 0;
    end else begin // normal case
      if (data[0] == 1) begin
        if (count == 0) begin
          index <= 0;
        end
        count <= count + 1;
      end else begin
        if (count > max_count) begin
          max_count <= count;
          max_index <= index;
        end
        count <= 0;
        index <= index + count + 1;
      end
    end
  end
end

assign length = max_count;
assign start_index = max_index;

endmodule
