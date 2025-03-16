module counter (
    clk,
    rst,
    ctrl,
    out
  );

  input clk, rst, ctrl;
  output [3:0] out;
  reg [3:0] out;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      out <= 4'b0;
    end else begin
      if (ctrl) begin
        if (out == 4'hF) begin
          out <= 4'b0;
        end else begin
          out <= out + 1;
        end
      end else begin
        if (out == 4'b0) begin
          out <= 4'hF;
        end else begin
          out <= out - 1;
        end
      end
    end
  end

endmodule