module top_module (
    input [3:0] load_value,
    input [3:0] shift_value,
    input up_down,
    input shift_dir,
    input clk,
    input reset,
    output [3:0] RESULT
);

    reg [3:0] counter;
    reg [3:0] shifted_value;
    reg [1:0] select;
    
    always @ (posedge clk or negedge reset) begin
        if (reset == 0) begin
            counter <= 4'b0;
            shifted_value <= 4'b0;
            select <= 2'b0;
        end else begin
            if (up_down == 1) begin
                counter <= counter + 1;
            end else begin
                counter <= counter - 1;
            end
            
            if (select == 2'b01) begin
                shifted_value <= {shift_value[2:0], 1'b0};
            end else if (select == 2'b10) begin
                shifted_value <= {1'b0, shift_value[3:1]};
            end else begin
                shifted_value <= shift_value;
            end
            
            if (shift_dir == 1) begin
                select <= 2'b10;
            end else begin
                select <= 2'b01;
            end
        end
    end
    
    always @ (*) begin
        if (select == 2'b00) begin
            RESULT = counter;
        end else begin
            RESULT = shifted_value;
        end
    end
    
endmodule