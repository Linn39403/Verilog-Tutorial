//7 segment decoder
module SevenSegmentDecoder(
output [7:0] z,
input  [3:0] a,
input dec,
input en
); 

localparam A = 7'b000_0001,
           B = 7'b000_0010,
           C = 7'b000_0100,
           D = 7'b000_1000,
           E = 7'b001_0000,
           F = 7'b010_0000,
           G = 7'b100_0000;			  
reg[6:0] y;

//~ is for Common Anode Display
assign   z = en ? ~{dec,y}: 8'bz;
always @*
begin 
	case(a)
	4'h0: y = A|B|C|D|E|F  ;
	4'h1: y =   B|C        ;
	4'h2: y = A|B|  D|E|  G;
	4'h3: y = A|B|C|D|    G;
	4'h4: y =   B|C|    F|G; 
	4'h5: y = A|  C|D  |F|G;
	4'h6: y = A|  C|D|E|F|G;
	4'h7: y = A|B|C        ;
	4'h8: y = A|B|C|D|E|F|G;
	4'h9: y = A|B|C|D|  F|G;
	4'hA: y = A|B|C|  E|F|G;
	4'hB: y =     C|D|E|F|G;
	4'hC: y = A|    D|E|F  ; 
	4'hD: y =   B|C|D|E|  G;
	4'hE: y = A|    D|E|F|G;
	4'hF: y = A|      E|F|G;
   endcase
end

endmodule
