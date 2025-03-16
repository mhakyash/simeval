module pll108MHz (
    inclk0,
    c0
);

input inclk0;
output c0;

reg clk_div;
wire clk_fb;
wire clk_out;

// Divide input clock frequency by feedback divider (N)
always @(posedge inclk0) begin
    clk_div <= ~clk_div;
end

assign clk_fb = clk_div[N-1];

// Generate 108MHz clock signal using PLL
pll #(
    .fin(50e6),
    .fout(108e6),
    .N(9),
    .M(2),
    .Icp(0.1e-3),
    .fPD(50e3),
    .Kp(0.1),
    .Ki(0.01)
) u_pll (
    .ref(clk_fb),
    .clk(clk_out)
);

// Use PI controller to adjust phase and frequency of output clock signal
always @(posedge clk_out or posedge inclk0) begin
    if (clk_out && !clk_fb) begin
        u_pll.Kp <= u_pll.Kp + 0.1;
        u_pll.Ki <= u_pll.Ki + 0.01;
    end else if (!clk_out && clk_fb) begin
        u_pll.Kp <= u_pll.Kp - 0.1;
        u_pll.Ki <= u_pll.Ki - 0.01;
    end
end

assign c0 = clk_out;

endmodule