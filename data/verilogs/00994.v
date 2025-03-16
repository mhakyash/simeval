module memory_generator (
  a,
  d,
  clk,
  we,
  spo
);

input wire [14 : 0] a;
input wire [7 : 0] d;
input wire clk;
input wire we;
output wire [7 : 0] spo;

reg [7:0] memory[0:32767];

always @(posedge clk) begin
  if (we) begin
    memory[a] <= d;
  end
end

assign spo = memory[a];

endmodule