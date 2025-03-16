module peripheral_ultra(clk, rst, d_in, cs, addr, rd, wr, d_out, trigg, echo);

  parameter DATA_ADDR = 4'h4;
  parameter DONE_ADDR = 4'h2;
  parameter ENABLE_ADDR = 4'h0;

  input clk;
  input rst;
  input [15:0] d_in;
  input cs;
  input [3:0] addr;
  input rd;
  input wr;
  output reg [15:0] d_out;
  output trigg;
  output echo;

  reg [5:0] s;
  reg enable;
  wire [7:0] dout;
  wire done;

  ultrasonido ultra(.clk(clk), .reset(rst), .d(dout), .trigg(trigg), .ECHO(echo), .ENABLE(enable), .DONE(done));

  always @(*) begin
    case (addr)
      ENABLE_ADDR: s = (cs && wr) ? 5'b00001 : 5'b00000;
      DONE_ADDR: s = (cs && rd) ? 5'b00010 : 5'b00000;
      DATA_ADDR: s = (cs && rd) ? 5'b00100 : 5'b00000;
      default: s = 5'b00000;
    endcase
  end

  always @(negedge clk) begin
    if (s[0] == 1) begin
      enable <= d_in[0];
    end
  end

  always @(negedge clk) begin
    case (s)
      5'b00010: d_out <= {8'h00, done};
      5'b00100: d_out <= {8'h00, dout};
      default: d_out <= 16'h0000;
    endcase
  end

endmodule