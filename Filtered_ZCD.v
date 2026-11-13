module Filtered_ZCD(VIN, VOUT);

input VIN;
output VOUT;

wire w1;
wire w2;
wire w3;
wire w4;
wire w5;
wire w6;
wire n1;
wire n2;
wire n3;
wire n4;

not u1(w1, VIN);
not u2(w2, w1);
not u3(w3, w2);
not u4(w4, w3);
not u5(w5, w4);
not u6(w6, w5);

nand u7(n1, VIN, w6);
nand u8(n2, VIN, n1);
nand u9(n3, w6, n1);
nand u10(n4, n2, n3);

not u11(VOUT, n4);

endmodule