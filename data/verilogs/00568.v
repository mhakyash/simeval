module async_sr_ff (
    input clk,
    input reset,
    input set,
    input d,
    output reg q,
    output reg q_n
);

always @(posedge clk) begin
    if(!reset) begin
        q <= 0;
        q_n <= 1;
    end else if(!set) begin
        q <= 1;
        q_n <= 0;
    end else begin
        q <= d;
        q_n <= ~d;
    end
end

endmodule