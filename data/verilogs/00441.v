module mmu(clk, reset, fnc, virt, phys,
           tlb_index, tlb_index_new,
           tlb_entry_hi, tlb_entry_hi_new,
           tlb_entry_lo, tlb_entry_lo_new,
           tlb_kmissed, tlb_umissed,
           tlb_invalid, tlb_wrtprot);
    input clk;
    input reset;
    input [2:0] fnc;
    input [31:0] virt;
    output [31:0] phys;
    input [31:0] tlb_index;
    output [31:0] tlb_index_new;
    input [31:0] tlb_entry_hi;
    output [31:0] tlb_entry_hi_new;
    input [31:0] tlb_entry_lo;
    output [31:0] tlb_entry_lo_new;
    output tlb_kmissed;
    output tlb_umissed;
    output tlb_invalid;
    output tlb_wrtprot;

  // fnc = 000    no operation, hold output
  //       001    map virt to phys address
  //       010    tbs
  //       011    tbwr
  //       100    tbri
  //       101    tbwi
  //       110    undefined
  //       111    undefined

  // Define constants
  parameter TLB_SIZE = 32;
  parameter PAGE_BITS = 20;
  parameter FRAME_BITS = 20;
  parameter PAGE_SIZE = 1 << PAGE_BITS;
  parameter FRAME_SIZE = 1 << FRAME_BITS;

  // Define wires and registers
  wire map;
  wire tbs;
  wire tbwr;
  wire tbri;
  wire tbwi;
  reg [PAGE_BITS-1:0] page;
  reg [11:0] offset;
  wire [PAGE_BITS-1:0] tlb_page;
  wire tlb_miss;
  wire [4:0] tlb_found;
  wire tlb_enable;
  wire [FRAME_BITS-1:0] tlb_frame;
  wire tlb_wbit;
  wire tlb_vbit;
  wire [4:0] rw_index;
  wire [PAGE_BITS-1:0] r_page;
  wire [FRAME_BITS-1:0] r_frame;
  wire w_enable;
  wire [PAGE_BITS-1:0] w_page;
  wire [FRAME_BITS-1:0] w_frame;
  wire direct;
  wire [FRAME_BITS-2:0] frame;
  reg [4:0] random_index;
  reg tlb_miss_delayed;

  // decode function
  assign map = (fnc == 3'b001) ? 1 : 0;
  assign tbs = (fnc == 3'b010) ? 1 : 0;
  assign tbwr = (fnc == 3'b011) ? 1 : 0;
  assign tbri = (fnc == 3'b100) ? 1 : 0;
  assign tbwi = (fnc == 3'b101) ? 1 : 0;

  // latch virtual address
  always @(posedge clk) begin
    if (map == 1) begin
      page <= virt[31:12];
      offset <= virt[11:0];
    end
  end

  // create tlb instance
  assign tlb_page = (tbs == 1) ? tlb_entry_hi[31:12] : virt[31:12];
  assign tlb_enable = map;
  assign tlb_wbit = tlb_frame[1];
  assign tlb_vbit = tlb_frame[0];
  assign rw_index = (tbwr == 1) ? random_index : tlb_index[4:0];
  assign tlb_index_new = { tlb_miss | tlb_index[31],
                           tlb_index[30:5], tlb_found };
  assign tlb_entry_hi_new = { ((tbri == 1) ? r_page : page),
                              tlb_entry_hi[11:0] };
  assign tlb_entry_lo_new = { tlb_entry_lo[31:30], r_frame[FRAME_BITS-1:2],
                              tlb_entry_lo[11:2], r_frame[1:0] };
  assign w_enable = tbwr | tbwi;
  assign w_page = tlb_entry_hi[31:12];
  assign w_frame = { tlb_entry_lo[FRAME_BITS-2:12], tlb_entry_lo[1:0] };
  tlb tlb1(tlb_page, tlb_miss, tlb_found,
           clk, tlb_enable, tlb_frame,
           rw_index, r_page, r_frame,
           w_enable, w_page, w_frame);

  // construct physical address
  assign direct = (page[PAGE_BITS-2:PAGE_BITS-1] == 2'b11) ? 1 : 0;
  assign frame = (direct == 1) ? page[PAGE_BITS-1:FRAME_BITS] : tlb_frame[FRAME_BITS-1:1];
  assign phys = { 2'b00, frame, offset };

  // generate "random" index
  always @(posedge clk) begin
    if (reset == 1) begin
      // the index register is counting down
      // so we must start at topmost index
      random_index <= TLB_SIZE-1;
    end else begin
      // decrement index register "randomly"
      // (whenever there is a mapping operation)
      // skip "fixed" entries (0..3)
      if (map == 1) begin
        if (random_index == 4'd4) begin
          random_index <= TLB_SIZE-1;
        end else begin
          random_index <= random_index - 1;
        end
      end
    end
  end

  // generate TLB exceptions
  always @(posedge clk) begin
    if (map == 1) begin
      tlb_miss_delayed <= tlb_miss;
    end
  end
  assign tlb_kmissed = tlb_miss_delayed & ~direct & page[PAGE_BITS-1];
  assign tlb_umissed = tlb_miss_delayed & ~direct & ~page[PAGE_BITS-1];
  assign tlb_invalid = ~tlb_vbit & ~direct;
  assign tlb_wrtprot = ~tlb_wbit & ~direct;

endmodule