`timescale 1ns/1ps

module testbench;

wire a,b,c,d,e,f,g;
reg [3:0] Binary;
reg B0,B1,B2,B3;

initial

begin : apply_stimulus
	for(Binary = 0; Binary < 16; Binary =Binary+1)
	begin
		{B3,B2,B1,B0} = Binary[3:0];
		#10 $display("Binary=%d, abcdefg=%b",Binary,{a,b,c,d,e,f,g});
	end
end

SevenSegDecoder uut({B3,B2,B1,B0},a,b,c,d,e,f,g);

endmodule