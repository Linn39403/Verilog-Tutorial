`timescale 1ns/1ps

module testbench;

/*
module decoder_2_4(input [1:0] In,
						 input enable,
						 output reg[3:0] Output);
*/
//TestSignals
reg [1:0] Input;
reg enable;
wire [3:0] Output;


decoder_2_4 uut(.Input(Input), .enable(enable), .Output(Output));

initial
begin : apply_stimulus
	enable = 0;
	#10 $display("Input = %b, Output = %b", Input, Output );
	
	enable = 1;
	Input = 2'b00;
	#10 $display("Input = %b, Output = %b", Input, Output );
	
	enable = 1;
	Input = 2'b01;
	#10 $display("Input = %b, Output = %b", Input, Output );

	enable = 1;
	Input = 2'b10;
	#10 $display("Input = %b, Output = %b", Input, Output );	

	enable = 1;
	Input = 2'b11;
	#10 $display("Input = %b, Output = %b", Input, Output );	
	
	$stop;
end

endmodule