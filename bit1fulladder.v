`timescale 1ns/1ns
module bit1fulladder(input a, b, cin, output s, cout );
	wire w1,w2, w3; 
	
	xor #(6) x1(w1, a, b);
	xor #(6)x2(s, w1, cin);
	and #(7)a1(w2, cin, w1);
	and #(7)a2(w3, a, b);
	or #(7)o1(cout, w2, w3);
	
	

endmodule
