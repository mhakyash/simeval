module uart_tx (
  input wire clk,
  input wire reset_n,
  input wire clk_en,
  input wire begintransfer,
  input wire do_force_break,
  input wire [15:0] baud_divisor,
  input wire tx_wr_strobe,
  input wire status_wr_strobe,
  input wire [7:0] tx_data,
  output reg tx_overrun,
  output reg tx_ready,
  output reg tx_shift_empty,
  output reg txd
);

  reg [10:0] shift_reg;
  reg [15:0] baud_rate_counter;
  reg do_load_shifter;
  reg pre_txd;
  wire shift_done;
  wire [10:0] tx_load_val;
  wire baud_rate_counter_is_zero;
  wire do_shift;
  reg tx_wr_strobe_onset;
  reg [10:0] unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out;
  wire [10:0] unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in;

  always @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
      tx_overrun <= 0;
      tx_ready <= 1;
      tx_shift_empty <= 1;
      baud_rate_counter <= 0;
      do_load_shifter <= 0;
      pre_txd <= 1;
      unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out <= 0;
    end else if (clk_en) begin
      tx_wr_strobe_onset <= tx_wr_strobe && begintransfer;
      tx_ready <= (~tx_wr_strobe_onset && ~do_load_shifter) ? shift_done : -1;
      if (status_wr_strobe) begin
        tx_overrun <= 0;
      end else if (~tx_ready && tx_wr_strobe_onset) begin
        tx_overrun <= -1;
      end
      if (baud_rate_counter_is_zero || do_load_shifter) begin
        baud_rate_counter <= baud_divisor;
      end else begin
        baud_rate_counter <= baud_rate_counter - 1;
      end
      do_load_shifter <= (~tx_ready) && shift_done;
      baud_rate_counter_is_zero <= baud_rate_counter == 0;
      baud_clk_en <= baud_rate_counter_is_zero;
      do_shift <= baud_clk_en && (~shift_done) && (~do_load_shifter);
      if (~shift_done) begin
        pre_txd <= tx_shift_reg_out;
      end
      if (do_force_break) begin
        txd <= 0;
      end else if (~shift_done) begin
        txd <= pre_txd;
      end
      unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out <= unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in;
    end
  end

  assign tx_load_val = {{1 {1'b1}}, ~(^tx_data), tx_data, 1'b0};
  assign shift_done = ~(|shift_reg);
  assign unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in = (do_load_shifter) ? tx_load_val :
    (do_shift) ? {1'b0, unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[10:1]} :
    unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out;
  assign tx_shift_register_contents = unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out;
  assign tx_shift_reg_out = unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[0];

endmodule