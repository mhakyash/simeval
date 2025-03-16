module mem_test (
  input clk,
  input rst,
  input start,
  input [7:0] addr_width,
  input [31:0] data_width,
  output done,
  output pass
);

  reg [7:0] addr;
  reg [31:0] data_in, data_out;
  reg [31:0] seed;
  reg [31:0] pattern;
  reg [31:0] expected_data;
  reg [31:0] actual_data;
  reg [31:0] num_patterns;
  reg [31:0] pattern_count;
  reg [31:0] error_count;
  reg [1:0] state;
  
  parameter IDLE = 2'b00;
  parameter WRITE = 2'b01;
  parameter READ = 2'b10;
  
  always @(posedge clk) begin
    if (rst) begin
      state <= IDLE;
      addr <= 0;
      data_in <= 0;
      data_out <= 0;
      seed <= 0;
      pattern <= 0;
      expected_data <= 0;
      actual_data <= 0;
      num_patterns <= 0;
      pattern_count <= 0;
      error_count <= 0;
      pass <= 0;
      done <= 0;
    end else begin
      case (state)
        IDLE: begin
          if (start) begin
            state <= WRITE;
            addr <= 0;
            data_in <= 0;
            data_out <= 0;
            seed <= $random;
            pattern_count <= 0;
            error_count <= 0;
            pass <= 0;
            done <= 0;
          end
        end
        
        WRITE: begin
          if (pattern_count == 0) begin
            num_patterns <= 2**addr_width;
            pattern_count <= num_patterns;
          end
          
          if (pattern_count > 0) begin
            pattern <= $random(seed);
            data_in <= pattern;
            expected_data <= pattern;
            state <= READ;
          end else begin
            state <= IDLE;
            done <= 1;
            if (error_count == 0) begin
              pass <= 1;
            end
          end
        end
        
        READ: begin
          data_out <= 0;
          if (addr < num_patterns) begin
            data_out <= $readmemh("mem_file", data_out, addr);
            actual_data <= data_out;
            if (actual_data != expected_data) begin
              error_count <= error_count + 1;
            end
            addr <= addr + 1;
            pattern_count <= pattern_count - 1;
            state <= WRITE;
          end
        end
      endcase
    end
  end
endmodule