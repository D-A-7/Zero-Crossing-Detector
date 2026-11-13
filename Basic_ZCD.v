module BasicZCD(VIN, VOUT);

input VIN;
output VOUT;

wire d1;
wire d2;
wire d3;
wire d4;
wire n1;
wire n2;
wire n3;
wire n4;

not u1(d1, VIN);
not u2(d2, d1);
not u3(d3, d2);
not u4(d4, d3);

nand u5(n1, VIN, d4);
nand u6(n2, VIN, n1);
nand u7(n3, d4, n1);
nand u8(n4, n2, n3);

not u9(VOUT, n4);

endmodule