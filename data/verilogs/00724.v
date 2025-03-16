module testbench;

  reg clk;
  reg api_wr;
  reg [7:0] api_addr;
  reg [31:0] api_wr_data;
  wire [31:0] api_rd_data_0;
  wire [31:0] api_rd_data_1;
  reg [6:0] internal_addr;
  wire [63:0] internal_rd_data_0;
  wire [63:0] internal_rd_data_1;

  blockmem_rw32_r64 mem(
    .clk(clk),
    .api_wr(api_wr),
    .api_addr(api_addr),
    .api_wr_data(api_wr_data),
    .api_rd_data(api_rd_data_0),
    .internal_addr(internal_addr),
    .internal_rd_data(internal_rd_data_0)
  );

  initial begin
    clk = 0;
    api_wr = 0;
    api_addr = 0;
    api_wr_data = 0;
    internal_addr = 0;
    #10;

    // Write 0x12345678 to word 0 in mem0
    api_wr = 1;
    api_addr = 8'b00000000;
    api_wr_data = 32'h12345678;
    #10;
    api_wr = 0;
    api_wr_data = 0;
    #10;

    // Write 0x87654321 to word 0 in mem1
    api_wr = 1;
    api_addr = 8'b00000001;
    api_wr_data = 32'h87654321;
    #10;
    api_wr = 0;
    api_wr_data = 0;
    #10;

    // Read word 0 in mem0
    api_wr = 0;
    api_addr = 8'b00000000;
    #10;
    $display("api_rd_data_0 = %h", api_rd_data_0);
    #10;

    // Read word 0 in mem1
    api_addr = 8'b00000001;
    #10;
    $display("api_rd_data_1 = %h", api_rd_data_1);
    #10;

    // Read word 0 in mem1 using internal port
    internal_addr = 0;
    #10;
    $display("internal_rd_data_0 = %h", internal_rd_data_0);
    #10;

    // Read word 1 in mem1 using internal port
    internal_addr = 1;
    #10;
    $display("internal_rd_data_1 = %h", internal_rd_data_1);
    #10;

    $finish;
  end

  always #5 clk = ~clk;

endmodule