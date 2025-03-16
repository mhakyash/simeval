module uart_tx (
  input clk,
  input reset,
  input [7:0] data_in,
  input start,
  input [15:0] baud_rate,
  output reg tx
);

  reg [3:0] count;
  reg [7:0] data;
  reg start_bit;
  reg stop_bit;
  reg [15:0] baud_count;

  always @(posedge clk) begin
    if (reset) begin
      count <= 0;
      data <= 0;
      start_bit <= 1;
      stop_bit <= 1;
      baud_count <= 0;
      tx <= 1;
    end else begin
      if (start) begin
        count <= 0;
        data <= data_in;
        start_bit <= 0;
        stop_bit <= 0;
        baud_count <= 0;
        tx <= 0;
      end else begin
        if (count < 8) begin
          if (baud_count == baud_rate) begin
            data[count] <= data_in[count];
            count <= count + 1;
            baud_count <= 0;
          end else begin
            baud_count <= baud_count + 1;
          end
        end else if (count == 8) begin
          if (baud_count == baud_rate) begin
            stop_bit <= 0;
            count <= count + 1;
            baud_count <= 0;
          end else begin
            baud_count <= baud_count + 1;
          end
        end else if (count == 9) begin
          if (baud_count == baud_rate) begin
            tx <= 1;
            count <= 0;
            baud_count <= 0;
          end else begin
            baud_count <= baud_count + 1;
          end
        end
      end
    end
  end

endmodule

module uart_rx (
  input clk,
  input reset,
  input rx,
  input [15:0] baud_rate,
  output reg [7:0] data_out,
  output reg data_valid
);

  reg [3:0] count;
  reg [7:0] data;
  reg start_bit;
  reg stop_bit;
  reg [15:0] baud_count;

  always @(posedge clk) begin
    if (reset) begin
      count <= 0;
      data <= 0;
      start_bit <= 1;
      stop_bit <= 1;
      baud_count <= 0;
      data_valid <= 0;
    end else begin
      if (baud_count == baud_rate) begin
        if (start_bit && !rx) begin
          start_bit <= 0;
          count <= 0;
          baud_count <= 0;
        end else if (!start_bit && count < 8) begin
          data[count] <= rx;
          count <= count + 1;
          baud_count <= 0;
        end else if (count == 8) begin
          stop_bit <= rx;
          count <= count + 1;
          baud_count <= 0;
        end else if (count == 9) begin
          if (rx) begin
            data_out <= data;
            data_valid <= 1;
          end else begin
            data_valid <= 0;
          end
          start_bit <= 1;
          stop_bit <= 1;
          count <= 0;
          baud_count <= 0;
        end
      end else begin
        baud_count <= baud_count + 1;
      end
    end
  end

endmodule