// D Flip-Flop with Synchronous Reset
module FlipFlop (
    input clk,
    input reset,
    input d,
    output reg q
);
    always @(posedge clk) begin
        begin
            if (reset == 0) q <= 0;
            else q <= d;
        end
    end
endmodule