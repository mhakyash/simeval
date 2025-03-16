module PCG (
  input clk_en,
  input [3:0] freq_ctrl,
  input [3:0] duty_ctrl,
  output reg clk
);

parameter f_max = 1_000_000_000;  // 1 GHz
parameter f_min = 1_000_000;      // 1 MHz
parameter d_max = 50;             // 50%
parameter d_min = 10;             // 10%

reg [31:0] count;
reg [31:0] threshold;
reg [31:0] duty_threshold;

always @ (posedge clk or negedge clk) begin
  if (count >= threshold) begin
    count <= 0;
    clk <= ~clk;
  end else begin
    count <= count + 1;
  end
end

always @ (posedge clk or negedge clk) begin
  if (count >= duty_threshold) begin
    duty_threshold <= threshold * (d_min + (duty_ctrl * (d_max - d_min)))/100;
  end else begin
    duty_threshold <= threshold * (d_max - (duty_ctrl * (d_max - d_min)))/100;
  end
end

always @ (posedge clk or negedge clk) begin
  if (clk_en) begin
    threshold <= (f_min + (freq_ctrl * (f_max - f_min))) / 2;
  end else begin
    threshold <= 0;
    duty_threshold <= 0;
    count <= 0;
    clk <= 0;
  end
end

endmodule