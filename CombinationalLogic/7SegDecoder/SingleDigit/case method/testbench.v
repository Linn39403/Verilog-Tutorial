`timescale 1ns/1ps
//module SevenSegmentDecoder(
//output [7:0] z,
//input  [3:0] a,
//input dec,
//input en
//); 
module testbench;

wire [7:0] z;
reg  [3:0] a;
reg dec;
reg en;

initial

begin : apply_stimulus
	en = 0; //test for disable 
	#10     //see the output are Z or not
	en = 1;
	dec = 1; //disable dec point
	for(a = 0; a < 16; a =a+1)
	begin
		#10 $display("input=%d, en_abcdefg=%b",a,z);
	end
end

SevenSegmentDecoder uut(z,a,dec,en);

endmodule