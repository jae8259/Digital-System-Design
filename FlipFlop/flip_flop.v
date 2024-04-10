// D Flip-Flop with Asynchronous Reset
module flip_flop (
  input clk,
  input reset_n,
  input d,
  output reg q
);
  always @(posedge clk or negedge reset_n) begin
    begin
      if (!reset_n) q <= 0;
      else q <= d;
    end
  end
endmodule