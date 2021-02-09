// Test bench 
`timescale 1ns/1ps
module testbench;

reg reset,clk;
reg clk_inh;
wire [9:0] Q;
wire Cout;
	U4017 uut( 
             	 .reset(reset), 
					 .clk(clk),
					 .clk_inh(clk_inh),
					 .Cout(Cout),
					 .Q(Q));
	initial
	begin
	   clk=1'b0;
		reset=1'b0;
		clk_inh=1'b0;
	   forever
	   begin
		#10 clk=~clk;
	   end
	end
	
initial
begin
#400
	$stop;
end
	

endmodule
 