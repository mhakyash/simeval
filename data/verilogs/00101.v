module sync_load_counter (
    input clk,
    input reset,
    input load,
    input [3:0] L,
    input areset,
    output reg [3:0] count
);

reg [3:0] count_reg1;
reg [3:0] count_reg2;

always @(posedge clk or negedge areset) begin
    if (areset == 0) begin
        count_reg1 <= 0;
        count_reg2 <= 0;
    end
    else begin
        count_reg1 <= count_reg2;
        count_reg2 <= count;
    end
end

always @(posedge clk) begin
    if (reset == 1) begin
        count <= 0;
    end
    else if (load == 1) begin
        count <= L;
    end
    else begin
        count <= count_reg1 + 1;
    end
end

endmodule