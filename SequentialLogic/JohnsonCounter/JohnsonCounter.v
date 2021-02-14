module JohnsonCounter
#(parameter N=8)
(
  input clk,
  input resetn,
  output reg [N-1:0] Q  
);

always @(posedge clk,negedge resetn)
begin
	if(resetn == 1'b0)begin
		Q <= 0;
	end
	else begin
	   Q <= {~Q[0],Q[N-1:1]};
	end
end

endmodule
