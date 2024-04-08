`timescale 1ns/1ps

module FlipFlop_tb ();
    reg clk;
    reg reset;

    reg in_d;
    wire out_q;

    FlipFlop dut (
        .clk(clk),
        .reset(reset),
        .d(in_d),
        .q(out_q)
    );

    initial begin
        clk = 1'b0;
        forever #1 clk = ~clk;
    end

    initial begin
        reset = 1'b0;
        #10
        reset = 1'b1;
    end

    initial begin
        in_d = 1'b0;
        #20
        in_d = 1'b1;
    end

    initial begin
        $dumpfile("./file_base.vcd");
        $dumpvars(0, dut);
    end

    initial begin 
        #(2000) $finish;
    end
endmodule