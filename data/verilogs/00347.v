module top_module (
    input clk,
    input reset,
    input [7:0] in,
    input valid_a,
    input ready_b,
    output ready_a,
    output reg valid_b,
    output reg [9:0] out
);

reg [7:0] edge_out;
reg [2:0] edge_count;
wire select;

edge_detector edge_detector_inst (
    .clk(clk),
    .in(in),
    .anyedge(edge_out)
);

always @(posedge clk) begin
    if(reset) begin
        edge_count <= 0;
        valid_b <= 0;
        out <= 0;
    end else begin
        if(edge_out[0] || edge_out[7]) begin
            edge_count <= 0;
            valid_b <= 0;
            out <= 0;
        end else if(edge_count == 7) begin
            edge_count <= 0;
            valid_b <= 1;
            out <= out + in;
        end else begin
            edge_count <= edge_count + 1;
            valid_b <= 0;
            out <= out;
        end
    end
end

accumulator accumulator_inst (
    .clk(clk),
    .reset(reset),
    .data_in(in),
    .select(select),
    .valid_a(valid_a),
    .ready_b(ready_b),
    .ready_a(ready_a),
    .valid_b(valid_b),
    .data_out(out)
);

assign select = valid_b;

endmodule

module edge_detector (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);

reg [7:0] prev_in;

always @(posedge clk) begin
    anyedge = (in ^ prev_in) & in;
    prev_in = in;
end

endmodule

module accumulator (
    input clk,
    input reset,
    input [7:0] data_in,
    input select,
    input valid_a,
    input ready_b,
    output ready_a,
    output reg valid_b,
    output reg [9:0] data_out
);

reg [9:0] sum;

always @(posedge clk) begin
    if(reset) begin
        sum <= 0;
    end else if(select) begin
        sum <= sum + data_in;
    end
end

assign ready_a = ~valid_a;
assign valid_b = select;
assign data_out = sum;

endmodule