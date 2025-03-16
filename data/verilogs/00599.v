module fifo_generator(
    input CLK,
    input [1:0] DIA,
    input [1:0] DIB,
    input [1:0] DIC,
    output [5:0] Q,
    output out
);

reg [5:0] fifo [0:31];
reg full;
reg empty;
reg [4:0] head;
reg [4:0] tail;

always @(posedge CLK) begin
    // Write data to FIFO
    if (!full) begin
        fifo[head] = {DIA, DIB, DIC};
        head = head + 1;
        if (head == 32) begin
            head = 0;
        end
        if (head == tail) begin
            full = 1;
        end
    end

    // Read data from FIFO
    if (!empty) begin
        Q = fifo[tail];
        tail = tail + 1;
        if (tail == 32) begin
            tail = 0;
        end
        if (tail == head) begin
            empty = 1;
        end
    end
end

assign out = full;

endmodule