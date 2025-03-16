module testbench();

  // Instantiate the math_ops module
  math_ops math_ops_inst();

  // Declare variables to hold the expected and actual outputs
  integer expected_output;
  integer actual_output;

  // Test add2 function
  initial begin
    $display("Testing add2 function...");
    expected_output = 7;
    actual_output = math_ops_inst.add2(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test sub2 function
  initial begin
    $display("Testing sub2 function...");
    expected_output = 3;
    actual_output = math_ops_inst.sub2(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test mul2 function
  initial begin
    $display("Testing mul2 function...");
    expected_output = 10;
    actual_output = math_ops_inst.mul2(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test div2 function
  initial begin
    $display("Testing div2 function...");
    expected_output = 2;
    actual_output = math_ops_inst.div2(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test mod2 function
  initial begin
    $display("Testing mod2 function...");
    expected_output = 1;
    actual_output = math_ops_inst.mod2(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test add3 function
  initial begin
    $display("Testing add3 function...");
    expected_output = 8;
    actual_output = math_ops_inst.add3(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test sub3 function
  initial begin
    $display("Testing sub3 function...");
    expected_output = 2;
    actual_output = math_ops_inst.sub3(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test mul3 function
  initial begin
    $display("Testing mul3 function...");
    expected_output = 15;
    actual_output = math_ops_inst.mul3(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test div3 function
  initial begin
    $display("Testing div3 function...");
    expected_output = 1;
    actual_output = math_ops_inst.div3(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

  // Test mod3 function
  initial begin
    $display("Testing mod3 function...");
    expected_output = 2;
    actual_output = math_ops_inst.mod3(5);
    if (actual_output != expected_output) begin
      $display("FAILED: Expected %d but got %d", expected_output, actual_output);
    end else begin
      $display("PASSED");
    end
  end

endmodule