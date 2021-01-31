module SevenSegDecoder(input [3:0] Bin, output wire a,b,c,d,e,f,g);

udp_a u1( a, Bin[3], Bin[2], Bin[1], Bin[0] );
udp_b u2( b, Bin[3], Bin[2], Bin[1], Bin[0] );
udp_c u3( c, Bin[3], Bin[2], Bin[1], Bin[0] );
udp_d u4( d, Bin[3], Bin[2], Bin[1], Bin[0] );
udp_e u5( e, Bin[3], Bin[2], Bin[1], Bin[0] );
udp_f u6( f, Bin[3], Bin[2], Bin[1], Bin[0] );
udp_g u7( g, Bin[3], Bin[2], Bin[1], Bin[0] );

endmodule

