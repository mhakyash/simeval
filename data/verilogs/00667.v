module rotator_encoder (
    input clk,
    input load,
    input [1:0] ena,
    input [7:0] in,
    input [99:0] data,
    output reg [7:0] out
);

    reg [99:0] shifted_data;
    reg [7:0] priority_encoder_out;
    
    // Priority Encoder
    assign priority_encoder_out = (in[7]) ? 7 : 
                                 (in[6]) ? 6 : 
                                 (in[5]) ? 5 : 
                                 (in[4]) ? 4 : 
                                 (in[3]) ? 3 : 
                                 (in[2]) ? 2 : 
                                 (in[1]) ? 1 : 
                                 (in[0]) ? 0 : 0;
    
    // Barrel Shifter
    always @(posedge clk) begin
        if (load) begin
            shifted_data <= data;
        end else begin
            case (ena)
                2'b00: shifted_data <= {shifted_data[98:0], shifted_data[99]};
                2'b01: shifted_data <= {shifted_data[97:0], shifted_data[99:98]};
                2'b10: shifted_data <= {shifted_data[99], shifted_data[98:0]};
                2'b11: shifted_data <= shifted_data;
            endcase
        end
    end
    
    // Output
    always @(posedge clk) begin
        if (load) begin
            out <= in;
        end else begin
            out <= shifted_data[99-priority_encoder_out:92-priority_encoder_out] | (in << priority_encoder_out);
        end
    end
    
endmodule