module PriorityEncoder(input [3:0] In,
                       output reg[2:0] Out);
			
   always @*
	begin 
	if(In[3] == 1'b1)
	    Out = 3'b100;
	else if(In[2] == 1'b1)
	    Out = 3'b011;
	else if(In[1] == 1'b1)
	    Out = 3'b010;
	else if(In[0] == 1'b1)
	    Out = 3'b001;
	else 
	    Out = 3'b000;
	end			
endmodule