module priority_encoder_3bit (
    input A2,
    input A1,
    input A0,
    output EN,
    output reg [2:0] Y
);

reg [2:0] Y_reg;
reg [1:0] stage;

always @(*) begin
    case(stage)
        0: begin
            Y_reg = {A2, A1, A0};
            EN = 0;
            Y = 3'b0;
        end
        1: begin
            if(Y_reg[2] == 1 && Y_reg[1:0] == 2'b00) begin
                EN = 1;
                Y = 3'b100;
            end else begin
                EN = 0;
                Y = 3'b0;
            end
        end
        2: begin
            if(Y_reg[2:1] == 2'b11 && Y_reg[0] == 0) begin
                EN = 1;
                Y = 3'b110;
            end else begin
                EN = 0;
                Y = 3'b0;
            end
        end
        3: begin
            if(Y_reg == 3'b111) begin
                EN = 1;
                Y = 3'b111;
            end else begin
                EN = 0;
                Y = 3'b0;
            end
        end
    endcase
end

always @(posedge clk) begin
    if(reset) begin
        stage <= 0;
    end else begin
        if(stage == 3) begin
            stage <= 0;
        end else begin
            stage <= stage + 1;
        end
    end
end

endmodule