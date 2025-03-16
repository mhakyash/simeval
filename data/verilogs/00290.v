module clock_gate (
    input clk,
    input en,
    input te,
    output reg enclk
);

    TLATNTSCAX2TS latch (
        .E(en),
        .SE(te),
        .CK(clk),
        .ECK(enclk)
    );

    initial begin
        $sdf_annotate("clock_gate.sdf");
    end

    always @(posedge clk) begin
        if (en == 1'b1) begin
            enclk <= 1'b1;
        end else begin
            enclk <= 1'b0;
        end
    end

endmodule