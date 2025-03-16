module niosii_nios2_gen2_0_cpu_nios2_avalon_reg (
  // inputs:
  address,
  clk,
  debugaccess,
  monitor_error,
  monitor_go,
  monitor_ready,
  reset_n,
  write,
  writedata,

  // outputs:
  oci_ienable,
  oci_reg_readdata,
  oci_single_step_mode,
  ocireg_ers,
  ocireg_mrs,
  take_action_ocireg
);

  output [31:0] oci_ienable;
  output [31:0] oci_reg_readdata;
  output oci_single_step_mode;
  output ocireg_ers;
  output ocireg_mrs;
  output take_action_ocireg;

  input [8:0] address;
  input clk;
  input debugaccess;
  input monitor_error;
  input monitor_go;
  input monitor_ready;
  input reset_n;
  input write;
  input [31:0] writedata;

  reg [31:0] oci_ienable;
  wire oci_reg_00_addressed;
  wire oci_reg_01_addressed;
  wire [31:0] oci_reg_readdata;
  reg oci_single_step_mode;
  wire ocireg_ers;
  wire ocireg_mrs;
  wire ocireg_sstep;
  wire take_action_oci_intr_mask_reg;
  wire take_action_ocireg;
  wire write_strobe;

  assign oci_reg_00_addressed = address == 9'h100;
  assign oci_reg_01_addressed = address == 9'h101;
  assign write_strobe = write & debugaccess;
  assign take_action_ocireg = write_strobe & oci_reg_00_addressed;
  assign take_action_oci_intr_mask_reg = write_strobe & oci_reg_01_addressed;
  assign ocireg_ers = writedata[1];
  assign ocireg_mrs = writedata[0];
  assign ocireg_sstep = writedata[3];
  assign oci_reg_readdata = oci_reg_00_addressed ? {28'b0, oci_single_step_mode, monitor_go, monitor_ready, monitor_error} : oci_reg_01_addressed ? oci_ienable : 32'b0;

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      oci_single_step_mode <= 1'b0;
    end else if (take_action_ocireg) begin
      oci_single_step_mode <= ocireg_sstep;
    end
  end

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      oci_ienable <= 32'b00000000000000000000000000011111;
    end else if (take_action_oci_intr_mask_reg) begin
      oci_ienable <= writedata | ~(32'b00000000000000000000000000011111);
    end
  end

endmodule