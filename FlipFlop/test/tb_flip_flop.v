`timescale 1ns/1ps

module tb_flip_flop ();
  reg clk;
  reg reset_n;

  reg in_d;
  wire out_q;

  flip_flop dut (
    .clk(clk),
    .reset_n(reset_n),
    .d(in_d),
    .q(out_q)
  );

  initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
  end

  initial begin
    reset_n = 1'b0;
    #7
    reset_n = 1'b1;
  end

  initial begin
    in_d = 1'b0;
    #27
    in_d = 1'b1;
  end
endmodule