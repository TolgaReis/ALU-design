module alu_32bit(r, c_out, op, a, b);
	output[31:0] r; 							//32 bit operation result
	output c_out;								//carry out
	input[2:0] op;								//operation selection
	input[31:0] a;								//first 32 bit number
	input[31:0] b;								//second 32 bit number
	wire[31:0] c_temp_inp;					//to an input carry
	wire[31:0] c_temp_out;					//from an output carry
	alu_1bit alu_1bit0(op, a[0], b[0], op[2], 0, r[0], c_temp_out[0]);
	
	or or1(c_temp_inp[0], 0, c_temp_out[0]);
	alu_1bit alu_1bit1(op, a[1], b[1], c_temp_inp[0], 0, r[1], c_temp_out[1]);

	or or2(c_temp_inp[1], 0, c_temp_out[1]);
	alu_1bit alu_1bit2(op, a[2], b[2], c_temp_inp[1], 0, r[2], c_temp_out[2]);

	or or3(c_temp_inp[2], 0, c_temp_out[2]);
	alu_1bit alu_1bit3(op, a[3], b[3], c_temp_inp[2], 0, r[3], c_temp_out[3]);

	or or4(c_temp_inp[3], 0, c_temp_out[3]);
	alu_1bit alu_1bit4(op, a[4], b[4], c_temp_inp[3], 0, r[4], c_temp_out[4]);

	or or5(c_temp_inp[4], 0, c_temp_out[4]);
	alu_1bit alu_1bit5(op, a[5], b[5], c_temp_inp[4], 0, r[5], c_temp_out[5]);

	or or6(c_temp_inp[5], 0, c_temp_out[5]);
	alu_1bit alu_1bit6(op, a[6], b[6], c_temp_inp[5], 0, r[6], c_temp_out[6]);

	or or7(c_temp_inp[6], 0, c_temp_out[6]);
	alu_1bit alu_1bit7(op, a[7], b[7], c_temp_inp[6], 0, r[7], c_temp_out[7]);

	or or8(c_temp_inp[7], 0, c_temp_out[7]);
	alu_1bit alu_1bit8(op, a[8], b[8], c_temp_inp[7], 0, r[8], c_temp_out[8]);

	or or9(c_temp_inp[8], 0, c_temp_out[8]);
	alu_1bit alu_1bit9(op, a[9], b[9], c_temp_inp[8], 0, r[9], c_temp_out[9]);

	or or10(c_temp_inp[9], 0, c_temp_out[9]);
	alu_1bit alu_1bit10(op, a[10], b[10], c_temp_inp[9], 0, r[10], c_temp_out[10]);

	or or11(c_temp_inp[10], 0, c_temp_out[10]);
	alu_1bit alu_1bit11(op, a[11], b[11], c_temp_inp[10], 0, r[11], c_temp_out[11]);

	or or12(c_temp_inp[11], 0, c_temp_out[11]);
	alu_1bit alu_1bit12(op, a[12], b[12], c_temp_inp[11], 0, r[12], c_temp_out[12]);

	or or13(c_temp_inp[12], 0, c_temp_out[12]);
	alu_1bit alu_1bit13(op, a[13], b[13], c_temp_inp[12], 0, r[13], c_temp_out[13]);

	or or14(c_temp_inp[13], 0, c_temp_out[13]);
	alu_1bit alu_1bit14(op, a[14], b[14], c_temp_inp[13], 0, r[14], c_temp_out[14]);

	or or15(c_temp_inp[14], 0, c_temp_out[14]);
	alu_1bit alu_1bit15(op, a[15], b[15], c_temp_inp[14], 0, r[15], c_temp_out[15]);

	or or16(c_temp_inp[15], 0, c_temp_out[15]);
	alu_1bit alu_1bit16(op, a[16], b[16], c_temp_inp[15], 0, r[16], c_temp_out[16]);

	or or17(c_temp_inp[16], 0, c_temp_out[16]);
	alu_1bit alu_1bit17(op, a[17], b[17], c_temp_inp[16], 0, r[17], c_temp_out[17]);

	or or18(c_temp_inp[17], 0, c_temp_out[17]);
	alu_1bit alu_1bit18(op, a[18], b[18], c_temp_inp[17], 0, r[18], c_temp_out[18]);

	or or19(c_temp_inp[18], 0, c_temp_out[18]);
	alu_1bit alu_1bit19(op, a[19], b[19], c_temp_inp[18], 0, r[19], c_temp_out[19]);

	or or20(c_temp_inp[19], 0, c_temp_out[19]);
	alu_1bit alu_1bit20(op, a[20], b[20], c_temp_inp[19], 0, r[20], c_temp_out[20]);

	or or21(c_temp_inp[20], 0, c_temp_out[20]);
	alu_1bit alu_1bit21(op, a[21], b[21], c_temp_inp[20], 0, r[21], c_temp_out[21]);

	or or22(c_temp_inp[21], 0, c_temp_out[21]);
	alu_1bit alu_1bit22(op, a[22], b[22], c_temp_inp[21], 0, r[22], c_temp_out[22]);

	or or23(c_temp_inp[22], 0, c_temp_out[22]);
	alu_1bit alu_1bit23(op, a[23], b[23], c_temp_inp[22], 0, r[23], c_temp_out[23]);

	or or24(c_temp_inp[23], 0, c_temp_out[23]);
	alu_1bit alu_1bit24(op, a[24], b[24], c_temp_inp[23], 0, r[24], c_temp_out[24]);

	or or25(c_temp_inp[24], 0, c_temp_out[24]);
	alu_1bit alu_1bit25(op, a[25], b[25], c_temp_inp[24], 0, r[25], c_temp_out[25]);

	or or26(c_temp_inp[25], 0, c_temp_out[25]);
	alu_1bit alu_1bit26(op, a[26], b[26], c_temp_inp[25], 0, r[26], c_temp_out[26]);

	or or27(c_temp_inp[26], 0, c_temp_out[26]);
	alu_1bit alu_1bit27(op, a[27], b[27], c_temp_inp[26], 0, r[27], c_temp_out[27]);

	or or28(c_temp_inp[27], 0, c_temp_out[27]);
	alu_1bit alu_1bit28(op, a[28], b[28], c_temp_inp[27], 0, r[28], c_temp_out[28]);

	or or29(c_temp_inp[28], 0, c_temp_out[28]);
	alu_1bit alu_1bit29(op, a[29], b[29], c_temp_inp[28], 0, r[29], c_temp_out[29]);

	or or30(c_temp_inp[29], 0, c_temp_out[29]);
	alu_1bit alu_1bit30(op, a[30], b[30], c_temp_inp[29], 0, r[30], c_temp_out[30]);
	
	or or31(c_temp_inp[30], 0, c_temp_out[30]);
	alu_1bit alu_1bit31(op, a[31], b[31], c_temp_inp[30], 0, r[31], c_out);
	
endmodule