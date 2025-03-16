module data_filter (
    input [31:0] input_signal,
    output [31:0] filtered_signal
);

    reg [31:0] filtered_value;

    always @(input_signal)
    begin
        if (input_signal > 10)
        begin
            filtered_value <= input_signal;
        end
    end

    assign filtered_signal = filtered_value;

endmodule