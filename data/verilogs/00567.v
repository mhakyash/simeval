module state_machine (
    input clk,
    input rst_,
    output reg [2:0] state_r
);

    parameter [2:0] IDLE = 3'b000;
    parameter [2:0] SEND = 3'b001;
    parameter [2:0] WAIT1 = 3'b010;
    parameter [2:0] UPDATE1 = 3'b011;
    parameter [2:0] WAIT2 = 3'b100;
    parameter [2:0] UPDATE2 = 3'b101;

    reg [2:0] state_e1;

    always @(*) begin
        case(state_r)
            IDLE: state_e1 = SEND;
            SEND: state_e1 = WAIT1;
            WAIT1: state_e1 = UPDATE1;
            UPDATE1: state_e1 = WAIT2;
            WAIT2: state_e1 = UPDATE2;
            UPDATE2: state_e1 = IDLE;
            default: state_e1 = IDLE;
        endcase
    end

    always @(posedge clk or negedge rst_) begin
        if(!rst_) begin
            state_r <= IDLE;
        end else begin
            state_r <= state_e1;
        end
    end

endmodule