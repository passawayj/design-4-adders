`timescale 1ns/1ns
module cla4bit(input [3:0] ina, inb, input cin, output[3:0] out1882, output cout);
	wire[3:0] G,P,temp;
	wire[2:0] C;
	
	and #(7) a1(G[0], ina[0], inb[0]);
	and #(7) a2(G[1], ina[1], inb[1]);
	and #(7) a3(G[2], ina[2], inb[2]);
	and #(7) a4(G[3], ina[3], inb[3]); // Gi = Ai * Bi
	
	xor #(6) x1(P[0], ina[0], inb[0]);
	xor #(6) x2(P[1], ina[1], inb[1]);
	xor #(6) x3(P[2], ina[2], inb[2]);
	xor #(6)  x4(P[3], ina[3], inb[3]); // Pi = Ai ^ Bi

	and #(7) a5 (temp[0], P[0], cin );
	and #(7) a6 (temp[1], P[1], C[0] );
	and #(7) a7 (temp[2], P[2], C[1] );
	and #(7) a8 (temp[3], P[3], C[2] );
	
	or #(7) o1 (C[0], G[0], temp[0]); //C1
	or #(7) o2 (C[1], G[1], temp[1]); //C2
	or #(7) o3 (C[2], G[2], temp[2]); //C3
	or #(7) o4 (cout, G[3], temp[3]);// C4 = COUT
	//Ci+1 = Gi + (Pi*Ci)
	
	
	
	xor #(6)  x5(out1882[0], P[0], cin);
	xor #(6) x6(out1882[1], P[1], C[0] );
	xor #(6) x7(out1882[2], P[2], C[1] );
	xor #(6) x8(out1882[3], P[3], C[2] ); // Si = Pi^Ci
	
endmodule
