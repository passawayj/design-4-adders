`timescale 1ns/1ns
module bit4fulladder(input [3:0] a, b, input cin, output [3:0] s, output cout);
	wire c1, c2, c3;
	
	bit1fulladder b1 (a[0], b[0], cin, s[0], c1);
	bit1fulladder b2 (a[1], b[1], c1, s[1], c2);
	bit1fulladder b3 (a[2], b[2], c2, s[2], c3);
	bit1fulladder b4 (a[3], b[3], c3, s[3], cout);
	

endmodule
