module cpci_clock_checker (
    output reg error,
    input [31:0] clk_chk_p_max,
    input [31:0] clk_chk_n_exp,
    input reset,
    input [3:0] shift_amount,
    input p_clk,
    input n_clk
);

reg [31:0] p_count;
reg [31:0] n_count;
reg [31:0] p_count_latched;
reg [31:0] n_count_latched;
reg [31:0] p_count_diff;
reg [31:0] n_count_diff;
reg [1:0] state;

parameter IDLE = 2'd0;
parameter COUNTING = 2'd1;
parameter DONE = 2'd2;
parameter ERROR = 2'd3;

always @(posedge p_clk) begin
    if (reset) begin
        p_count <= 0;
        p_count_latched <= 0;
        p_count_diff <= 0;
        state <= IDLE;
    end else begin
        p_count <= p_count + 1;
        if (state == COUNTING) begin
            p_count_diff <= p_count_latched - p_count;
            if (p_count_diff < 0) p_count_diff <= -p_count_diff;
            if (p_count_diff > clk_chk_p_max) begin
                error <= 1;
                state <= ERROR;
            end else begin
                state <= DONE;
            end
        end
    end
end

always @(negedge n_clk) begin
    if (reset) begin
        n_count <= 0;
        n_count_latched <= 0;
        n_count_diff <= 0;
    end else begin
        n_count <= n_count + 1;
        if (state == COUNTING) begin
            n_count_diff <= n_count_latched - n_count;
            if (n_count_diff < 0) n_count_diff <= -n_count_diff;
            if (n_count_diff > (clk_chk_n_exp >> shift_amount)) begin
                error <= 1;
                state <= ERROR;
            end else begin
                state <= DONE;
            end
        end
    end
end

always @(*) begin
    case (state)
        IDLE: begin
            error <= 0;
            p_count_latched <= p_count;
            n_count_latched <= n_count;
            state <= COUNTING;
        end
        COUNTING: begin
            p_count_latched <= p_count;
            n_count_latched <= n_count;
        end
        DONE: begin
            error <= 0;
            p_count_latched <= p_count;
            n_count_latched <= n_count;
            state <= IDLE;
        end
        ERROR: begin
            p_count_latched <= p_count;
            n_count_latched <= n_count;
        end
    endcase
end

endmodule