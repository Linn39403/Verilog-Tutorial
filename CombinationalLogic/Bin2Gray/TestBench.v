`timescale 1ns/1ps

module testbench;


//Test Signals
reg x1,x2,x3,x4;
wire z1,z2,z3,z4;


Bin2Gray uut(.x1(x1),.x2(x2),.x3(x3),.x4(x4),
				 .z1(z1),.z2(z2),.z3(z3),.z4(z4));
			
initial
begin : apply_stimulus
reg[3:0] input_vector;
	for(input_vector=0;input_vector<16;input_vector=input_vector+1)
	begin
	{x1,x2,x3,x4} = input_vector;
	#10
	$display("x1x2x3x4 = %b, z1z2z3z4 = %b",	{x1,x2,x3,x4},	{z1,z2,z3,z4});
	end
end
endmodule