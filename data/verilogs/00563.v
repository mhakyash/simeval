module blk_mem_gen_2port (
  clka,
  wea,
  addra,
  dina,
  clkb,
  addrb,
  dinb,
  web,
  douta,
  doutb
);

parameter WIDTH = 12;
parameter DEPTH = 307200;

input wire clka;
input wire [0 : 0] wea;
input wire [DEPTH_LOG2 - 1 : 0] addra;
input wire [WIDTH - 1 : 0] dina;
input wire clkb;
input wire [DEPTH_LOG2 - 1 : 0] addrb;
input wire [WIDTH - 1 : 0] dinb;
input wire [0 : 0] web;
output wire [WIDTH - 1 : 0] douta;
output wire [WIDTH - 1 : 0] doutb;

localparam DEPTH_LOG2 = $clog2(DEPTH);

reg [WIDTH - 1 : 0] mem [0 : DEPTH - 1];

assign douta = mem[addra];
assign doutb = mem[addrb];

always @(posedge clka) begin
  if (wea) begin
    if (web) begin
      mem[addra] <= dina;
      mem[addrb] <= dinb;
    end else begin
      mem[addra] <= dina;
    end
  end else begin
    if (web) begin
      mem[addrb] <= dinb;
    end
  end
end

endmodule