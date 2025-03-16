module top_module (
    input clk,
    input reset,
    input [255:0] in,
    input [7:0] sel,
    output out,
    output [7:0] anyedge
);

    wire [255:0] selected_input;
    wire [7:0] in_reg, in_next;
    wire [7:0] anyedge_reg, anyedge_next;
    wire [7:0] xor_out;

    mux_256to1 mux_inst (
        .in(in),
        .sel(sel),
        .out(selected_input)
    );

    change_detection change_inst (
        .clk(clk),
        .reset(reset),
        .in(selected_input),
        .out(xor_out)
    );

    any_edge_detection anyedge_inst (
        .clk(clk),
        .reset(reset),
        .in(xor_out),
        .out(anyedge_reg)
    );

    always @(posedge clk) begin
        if (reset) begin
            in_reg <= 8'b0;
            anyedge_reg <= 8'b0;
        end else begin
            in_reg <= in_next;
            anyedge_reg <= anyedge_next;
        end
    end

    always @(*) begin
        in_next = {in_reg[6:0], xor_out};
        anyedge_next = anyedge_reg | anyedge_inst.out;
        out = anyedge_next;
    end

endmodule