module alu (
  input [31:0] a,
  input [31:0] b,
  input [3:0] alu_op,
  output reg [31:0] result,
  output reg zero
);
  always @(*) begin
    case (alu_op)
      4'b0000: result = a + b;
      4'b0010: result = a - b;
      4'b0100: result = a && b;
      4'b0101: result = a || b;
      4'b0110: result = a ^ b;
      4'b0111: result = ~(a | b);
      4'b1010: result = a > b;
      default: result = 32'b0;
    endcase
    zero = result == 32'b0;
  end
endmodule