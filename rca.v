`timescale 1ns/1ns
module rca(input [15:0] ina, inb, input cin, output[15:0] out1882, output cout);
	
	wire c1, c2, c3;
	
	bit4fulladder b1 (ina[3:0], inb[3:0], cin, out1882[3:0], c1);
	bit4fulladder b2 (ina[7:4], inb[7:4], c1, out1882[7:4], c2);
	bit4fulladder b3 (ina[11:8], inb[11:8], c2, out1882[11:8], c3);
	bit4fulladder b4 (ina[15:12], inb[15:12], c3, out1882[15:12], cout);

endmodule
