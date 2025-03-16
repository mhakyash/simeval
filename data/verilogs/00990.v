module station_management (
    input  wire        reset,
    input  wire        clock,
    input  wire        mdc,
    input  wire        mdi,
    output wire        mdo,
    input  wire        mode,
    input  wire        begin_transaction,
    input  wire [4:0]  phy_address,
    input  wire [4:0]  reg_address,
    input  wire [15:0] data_in,
    output wire [15:0] data_out
);

parameter IDLE = 2'b00;
parameter READ = 2'b01;
parameter WRITE = 2'b10;

reg [1:0] state;
reg [15:0] reg_data;

assign mdo = (state == READ) ? reg_data[15] : 1'bZ;

always @(posedge clock) begin
    if (reset) begin
        state <= IDLE;
        reg_data <= 0;
    end else begin
        case(state)
            IDLE: begin
                if (begin_transaction) begin
                    state <= (mode == 0) ? READ : WRITE;
                end
            end
            READ: begin
                if (mdi == 0 && mdc == 1) begin
                    reg_data <= {reg_data[14:0], mdi};
                end else if (mdi == 1 && mdc == 1) begin
                    reg_data <= {reg_data[14:0], mdi};
                    state <= IDLE;
                end
            end
            WRITE: begin
                if (mdi == 0 && mdc == 1) begin
                    reg_data <= {reg_data[14:0], data_in[15]};
                end else if (mdi == 1 && mdc == 1) begin
                    reg_data <= {reg_data[14:0], data_in[15]};
                    state <= IDLE;
                end
            end
        endcase
    end
end

endmodule