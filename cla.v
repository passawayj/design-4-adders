`timescale 1ns/1ns
module cla(input [15:0] ina, inb, input cin, output[15:0] out1882, output cout);

	wire ca3, ca7, ca11;

	cla4bit c1 (ina[3:0], inb[3:0], cin, out1882[3:0], ca3);
	cla4bit c2 (ina[7:4], inb[7:4], cin, out1882[7:4], ca7);
	cla4bit c3 (ina[11:8], inb[11:8], cin, out1882[11:8], ca11);
	cla4bit c4 (ina[15:12], inb[15:12], cin, out1882[15:12], cout);

endmodule
