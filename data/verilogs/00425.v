module counter (
    input clk,
    input reset,
    output reg [7:0] counter,
    output reg [7:0] waveforms,
    output reg interrupt_event
);

reg [3:0] state;

always @(posedge clk, posedge reset) begin
    if (reset) begin
        counter <= 8'b0;
        waveforms <= 8'b0;
        interrupt_event <= 1'b0;
        state <= 4'b0000;
    end else begin
        counter <= counter + 1;
        case (state)
            4'b0000: begin // count < 128
                waveforms <= {8{counter[6]}};
                if (counter == 127) begin
                    state <= 4'b0001;
                end
            end
            4'b0001: begin // 128 <= count <= 191
                waveforms <= counter[2:0] << 5;
                if (counter == 191) begin
                    state <= 4'b0010;
                end
            end
            4'b0010: begin // count >= 192
                waveforms <= {6{counter[6]}};
                if (counter == 255) begin
                    interrupt_event <= 1'b1;
                end
            end
        endcase
    end
end

endmodule