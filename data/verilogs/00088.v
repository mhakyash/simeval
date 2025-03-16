module vector_test;
  reg pass;
  reg [3:0] vec;
  integer idx;

  initial begin
    pass = 1'b1;
    idx = 'bx;
    vec = 4'bxxxx;

    // Test 1: Set the vector's 1st bit to 1 using a constant out-of-range index
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[1'bx] = 1'b1;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[1'bx], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 2: Set the vector's "idx" bit to 1 using an unknown index
    vec[idx] = 1'b1;
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[idx], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 3: Set the vector's 1st and 0th bits to 1 using a range with a constant out-of-range index
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[1'bx:0] = 1'b1;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[1'bx:0], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 4: Set the vector's 0th and 1st bits to 1 using a range with a constant out-of-range index
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[0:1'bx] = 1'b1;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[0:1'bx], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 5: Set the vector's 1st bit to 1 using a range with a constant out-of-range index
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[1'bx:1'bx] = 1'b1;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[1'bx:1'bx], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 6: Set the vector's 1st bit to 1 using a range with a positive offset
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[1'bx+:1] = 1'b1;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[1'bx+:1], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 7: Set the vector's 1st and 2nd bits to "01" using a range with a positive offset
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[1'bx+:2] = 2'b01;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[1'bx+:2], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 8: Set the vector's 1st bit to 1 using a range with a negative offset
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[1'bx-:1] = 1'b1;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[1'bx-:1], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 9: Set the vector's 1st and 2nd bits to "01" using a range with a negative offset
    `ifdef SUPPORT_CONST_OUT_OF_RANGE_IN_IVTEST
    vec[1'bx-:2] = 2'b01;
    `endif
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[1'bx-:2], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 10: Set the vector's "idx" bit and the next bit to 1 using a range with a positive offset
    vec[idx+:1] = 1'b1;
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[idx+:1], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 11: Set the vector's "idx" bit and the next two bits to "01" using a range with a positive offset
    vec[idx+:2] = 2'b01;
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[idx+:2], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 12: Set the vector's "idx" bit and the previous bit to 1 using a range with a negative offset
    vec[idx-:1] = 1'b1;
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[idx-:1], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    vec = 4'bxxxx;

    // Test 13: Set the vector's "idx" bit and the previous two bits to "01" using a range with a negative offset
    vec[idx-:2] = 2'b01;
    if (vec !== 4'bxxxx) begin
      $display("Failed vec[idx-:2], expected 4'bxxxx, got %b", vec);
      pass = 1'b0;
    end

    if (pass) $display("PASSED");
  end
endmodule