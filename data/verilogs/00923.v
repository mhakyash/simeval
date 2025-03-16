module multi_io_module (
  input clk,
  input reset,
  input [7:0] data_in,
  input enable,
  input [3:0] addr,
  output reg [7:0] data_out,
  output reg valid,
  output reg done,
  output reg error
);

  always @(posedge clk) begin
    if (reset) begin
      data_out <= 8'b0;
      valid <= 1'b0;
      done <= 1'b0;
      error <= 1'b0;
    end else if (enable) begin
      case (addr)
        4'h0: begin
          data_out <= data_in;
          valid <= 1'b1;
          done <= 1'b0;
          error <= 1'b0;
        end
        4'h1: begin
          data_out <= data_in;
          valid <= 1'b1;
          done <= 1'b0;
          error <= 1'b1;
        end
        4'h2: begin
          data_out <= data_in;
          valid <= 1'b0;
          done <= 1'b1;
          error <= 1'b0;
        end
        4'h3: begin
          data_out <= data_in;
          valid <= 1'b0;
          done <= 1'b1;
          error <= 1'b1;
        end
        default: begin
          data_out <= data_in;
          valid <= 1'b0;
          done <= 1'b0;
          error <= 1'b0;
        end
      endcase
    end
  end

endmodule