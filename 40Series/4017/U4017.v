module U4017
(
	input clk,     //clk
	input clk_inh, //clk enable 
	input reset,   //reset
	output Cout,   //carry out
	output [9:0] Q //Q
	
);

reg [9:0] cnt;

initial begin 
	cnt = 10'b0000_0000_01;
end

always @( posedge(clk)) begin
  if( clk_inh == 1'b0 ) begin
    if( reset == 1'b1 ) begin
	   cnt <= 10'b0000_0000_01;
  	 end
	 else begin
	   cnt <= cnt << 1;
	   if( cnt == 10'b1000_0000_00 ) begin
		  cnt <= 10'b0000_0000_01;
		end
	 end
  end
end 

assign Q = cnt;
assign Cout = cnt < 10'b0000_1000_00 ? 1'b1 : 1'b0;
endmodule
