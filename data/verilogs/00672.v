module shift_register (
    input [3:0] data_in,
    input shift_en,
    input load_en,
    output [3:0] data_out,
    output empty
);

reg [3:0] register;

assign data_out = register;

always @ (posedge shift_en or posedge load_en) begin
    if (load_en) begin
        register <= data_in;
    end else if (shift_en) begin
        register <= {register[2:0], 1'b0};
    end
end

assign empty = ~|register;

endmodule