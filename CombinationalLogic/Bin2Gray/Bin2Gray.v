/*module Bin2Gray(input wire x1,x2,x3,x4, output wire z1,z2,z3,z4);

	buf U1(z1,x1);
	xor U2(z2,x1,x2);
	xor U3(z3,x2,x3);
	xor U4(z4,x3,x4);
endmodule*/

//Dataflow method
module Bin2Gray(input wire x1,x2,x3,x4, output wire z1,z2,z3,z4);

	assign z1 = x1;
	assign z2 = x1 ^ x2;
	assign z3 = x2 ^ x3;
	assign z4 = x3 ^ x4;
 
endmodule