module U_74595
#(parameter N=8) //No of bits
(
	input Ser_in,
	input reset,
	input latch_clk,
	input shift_clk,
	input output_en,
	output SQH,
	output [N-1:0] Q
);

reg [N:0] Latch; //9bit, Bit 8 is for SQH, Bit 7:0 is for Q
reg [N-1:0] Q_Buffer;

always @( posedge(shift_clk))
begin
	Latch <= reset ? 1'b0 : {Latch[N-1:0],Ser_in};
	
end

always @( posedge( latch_clk ))
begin 
	Q_Buffer <= Latch[N-1:0];
end

assign Q = output_en ? Q_Buffer : 1'bz;
assign SQH = Latch[N];

endmodule
