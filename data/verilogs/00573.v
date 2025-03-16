module shift_register(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q);

    reg [3:0] counter;

    always @(posedge clk or posedge areset) begin
        if (areset) begin
            counter <= 4'b0;
            q <= 4'b0;
        end
        else begin
            if (load) begin
                counter <= 4'b0;
                q <= data;
            end
            else if (ena) begin
                counter <= counter + 1;
                q <= {q[2:0], q[3]};
            end
        end
    end

endmodule

module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q);

    wire [3:0] shift_reg_out;

    shift_register shift_reg(
        .clk(clk),
        .areset(areset),
        .load(load),
        .ena(ena),
        .data(data),
        .q(shift_reg_out)
    );

    always @(*) begin
        if (load) begin
            q <= data;
        end
        else if (ena) begin
            q <= shift_reg_out;
        end
    end

endmodule