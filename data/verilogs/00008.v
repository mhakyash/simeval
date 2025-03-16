module parity_based_mux_demux (
  input wire clk,
  input wire reset,
  input wire [15:0] in,
  output wire [7:0] out_hi,
  output wire [7:0] out_lo,
  output wire [1023:0] out_demux
);

  // Parity checking module
  wire parity = ^in;

  // Demultiplexer
  wire [7:0] demux_out [0:255];
  wire [3:0] demux_sel = in[3:0];
  assign out_lo = demux_out[0];
  assign out_hi = demux_out[255];
  demux_4_256 demux_inst (
    .data(in),
    .sel(demux_sel),
    .out(demux_out)
  );

  // Multiplexer
  wire [7:0] mux_out;
  wire [3:0] mux_sel = in[15:12];
  assign out_demux = 256'b0;
  mux_2_4 mux_inst (
    .data({8'b0, in[15:8]}),
    .sel(parity),
    .out(mux_out)
  );
  assign out_hi = parity ? mux_out : out_hi;
  assign out_lo = parity ? out_lo : mux_out;

endmodule

// 4-to-256 demultiplexer
module demux_4_256 (
  input wire [15:0] data,
  input wire [3:0] sel,
  output wire [7:0] out [0:255]
);
  genvar i;
  generate
    for (i = 0; i < 256; i = i + 1) begin : demux_loop
      assign out[i] = data[i*16 +: 8];
    end
  endgenerate
endmodule

// 2-to-4 multiplexer
module mux_2_4 (
  input wire [7:0] data,
  input wire sel,
  output wire [7:0] out
);
  assign out = sel ? data[3:0] : data[7:4];
endmodule