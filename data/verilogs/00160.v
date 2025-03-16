module decade_counter_pipeline (
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q
);

reg [3:0] q_pipeline1;
reg [3:0] q_pipeline2;
reg [3:0] q_pipeline3;

always @(posedge clk) begin
    if (reset) begin
        q_pipeline1 <= 4'b0000;
        q_pipeline2 <= 4'b0000;
        q_pipeline3 <= 4'b0000;
        q <= 4'b0000;
    end
    else if (slowena) begin
        q_pipeline1 <= q_pipeline1;
        q_pipeline2 <= q_pipeline2;
        q_pipeline3 <= q_pipeline3;
        q <= q_pipeline3;
    end
    else begin
        q_pipeline1 <= q;
        q_pipeline2 <= q_pipeline1;
        q_pipeline3 <= q_pipeline2;
        q <= q_pipeline3 + 1;
    end
end

endmodule