module LZW (
  input clk,
  input rst,
  input [7:0] in,
  output reg [15:0] out
);

  reg [11:0] dictionary [0:4095];
  reg [11:0] next_code;
  reg [7:0] current_string;
  reg [11:0] new_string;
  reg [11:0] code;
  reg [11:0] prev_code;
  reg [7:0] first_char;
  reg [1:0] state;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state <= 2'b00;
      next_code <= 12'h100;
      current_string <= 8'h00;
      prev_code <= 12'h000;
    end else begin
      case (state)
        2'b00: begin
          current_string <= in;
          state <= 2'b01;
        end

        2'b01: begin
          new_string <= {current_string, in};
          if (new_string < next_code) begin
            current_string <= new_string;
          end else begin
            code <= current_string;
            out <= {code, 1'b1};
            dictionary[next_code] <= new_string;
            next_code <= next_code + 1;
            current_string <= in;
          end
        end
      endcase
    end
  end

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state <= 2'b10;
      next_code <= 12'h100;
      prev_code <= 12'h000;
    end else begin
      case (state)
        2'b10: begin
          code <= in;
          if (code < next_code) begin
            out <= dictionary[code];
            first_char <= out[7:0];
            state <= 2'b11;
          end
        end

        2'b11: begin
          new_string <= {first_char, in};
          dictionary[next_code] <= new_string;
          next_code <= next_code + 1;
          prev_code <= code;
          state <= 2'b10;
        end
      endcase
    end
  end

endmodule