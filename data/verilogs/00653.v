module sum_two_msb(
    input [3:0] in,
    output reg [1:0] out
);

always @(*) begin
    case(in[3:2])
        2'b00: out = 2'b00;
        2'b01: out = 2'b01;
        2'b10: out = 2'b10;
        2'b11: out = 2'b11;
    endcase
end

endmodule

module sum_two_msb_test;

reg [3:0] in;
wire [1:0] out;

sum_two_msb dut(in, out);

initial begin
    in = 4'b0000;
    #1;
    if(out !== 2'b00) begin
        $display("FAILED 1");
        $finish();
    end

    in = 4'b0011;
    #1;
    if(out !== 2'b01) begin
        $display("FAILED 2");
        $finish();
    end

    in = 4'b1100;
    #1;
    if(out !== 2'b11) begin
        $display("FAILED 3");
        $finish();
    end

    in = 4'b1111;
    #1;
    if(out !== 2'b11) begin
        $display("FAILED 4");
        $finish();
    end

    $display("PASSED");
    $finish();
end

endmodule