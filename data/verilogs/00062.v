module tb_FF;

  reg clock;
  reg reset;
  reg [31:0] io_input_data;
  reg [31:0] io_input_init;
  reg io_input_enable;
  reg io_input_reset;
  wire [31:0] io_output_data;

  FF dut (
    .clock(clock),
    .reset(reset),
    .io_input_data(io_input_data),
    .io_input_init(io_input_init),
    .io_input_enable(io_input_enable),
    .io_input_reset(io_input_reset),
    .io_output_data(io_output_data)
  );

  initial begin
    // Initialize inputs
    clock = 0;
    reset = 1;
    io_input_data = 0;
    io_input_init = 0;
    io_input_enable = 0;
    io_input_reset = 0;

    // Wait for reset to complete
    #10;
    reset = 0;

    // Test 1: Verify reset behavior
    io_input_init = 1234;
    io_input_enable = 1;
    io_input_data = 5678;
    io_input_reset = 1;
    #10;
    if (io_output_data !== io_input_init) $error("Test 1 failed");

    // Test 2: Verify enable behavior
    io_input_init = 0;
    io_input_enable = 1;
    io_input_data = 1234;
    io_input_reset = 0;
    #10;
    if (io_output_data !== io_input_data) $error("Test 2 failed");

    // Test 3: Verify reset during enable behavior
    io_input_init = 0;
    io_input_enable = 1;
    io_input_data = 1234;
    io_input_reset = 1;
    #10;
    if (io_output_data !== io_input_init) $error("Test 3 failed");

    // Test 4: Verify reset during disable behavior
    io_input_init = 0;
    io_input_enable = 0;
    io_input_data = 1234;
    io_input_reset = 1;
    #10;
    if (io_output_data !== io_input_init) $error("Test 4 failed");

    $display("All tests passed");
    $finish;
  end

  always #5 clock = ~clock;

endmodule