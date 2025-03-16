module Computer_System_Video_In_Subsystem_avalon_st_adapter_data_format_adapter_0 (
    input clk,
    input reset_n,
    input [DATA_WIDTH-1:0] in_data,
    input in_valid,
    output reg out_valid,
    input out_ready,
    output reg [DATA_WIDTH-1:0] out_data,
    output reg out_startofpacket,
    output reg out_endofpacket,
    output reg out_empty
);

    parameter DATA_WIDTH = 8; // change to match data width

    // state machine states
    parameter STATE_IDLE = 2'b00;
    parameter STATE_WAIT_FOR_VALID = 2'b01;
    parameter STATE_OUTPUT = 2'b10;

    reg [1:0] state;
    reg [DATA_WIDTH-1:0] output_data;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state <= STATE_IDLE;
            out_valid <= 1'b0;
            out_startofpacket <= 1'b0;
            out_endofpacket <= 1'b0;
            out_empty <= 1'b1;
        end else begin
            case (state)
                STATE_IDLE: begin
                    if (in_valid) begin
                        state <= STATE_WAIT_FOR_VALID;
                    end else begin
                        out_valid <= 1'b0;
                        out_startofpacket <= 1'b0;
                        out_endofpacket <= 1'b0;
                        out_empty <= 1'b1;
                    end
                end
                STATE_WAIT_FOR_VALID: begin
                    if (out_ready) begin
                        output_data <= in_data; // convert data here
                        out_valid <= 1'b1;
                        out_startofpacket <= in_startofpacket;
                        out_endofpacket <= in_endofpacket;
                        out_empty <= 1'b0;
                        state <= STATE_OUTPUT;
                    end else begin
                        out_valid <= 1'b0;
                        out_startofpacket <= 1'b0;
                        out_endofpacket <= 1'b0;
                        out_empty <= 1'b1;
                    end
                end
                STATE_OUTPUT: begin
                    if (out_ready) begin
                        out_valid <= 1'b0;
                        out_startofpacket <= 1'b0;
                        out_endofpacket <= 1'b0;
                        out_empty <= 1'b1;
                        state <= STATE_IDLE;
                    end else begin
                        out_valid <= 1'b1;
                        out_startofpacket <= 1'b0;
                        out_endofpacket <= 1'b0;
                        out_empty <= 1'b0;
                    end
                end
            endcase
        end
    end

endmodule