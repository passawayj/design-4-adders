`timescale 1ns/1ns
 module adders_tb(); 
 reg [15:0] in1, in2; 
 reg cin1;  
 wire [15:0] out1882_1, out1882_2, out1882_3, out1882_4; 
 wire cout1, cout2, cout3, cout4; 
  // different adders  
  rca u1(.ina(in1), .inb(in2), .cin(cin1), .out1882(out1882_1), .cout(cout1));
  cla u2(.ina(in1), .inb(in2), .cin(cin1), .out1882(out1882_2), .cout(cout2));
  CSA u3(.ina(in1), .inb(in2), .cin(cin1), .out1882(out1882_3), .cout(cout3));
  csa_2 u4(.ina(in1), .inb(in2), .cin(cin1), .out1882(out1882_4), .cout(cout4)); 
  
  initial begin 
	in1 = 0; in2 = 0; cin1 = 0;  
	#50 in1[14:0] = $random; in2[14:0] = $random;    
	#50 in1[14:0] = $random; in2[14:0] = $random; 
	#50 in1[14:0] = $random; in2[14:0] = $random;    
	#50 in1 = 16'b1010_1010_1010_1010; in2 = 16'b0101_0101_0101_0101; 
	#250 cin1 = 1; 
  end 
endmodule 
