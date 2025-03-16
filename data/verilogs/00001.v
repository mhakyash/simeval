module edge_detector (
    input clk,
    input [7:0] in,
    output [7:0] out
);

reg [7:0] prev_in;
reg [7:0] curr_in;
reg [7:0] next_in;
reg [2:0] state;

always @(posedge clk) begin
    prev_in <= curr_in;
    curr_in <= next_in;
    next_in <= in;
    
    case (state)
        3'b000: begin
            if (curr_in != prev_in) begin
                state <= 3'b001;
            end
        end
        3'b001: begin
            state <= 3'b010;
        end
        3'b010: begin
            state <= 3'b011;
        end
        3'b011: begin
            out <= next_in;
            state <= 3'b000;
        end
    endcase
end

endmodule

module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);

wire [7:0] out;

edge_detector detector(
    .clk(clk),
    .in(in),
    .out(out)
);

assign anyedge = out;

endmodule