module fifo #(parameter FIFO_SIZE = 8, parameter DATA_WIDTH = 16) (
    input wire enable,
    input wire clear,
    output wire fifo_ready,
    input wire push_clock,
    input wire pop_clock,
    input wire [DATA_WIDTH-1:0] in_data,
    output wire [DATA_WIDTH-1:0] out_data,
    output wire popped_last,
    output wire pushed_last
);

reg [DATA_WIDTH-1:0] fifo_mem [0:FIFO_SIZE-1];
reg [DATA_WIDTH-1:0] out_data_reg;
reg [DATA_WIDTH-1:0] in_data_reg;
reg [FIFO_SIZE-1:0] fifo_head;
reg [FIFO_SIZE-1:0] fifo_tail;
reg [FIFO_SIZE-1:0] fifo_count;
reg [FIFO_SIZE-1:0] fifo_push_count;
reg [FIFO_SIZE-1:0] fifo_pop_count;
reg fifo_empty;
reg fifo_full;

always @ (posedge push_clock) begin
    if (enable) begin
        if (fifo_count != FIFO_SIZE) begin
            fifo_mem[fifo_head] <= in_data;
            fifo_head <= fifo_head + 1;
            fifo_count <= fifo_count + 1;
            fifo_push_count <= fifo_push_count + 1;
            in_data_reg <= in_data;
            if (fifo_count == FIFO_SIZE-1)
                fifo_full <= 1;
        end
    end
end

always @ (posedge pop_clock) begin
    if (enable) begin
        if (fifo_count != 0) begin
            out_data_reg <= fifo_mem[fifo_tail];
            fifo_tail <= fifo_tail + 1;
            fifo_count <= fifo_count - 1;
            fifo_pop_count <= fifo_pop_count + 1;
            if (fifo_count == 1)
                fifo_empty <= 1;
        end
    end
end

always @ (*) begin
    if (fifo_count == 0)
        fifo_empty <= 1;
    else
        fifo_empty <= 0;
    if (fifo_count == FIFO_SIZE)
        fifo_full <= 1;
    else
        fifo_full <= 0;
    if (fifo_push_count == FIFO_SIZE-1)
        pushed_last <= 1;
    else
        pushed_last <= 0;
    if (fifo_pop_count == FIFO_SIZE-1)
        popped_last <= 1;
    else
        popped_last <= 0;
    if (fifo_count == FIFO_SIZE)
        fifo_ready <= 0;
    else
        fifo_ready <= 1;
    out_data <= out_data_reg;
end

always @ (posedge clear) begin
    fifo_count <= 0;
    fifo_head <= 0;
    fifo_tail <= 0;
    fifo_push_count <= 0;
    fifo_pop_count <= 0;
    fifo_empty <= 1;
    fifo_full <= 0;
end

endmodule