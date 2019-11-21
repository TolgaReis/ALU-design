module mux_4x1_test();
	reg c0, c1, c2, c3, sel0, sel1;
	wire out;
	
	mux_4x1 mux_4x1(out, c0, c1, c2, c3, sel0, sel1);

	// inputs of the mux is fixed to (c0, c1, c2, c3) = (1, 0, 1, 0)
	initial begin
		c0= 1'b1; c1=1'b0; c2=1'b1; c3=1'b0; sel0=1'b0; sel1=1'b0;			//selection (s0, s1) = (0, 0)
		#20;
		c0= 1'b1; c1=1'b0; c2=1'b1; c3=1'b0; sel0=1'b1; sel1=1'b0;			//selection (s0, s1) = (1, 0)
		#20;
		c0= 1'b1; c1=1'b0; c2=1'b1; c3=1'b0; sel0=1'b0; sel1=1'b1;			//selection (s0, s1) = (0, 1)
		#20;
		c0= 1'b1; c1=1'b0; c2=1'b1; c3=1'b0; sel0=1'b1; sel1=1'b1;			//selection (s0, s1) = (1, 1)
		
	end

	initial begin
		$monitor("time=%2d, c0=%1b, c1=%1b, c2=%1b, c3=%1b, sel0=%3b, sel1=%1b, out=%1b", $time, c0, c1, c2, c3, sel0, sel1, out);
	end

endmodule
