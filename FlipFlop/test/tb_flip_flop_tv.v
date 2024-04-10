`timescale 1ns/1ps

module tb_flip_flop_tv();
	reg clk, reset_n;
	reg d, q_expected;
	wire q;
	reg [31:0] vectornum, errors;
	reg [3:0] testvectors[100000:0];
    
	// Instantiate device under test
	flip_flop dut(
		.clk(clk),
		.reset_n(reset_n),
		.d(d),
		.q(q)
	);
	
	// Generate Clock
  initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
  end
	
	// Read Testvectors into an Array
	initial begin
		$readmemb("tv_flipflop.tv", testvectors);
		vectornum = 0;
		errors = 0;
		reset_n = 0;
		#27
		reset_n = 1;
	end
	
	// Assign Inputs and Expected Outputs
	always @(posedge clk) begin
		#1; {d, q_expected} = testvectors[vectornum];
	end
	
	// Compare Outputs with Expected Outputs
	always @(negedge clk) begin
		if (reset_n) begin
			if (q !== q_expected) begin
				$display("Error: inputs = %b", {d, q});
				$display(" outputs = %b (%b exp)", q, q_expected);
				errors = errors + 1;
			end
				
		vectornum = vectornum + 1;
			
		if (testvectors[vectornum] === 4'bx) begin
				$display("%d tests completed with %d errors", vectornum, errors);
				$finish;
			end
		end
	end

	initial begin
    $dumpfile("./file_base.vcd");
    $dumpvars(0, dut);
  end

  initial begin 
    #(2000) $finish;
  end
endmodule