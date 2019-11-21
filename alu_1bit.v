module alu_1bit(op, a, b, c_in, lessi, r, c_out);
	input [2:0] op;										//ADD: 010, SUB: 110, AND: 000, OR: 001, SLT: 111
	input a, b, c_in, lessi;
	output r, c_out;
	wire b_xor_op2, 										//to not use xor gate, it is created from and, or, not gates b'.op[2] + b.op[2]'
		  b_not,												//negation of b input
		  op2_not; 											//negation of op[2] input
	
	not n1(b_not, b);										//b'
	not n2(op2_not, op[2]);								//b[2]'
	
	wire bn_and_op2, b_and_op2n;						//b'.op[2] + b.op[2]'
	
	and and1(bn_and_op2, b_not, op[2]); 			//b'.op[2]
	and and2(b_and_op2n, b, op2_not);				//b.op[2]'
	or or1(b_xor_op2, bn_and_op2, b_and_op2n);	//b'.op[2] + b.op[2]'
	
	wire point_u,											//a.(b'.op[2] + b.op[2]')
		  point_u_n,										//point_u' 	 
		  point_v,											//a + (b'.op[2] + b.op[2]'), also the 1th input of mux
		  point_w,								   		//point_u_n.point_v
		  point_w_n,										//point_w'
		  point_x,											//point_w.c_in
		  point_x_n,										//point_x'
		  point_y,											//point_w + c_in
		  point_z;											//point_w_n.point_y
		  
	and and3(point_u, b_xor_op2, a);
	not n3(point_u_n, point_u);
	or or2(point_v, b_xor_op2, a);
	and and4(point_w, point_u_n, point_v);
	and and5(point_x, point_w, c_in);
	not n4(point_x_n, point_x);
	or or3(point_y, point_w, c_in);
	and and6(point_z, point_x_n, point_y);
	
	or or4(c_out, point_x, point_u);
	
	mux_4x1 mux0(r, point_u, point_v, point_z, lessi, op[0], op[1]);
	
endmodule