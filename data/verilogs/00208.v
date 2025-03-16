module fifo(
    output [7:0] dout,
    output indicator,
    input [7:0] din,
    input din_valid,
    input clk,
    input reset_n
);

parameter SIZE = 20,
          INDEX_WIDTH = 8,
          MAX_INDEX = SIZE * 8 - 1;

localparam WAITING = 0,
           RECEIVING = 1,
           LEFT_PADDING = 2,
           TRANSFERING = 3,
           RIGHT_PADDING = 4;

reg [2:0] state, next_state;
reg [MAX_INDEX:0] queue, next_queue;
reg [INDEX_WIDTH - 1:0] head, next_head;
reg [6:0] count, next_count;

always @(*) begin
    case (state)
        WAITING: begin
            if (din_valid) begin
                next_state = RECEIVING;
                next_queue = {queue[MAX_INDEX - 8:0], din};
                next_head = 8;
            end else begin
                next_state = WAITING;
                next_queue = queue;
                next_head = 0;
            end
            next_count = 0;
        end

        RECEIVING: begin
            if (din_valid) begin
                next_state = RECEIVING;
                next_queue = {queue[MAX_INDEX - 8:0], din};
                next_head = head + 8;
            end else begin
                next_state = LEFT_PADDING;
                next_queue = queue;
                next_head = head;
            end
            next_count = 0;
        end

        LEFT_PADDING: begin
            if (count < 79) begin
                next_state = LEFT_PADDING;
                next_count = count + 1;
            end else begin
                next_state = TRANSFERING;
                next_count = 0;
            end
            next_head = head;
            next_queue = queue;
        end

        TRANSFERING: begin
            if (count < 7) begin
                next_state = TRANSFERING;
                next_head = head;
                next_count = count + 1;
            end else begin
                if (head == 8)  // Last byte.
                    next_state = RIGHT_PADDING;
                else
                    next_state = TRANSFERING;
                next_head = head - 8;
                next_count = 0;
            end
            next_queue = queue;
        end

        RIGHT_PADDING: begin
            if (count < 15) begin
                next_state = RIGHT_PADDING;
                next_count = count + 1;
            end else begin
                next_state = WAITING;
                next_count = 0;
            end
            next_head = 0;
            next_queue = 0;
        end

        default: begin
            next_state = WAITING;
            next_queue = 0;
            next_head = 0;
            next_count = 0;
        end
    endcase
end

// Update states.
always @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
        state <= WAITING;
        queue <= 0;
        head <= 0;
        count <= 0;
    end else begin
        state <= next_state;
        queue <= next_queue;
        head <= next_head;
        count <= next_count;
    end
end

assign dout = (head == 0) ? 0 : queue[(head - 1)-:8];
assign indicator = (state == RECEIVING && ~din_valid) || (state == TRANSFERING && next_state == RIGHT_PADDING);

endmodule