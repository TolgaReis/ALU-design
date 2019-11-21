module mux_4x1(output out, input c0, input c1, input c2, input c3, input sel0, input sel1);

  wire sel0n, sel1n; 					    //s0 not, s1 not
  wire w1,w2,w3,w4; 						  //to wire each part of output statement 

  not n1(sel0n, sel0);					  //s0'
  not n2(sel1n,sel1);					    //s1'

  and and1(w1, c0, sel1n, sel0n); //wires (c0.s0’.s1’)
  and and2(w2, c1, sel1n, sel0); 	//wires (c1.s0.s1')
  and and3(w3, c2, sel1, sel0n); 	//wires (c2.s0'.s1)
  and and4(w4, c3, sel1, sel0); 	//wires (c3.s0.s1)

  or or1(out, w1, w2, w3, w4);		//output = (c0.s0’.s1’) + (c1.s0.s1') + (c2.s0'.s1) +(c3.s0.s1)

endmodule
