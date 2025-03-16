module ad_csc_1 (
  input           clk,
  input   [DW:0]  sync,
  input   [23:0]  data,
  input   [16:0]  C1,
  input   [16:0]  C2,
  input   [16:0]  C3,
  input   [24:0]  C4,
  output  [DW:0]  csc_sync_1,
  output  [7:0]   csc_data_1
);

  parameter   DELAY_DATA_WIDTH = 16;
  localparam  DW = DELAY_DATA_WIDTH - 1;

  reg [23:0]   delayed_data;
  reg          delayed_sync;

  always @(posedge clk) begin
    delayed_data <= data;
    delayed_sync <= sync;
  end

  reg [23:0]   CrYCb_data;
  reg          CrYCb_sync;

  always @(posedge clk) begin
    if (delayed_sync) begin
      CrYCb_sync <= 1'b1;
      CrYCb_data <= 0;
    end else begin
      CrYCb_sync <= 1'b0;
      CrYCb_data <= {CrYCb_data[7:0], csc_data_1};
    end
  end

  reg [31:0]   CrYCb_calc;
  reg [15:0]   CrYCb_calc_trunc;

  always @(*) begin
    CrYCb_calc = (C1 * delayed_data[23:16]) + (C2 * delayed_data[15:8]) + (C3 * delayed_data[7:0]) + C4;
    CrYCb_calc_trunc = CrYCb_calc[23:8];
  end

  assign csc_sync_1 = CrYCb_sync;
  assign csc_data_1 = CrYCb_calc_trunc;

endmodule