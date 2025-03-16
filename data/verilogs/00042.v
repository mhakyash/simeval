module and_module(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire out0,
    output wire out1,
    output wire out2,
    output wire out3
);

    assign out0 = a & b;
    assign out1 = b & c;
    assign out2 = (a == 1) ? d : 1'b0;
    assign out3 = b & d;

endmodule

module testbench();

    wire a = 1'b0;
    wire b = 1'b1;
    wire c = 1'b1;
    wire d = 1'bx;

    wire out0, out1, out2, out3;

    and_module dut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out0(out0),
        .out1(out1),
        .out2(out2),
        .out3(out3)
    );

    initial begin
        #0;

        if (out0 !== 1'b0) begin
            $display("FAILED -- out0 = %b", out0);
            $finish;
        end

        if (out1 !== 1'b1) begin
            $display("FAILED -- out1 = %b", out1);
            $finish;
        end

        if (out2 !== 1'b0) begin
            $display("FAILED -- out2 = %b", out2);
            $finish;
        end

        if (out3 !== 1'bx) begin
            $display("FAILED -- outx = %b", out3);
            $finish;
        end

        $display("PASSED");
        $finish;
    end

endmodule