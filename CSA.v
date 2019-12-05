`timescale 1ns/1ns
module CSA(input [15:0] ina, inb, input cin, output reg [15:0] out1882, output cout);
	
	wire cout_1, cout_2;
	wire [15:0] out1882_1, out1882_2;

	
	cla c1 (ina, inb, 1'b0, out1882_1, cout_1);
	cla c2 (ina, inb, 1'b1, out1882_2, cout_2);
	
	and #(7) a1 (w1,cin, cout_2 ); // when cin = 1, cout_2 is selected 
	or #(7) o1 (cout, w1,cout_1 ); // when cin = 0, cout_1 is selected
	
	//assign #3 out1882 = cin? out1882_2 : out1882_1;
	
	always@(*) begin 
		if(cin)
			#3 out1882 = out1882_2;
		else
			#3 out1882 = out1882_1;
	end
	


endmodule
