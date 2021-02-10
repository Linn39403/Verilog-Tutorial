//TestBench
`timescale 1ns/1ps
module testbench;
/*
module BarrelShifter(
input[7:0] a,
input[2:0] amt, 
input dir, //0->LeftShift, 1->RightShift
output reg [7:0] y);
*/

reg [7:0]a;
wire [7:0]y;
reg dir;
reg [2:0] amt;
BarrelShifter uut(
	.a(a),
	.y(y),
	.dir(dir),
	.amt(amt));

initial
 begin:apply_stimulus
	        a = 8'b0000_0001;
		#10 dir = 1'b0; //LShift
		#10 amt = 3'b000;
		#10 amt = 3'b001;
		#10 amt = 3'b010;
		#10 amt = 3'b011;
		#10 amt = 3'b100;
		#10 amt = 3'b101;
		#10 amt = 3'b110;
		#10 amt = 3'b111;
		
		#10 amt = 3'b000;
                dir = 1'b1; //RShift
		#10 amt = 3'b000;
		#10 amt = 3'b001;
		#10 amt = 3'b010;
		#10 amt = 3'b011;
		#10 amt = 3'b100;
		#10 amt = 3'b101;
		#10 amt = 3'b110;
		#10 amt = 3'b111;
end

endmodule