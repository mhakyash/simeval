module transpose_4x4 (
    input wire axis_clk,
    input wire axis_aresetn,

    // AXI Slave Bus Interface
    output wire s_axis_tready,
    input wire [255:0] s_axis_tdata,
    input wire s_axis_tlast,
    input wire s_axis_tvalid,

    // AXI Master Bus Interface
    output wire m_axis_tvalid,
    output wire [255:0] m_axis_tdata,
    output wire m_axis_tlast,
    input wire m_axis_tready
);

reg [15:0] matrix [0:3];

integer i, j;

always @(posedge axis_clk) begin
    if (axis_aresetn == 0) begin
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                matrix[i][j] <= 16'b0;
            end
        end
    end else if (s_axis_tvalid && s_axis_tready) begin
        matrix[0][0] <= s_axis_tdata[15:0];
        matrix[0][1] <= s_axis_tdata[31:16];
        matrix[0][2] <= s_axis_tdata[47:32];
        matrix[0][3] <= s_axis_tdata[63:48];
        matrix[1][0] <= s_axis_tdata[79:64];
        matrix[1][1] <= s_axis_tdata[95:80];
        matrix[1][2] <= s_axis_tdata[111:96];
        matrix[1][3] <= s_axis_tdata[127:112];
        matrix[2][0] <= s_axis_tdata[143:128];
        matrix[2][1] <= s_axis_tdata[159:144];
        matrix[2][2] <= s_axis_tdata[175:160];
        matrix[2][3] <= s_axis_tdata[191:176];
        matrix[3][0] <= s_axis_tdata[207:192];
        matrix[3][1] <= s_axis_tdata[223:208];
        matrix[3][2] <= s_axis_tdata[239:224];
        matrix[3][3] <= s_axis_tdata[255:240];
    end
end

always @(posedge axis_clk) begin
    if (axis_aresetn == 0) begin
        m_axis_tdata <= 256'b0;
        m_axis_tlast <= 1'b0;
        m_axis_tvalid <= 1'b0;
    end else if (m_axis_tready) begin
        m_axis_tdata <= {matrix[0][0], matrix[0][1], matrix[0][2], matrix[0][3],
                         matrix[1][0], matrix[1][1], matrix[1][2], matrix[1][3],
                         matrix[2][0], matrix[2][1], matrix[2][2], matrix[2][3],
                         matrix[3][0], matrix[3][1], matrix[3][2], matrix[3][3]};
        m_axis_tlast <= s_axis_tlast;
        m_axis_tvalid <= s_axis_tvalid;
    end
end

assign s_axis_tready = m_axis_tready;
assign m_axis_tready = s_axis_tready;

endmodule