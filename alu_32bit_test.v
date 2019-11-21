module alu_32bit_test();
	reg[31:0] b;
	reg[31:0] a;
	wire cout;
	wire[31:0] result;
	reg cin;
	reg lessi;
	reg [2:0]op;

	alu_32bit alu_32bit(result, cout, op, a, b);

	initial begin
		a= 32'b01010101010101010101010101010101; b=32'b10101010101010101010101010101010; cin=1'b0; op=3'b000; 						//test case for and operation
		#20;	
		a= 32'b01010101010101010101010101010101; b=32'b10101010101010101010101010101010;  cin=1'b0; op=3'b001;						//test case for or operation
		#20;
		a= 32'b01010101010101010101010101010101; b=32'b10101010101010101010101010101010;  cin=1'b0; op=3'b010;						//test case for add operation
		#20;
		a= 32'b01010101010101010101010101010101; b=32'b10101010101010101010101010101010;  cin=1'b0; op=3'b110;						//test case for subtract operation
		#20;
		a= 32'b01010101010101010101010101010101; b=32'b10101010101010101010101010101010;  cin=1'b1; op=3'b111;						//test case for slt operation
		end

	initial begin
		$monitor("time=%2d,a=%32b,b=%32b,cin=%1b,op=%3b,res=%32b,cout=%1b", $time, a , b, cin, op, result, cout);
	end

endmodule