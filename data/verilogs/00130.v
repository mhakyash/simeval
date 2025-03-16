module fifo(
    input sys_clk,
    input rst,
    input wr_en,
    input [63:0] wr_data,
    input rd_en,
    output reg [15:0] rd_data,
    output reg can_burst,
    output reg do_valid
);

reg [63:0] storage[0:7];
reg [2:0] wr_ptr;
reg [2:0] rd_ptr;
reg [5:0] level;

always @(posedge sys_clk) begin
    if (rst) begin
        wr_ptr <= 3'd0;
        rd_ptr <= 3'd0;
        level <= 6'd0;
        can_burst <= 1'b1;
        do_valid <= 1'b0;
    end else begin
        if (wr_en && can_burst) begin
            storage[wr_ptr] <= wr_data;
            wr_ptr <= wr_ptr + 1;
            level <= level + 4'd1;
            can_burst <= (level + 4'd4) <= 6'd32;
        end
        if (rd_en && do_valid) begin
            rd_data <= storage[rd_ptr][15:0];
            rd_ptr <= rd_ptr + 1;
            level <= level - 4'd1;
            do_valid <= level > 6'd0;
        end
    end
end

assign can_burst = (level + 4'd4) <= 6'd32;
assign do_valid = level > 6'd0;

endmodule