module bt_transmitter (
  input [n-1:0] data_in,
  input clk,
  input reset,
  output reg tx_en,
  output reg [m-1:0] tx_out
);
  parameter n = 8;
  parameter m = 8;
  parameter baud_rate = 9600;
  integer counter;
  reg [n-1:0] data_reg;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      counter <= 0;
      tx_en <= 0;
      tx_out <= 0;
    end else begin
      if (counter == 0) begin
        counter <= (50_000_000 / baud_rate) - 1;
        data_reg <= data_in;
        tx_en <= 1;
        tx_out <= data_reg;
        data_reg <= data_reg >> 1;
      end else begin
        counter <= counter - 1;
      end
    end
  end
endmodule

module bt_receiver (
  input [n-1:0] rx_in,
  input clk,
  input reset,
  output reg rx_en,
  output reg [m-1:0] data_out
);
  parameter n = 8;
  parameter m = 8;
  parameter baud_rate = 9600;
  integer counter;
  reg [n-1:0] data_reg;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      counter <= 0;
      rx_en <= 0;
      data_out <= 0;
    end else begin
      if (counter == 0) begin
        counter <= (50_000_000 / baud_rate) - 1;
        data_reg <= rx_in;
        rx_en <= 1;
        data_out <= data_reg;
        data_reg <= data_reg >> 1;
      end else begin
        counter <= counter - 1;
      end
    end
  end
endmodule