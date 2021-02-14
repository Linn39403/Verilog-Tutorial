// Test bench 
`timescale 1ns/1ps
module testbench;

reg resetn,clk;
wire [7:0] Q;

	JohnsonCounter uut( 
  .clk(clk),
  .resetn(resetn),
  .Q(Q)  
	);
	initial
	begin
	   clk=1'b0;
		resetn=1'b0;
		#10;
		resetn=1'b1;
	   forever
	   begin
		#10 clk=~clk;
	   end
	end
	
endmodule
 