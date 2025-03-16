module top_module (
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data,
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0,
    output reg [99:0] q
);

// 100-bit rotator
reg [99:0] rot_data;
always @(posedge clk) begin
    if (load) rot_data <= data;
    else if (ena == 2'b01) rot_data <= {rot_data[98:0], rot_data[99]};
    else if (ena == 2'b10) rot_data <= {rot_data[1:99], rot_data[0]};
end

// 3-bit input vector splitter
assign o2 = vec[2];
assign o1 = vec[1];
assign o0 = vec[0];
assign outv = {o2, o1, o0};

// Functional module to perform bitwise OR operation
assign q = rot_data | {o2, o1, o0};

endmodule