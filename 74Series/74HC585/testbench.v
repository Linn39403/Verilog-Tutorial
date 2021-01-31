// Test bench 
`timescale 1ns/1ps
module testbench;

reg reset,Ser_in,latch_clk,shift_clk,output_en;
wire SQH;
wire [7:0] Q;
/*
module U_74595
(
	input Ser_in,
	input reset,
	input latch_clk,
	input shift_clk,
	input output_en,
	output SQH,
	output [N-1:0] Q
);
*/
	U_74595 uut( 
             	 .reset(reset), 
					 .Ser_in(Ser_in),
					 .latch_clk(latch_clk),
					 .shift_clk(shift_clk),
					 .output_en(output_en),
					 .SQH(SQH),
					 .Q(Q) );
	initial
	begin
		shift_clk=1'b0;
		latch_clk=1'b0;
		forever
		begin
			#10 shift_clk=~shift_clk;
				latch_clk=~latch_clk;
	   end
	end
	
initial
begin
   latch_clk = 1'b0;
   output_en = 1'b1; //output enable
   reset=1'b0;  //Set Ser_in to 8'b1111_0000
   Ser_in=1'b1;
#80
   Ser_in=1'b0;
#200            //wait for at  least 4 clocks

//enable latch_clk
//latch_clk=1'b1;
//#20
//latch_clk=1'b0;

//#20
	$stop;
end
	

endmodule
 