module FFT_IFFT (
  input signed [2*n-1:0] in,
  output reg signed [2*n-1:0] out
);

parameter n = 4; // size of FFT and IFFT blocks (must be a power of 2)

// Define butterfly operation
function [2*n-1:0] butterfly;
  input signed [2*n-1:0] a, b;
  input [0:0] sign;
  begin
    butterfly[2*n-1:2*n-n] = a[2*n-1:2*n-n] + ((-1)**sign) * b[2*n-1:2*n-n];
    butterfly[2*n-n-1:0] = a[2*n-n-1:0] - ((-1)**sign) * b[2*n-n-1:0];
  end
endfunction

// Define twiddle factor values
reg signed [2*n-1:0] twiddle_factors [0:n-1];
integer i, j, k;
initial begin
  for (i = 0; i < n; i = i + 1) begin
    for (j = 0; j < n/2; j = j + 1) begin
      k = j * (2**(2*n-i-1));
      twiddle_factors[i][k+2*n-i-1:k+2*n-i-2*n] = {cos(2*3.14159265358979323846*j/n), -sin(2*3.14159265358979323846*j/n)};
    end
  end
end

// Convert input complex numbers to real and imaginary numbers
reg signed [n-1:0] in_real [0:n-1], in_imag [0:n-1];
integer l;
always @* begin
  for (l = 0; l < n; l = l + 1) begin
    in_real[l] = in[2*l+1:2*l];
    in_imag[l] = in[2*l+2*n+1:2*l+2*n];
  end
end

// FFT algorithm
reg signed [n-1:0] fft_real [0:n-1], fft_imag [0:n-1];
integer stage, index, group, pair;
always @* begin
  for (stage = 0; stage < $clog2(n); stage = stage + 1) begin
    for (index = 0; index < n; index = index + 1) begin
      group = index / (2**stage);
      pair = index % (2**stage);
      fft_real[index] = in_real[index] + ((-1)**group) * in_real[index+(2**stage)];
      fft_imag[index] = in_imag[index] + ((-1)**group) * in_imag[index+(2**stage)];
      {fft_real[index], fft_imag[index]} = butterfly({fft_real[index], fft_imag[index]}, {twiddle_factors[pair][2*stage-1:2*stage-2*n], twiddle_factors[pair][2*stage-2*n-1:0]}, stage);
    end
    in_real = fft_real;
    in_imag = fft_imag;
  end
end

// IFFT algorithm
reg signed [n-1:0] ifft_real [0:n-1], ifft_imag [0:n-1];
always @* begin
  for (stage = 0; stage < $clog2(n); stage = stage + 1) begin
    for (index = 0; index < n; index = index + 1) begin
      group = index / (2**stage);
      pair = index % (2**stage);
      {ifft_real[index], ifft_imag[index]} = butterfly({in_real[index], in_imag[index]}, {twiddle_factors[pair][2*stage-1:2*stage-2*n], -twiddle_factors[pair][2*stage-2*n-1:0]}, stage);
      ifft_real[index] = ifft_real[index] + ((-1)**group) * ifft_real[index+(2**stage)];
      ifft_imag[index] = ifft_imag[index] + ((-1)**group) * ifft_imag[index+(2**stage)];
    end
    in_real = ifft_real;
    in_imag = ifft_imag;
  end
end

// Convert output real and imaginary numbers to complex numbers
integer m;
always @* begin
  for (m = 0; m < n; m = m + 1) begin
    out[2*m+1:2*m] = ifft_real[m];
    out[2*m+2*n+1:2*m+2*n] = ifft_imag[m];
  end
end

endmodule