`timescale 1ns/1ps

module testbench;

//TestSignals
reg [3:0] Input;
wire [2:0] Output;

PriorityEncoder uut(.In(Input), .Out(Output));

initial
begin : apply_stimulus
	for(Input = 4'b1000; Input > 0;  )
	begin
	#10
	$display("Input = %b, Output = %b", Input, Output );
	Input = Input >> 1'b1;
	end
	$display("Input = %b, Output = %b", Input, Output );
end

endmodule
