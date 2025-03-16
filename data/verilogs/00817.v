module adder (
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum,
    output overflow
);

wire [8:0] sum_wire = a + b;
assign overflow = sum_wire[8];
assign sum = sum_wire[7:0];

endmodule

module tb_adder;

reg [7:0] a;
reg [7:0] b;
wire [7:0] sum;
wire overflow;

adder adder_inst (
    .a(a),
    .b(b),
    .sum(sum),
    .overflow(overflow)
);

initial begin
    // Test case 1
    a = 8'b00000001;
    b = 8'b00000001;
    #10;
    if (sum !== 8'b00000010 || overflow !== 1'b0) begin
        $display("Test case 1 failed: sum = %b, overflow = %b", sum, overflow);
        $finish;
    end
    
    // Test case 2
    a = 8'b11111111;
    b = 8'b00000001;
    #10;
    if (sum !== 8'b00000000 || overflow !== 1'b1) begin
        $display("Test case 2 failed: sum = %b, overflow = %b", sum, overflow);
        $finish;
    end
    
    // Test case 3
    a = 8'b01111111;
    b = 8'b00000001;
    #10;
    if (sum !== 8'b10000000 || overflow !== 1'b0) begin
        $display("Test case 3 failed: sum = %b, overflow = %b", sum, overflow);
        $finish;
    end
    
    // Test case 4
    a = 8'b10000000;
    b = 8'b10000000;
    #10;
    if (sum !== 8'b00000000 || overflow !== 1'b1) begin
        $display("Test case 4 failed: sum = %b, overflow = %b", sum, overflow);
        $finish;
    end
    
    $display("All test cases passed.");
    $finish;
end

endmodule