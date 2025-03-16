module pipelined_shift_register(
    input clk,
    input areset_n,  // async active-low reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q);

    reg [3:0] pipe_reg [0:1];  // 2-stage pipeline
    reg [1:0] pipe_sel = 0;     // pipeline select signal

    always @(posedge clk or negedge areset_n) begin
        if (~areset_n) begin
            pipe_reg[0] <= 4'b0;
            pipe_reg[1] <= 4'b0;
            pipe_sel <= 0;
            q <= 4'b0;
        end
        else begin
            if (load) begin
                pipe_reg[0] <= data;
                pipe_sel <= 1;
            end
            else if (ena) begin
                pipe_reg[1] <= {pipe_reg[0][2:0], 1'b0};
                pipe_sel <= 0;
            end
            q <= pipe_reg[pipe_sel];
        end
    end

endmodule