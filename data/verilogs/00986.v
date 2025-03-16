module state_machine(
    input clk,
    input in1,
    input in2,
    output reg out1
);

// Define the states
parameter A = 2'b00;
parameter B = 2'b01;
parameter C = 2'b10;

// Define the state register and initialize to state A
reg [1:0] state = A;

// Define the next state logic
always @ (posedge clk) begin
    case (state)
        A: begin
            if (in1) begin
                state <= B;
                out1 <= 0;
            end else begin
                state <= A;
                out1 <= 1;
            end
        end
        B: begin
            if (in2) begin
                state <= C;
                out1 <= 1;
            end else begin
                state <= A;
                out1 <= 0;
            end
        end
        C: begin
            state <= C;
            out1 <= 1;
        end
    endcase
end

endmodule