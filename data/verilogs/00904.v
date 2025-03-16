module arbiter (
    input clock, // clock
    input reset, // Active high, syn reset
    input req_0, // Request 0
    input req_1, // Request 1
    output reg gnt_0, // Grant 0
    output reg gnt_1 // Grant 1
);

parameter IDLE = 2'b00, GNT0 = 2'b01, GNT1 = 2'b10;

reg [1:0] state, next_state;

always @ (posedge clock or posedge reset) begin
    if (reset) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

always @ (*) begin
    next_state = IDLE;

    if (req_0 && req_1) begin
        if (state == IDLE) begin
            if (req_0 > req_1) begin
                next_state = GNT0;
            end else begin
                next_state = GNT1;
            end
        end else if (state == GNT0) begin
            if (req_1) begin
                next_state = GNT1;
            end else begin
                next_state = IDLE;
            end
        end else if (state == GNT1) begin
            if (req_0) begin
                next_state = GNT0;
            end else begin
                next_state = IDLE;
            end
        end
    end else if (req_0) begin
        next_state = GNT0;
    end else if (req_1) begin
        next_state = GNT1;
    end
end

always @ (state) begin
    case (state)
        IDLE: begin
            gnt_0 <= 0;
            gnt_1 <= 0;
        end
        GNT0: begin
            gnt_0 <= 1;
            gnt_1 <= 0;
        end
        GNT1: begin
            gnt_0 <= 0;
            gnt_1 <= 1;
        end
    endcase
end

endmodule