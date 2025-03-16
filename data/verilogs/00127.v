module fifo(
    input rst,
    input push,
    input pop,
    input [7:0] data_in,
    input clk,
    output [7:0] data_out,
    output empty,
    output full
);

reg [7:0] buffer [0:7];
reg [2:0] head = 0;
reg [2:0] tail = 0;
reg [2:0] count = 0;

always @(posedge clk) begin
    if (rst) begin
        head <= 0;
        tail <= 0;
        count <= 0;
        empty <= 1;
        full <= 0;
    end else begin
        if (push && !full) begin
            buffer[head] <= data_in;
            head <= (head + 1) % 8;
            count <= count + 1;
            if (count == 8) full <= 1;
            empty <= 0;
        end
        if (pop && !empty) begin
            data_out <= buffer[tail];
            tail <= (tail + 1) % 8;
            count <= count - 1;
            if (count == 0) empty <= 1;
            full <= 0;
        end
    end
end

endmodule