module divider (
    Y,
    Z,
    X
);

    output Y;
    output Z;
    input X;

    reg [31:0] counter_1;
    reg [31:0] counter_2;

    always @(posedge X) begin
        counter_1 <= counter_1 + 1;
        counter_2 <= counter_2 + 1;

        if (counter_1 == 10) begin
            Y <= 1;
            counter_1 <= 0;
        end else begin
            Y <= 0;
        end

        if (counter_2 == 20) begin
            Z <= 1;
            counter_2 <= 0;
        end else begin
            Z <= 0;
        end
    end

endmodule