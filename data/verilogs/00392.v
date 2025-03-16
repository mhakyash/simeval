module top_module( 
    input wire [15:0] in,
    input select,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo,
    output [7:0] out_result
);

    // Instantiate barrel shifter module
    barrel_shifter bs(
        .in(in),
        .out(out_hi),
        .shift_amount(8),
        .reset(reset)
    );
    
    // Instantiate binary operation module
    binary_operation bo(
        .in1(out_hi),
        .in2(out_lo),
        .out(out_result),
        .operation(0),
        .reset(reset)
    );
    
    // Additive control logic
    always @(*) begin
        if (select) begin
            out_result <= bo.out;
        end else begin
            out_result <= out_hi & out_lo;
        end
    end
    
    // Output assignment
    assign out_lo = bs.out;
    
    // Synchronous reset
    reg reset;
    always @(posedge clk) begin
        if (reset_n == 0) begin
            reset <= 1;
        end else begin
            reset <= 0;
        end
    end
    
endmodule

// Barrel shifter module
module barrel_shifter(
    input [15:0] in,
    output [7:0] out,
    input [3:0] shift_amount,
    input reset
);

    reg [15:0] shifted_in;
    
    always @(in, shift_amount, reset) begin
        if (reset) begin
            shifted_in <= in >> 8;
        end else begin
            shifted_in <= in >> shift_amount;
        end
    end
    
    assign out = shifted_in[7:0];
    
endmodule

// Binary operation module
module binary_operation(
    input [7:0] in1,
    input [7:0] in2,
    output [7:0] out,
    input [1:0] operation,
    input reset
);

    reg [7:0] result;
    
    always @(in1, in2, operation, reset) begin
        if (reset) begin
            result <= 0;
        end else begin
            case (operation)
                2'b00: result <= in1 & in2; // AND operation
                2'b01: result <= in1 | in2; // OR operation
                2'b10: result <= in1 ^ in2; // XOR operation
                2'b11: result <= ~in1; // NOT operation
            endcase
        end
    end
    
    assign out = result;
    
endmodule