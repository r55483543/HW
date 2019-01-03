module Chaos_Code (

	//////////// CLOCK //////////
	input								CLK,
	input								STEP,
	input								RESET,
	//input			  [31:0]			SHIFT,
	
	//////////// CHAOS //////////
	output							DONE,
	output			[31:0]			CODE_X,
	output			[31:0]			CODE_Y,
	output			[31:0]			CODE_Z,
	output			[31:0]			CODE_W
);

//=======================================================
//  REG/WIRE declarations
//=======================================================

reg				done = 0;
reg	 [5:0]	count = 63;
reg	[31:0]	x = 32'h3f800000, y = 32'h3f800000, z = 32'h3f800000, w = 32'h3f800000;
//reg	[31:0]	x = 32'h0, y = 32'h0, z = 32'h0, w = 32'h0;
reg	[31:0]	a = 32'h3ecccccd, b = 32'h3f19999a, c = 32'h40400000, d = 32'h3f4ccccd, t = 32'h3c23d70a;
//reg	[31:0]	s = 32'h3f800000;
//reg	[31:0]	x_s = 32'h3d4ccccd, y_s = 32'h3d4ccccd, z_s = 32'h3d4ccccd, w_s = 32'h3d4ccccd;
reg	[31:0]	a1a, a2a, a3a, a4a, s1a, s2a, s3a, s4a, s5a, m1a, m2a, m3a, m4a, m5a;
reg	[31:0]	a1b, a2b, a3b, a4b, s1b, s2b, s3b, s4b, s5b, m1b, m2b, m3b, m4b, m5b;
wire	[31:0]	a1o, a2o, a3o, a4o, s1o, s2o, s3o, s4o, s5o, m1o, m2o, m3o, m4o, m5o;
//=======================================================
//  Structural coding
//=======================================================

Fp_Add	add_1	(.clock(CLK), .dataa(a1a), .datab(a1b), .result(a1o));
Fp_Add	add_2	(.clock(CLK), .dataa(a2a), .datab(a2b), .result(a2o));
Fp_Add	add_3	(.clock(CLK), .dataa(a3a), .datab(a3b), .result(a3o));
Fp_Add	add_4	(.clock(CLK), .dataa(a4a), .datab(a4b), .result(a4o));

Fp_Sub	sub_1	(.clock(CLK), .dataa(s1a), .datab(s1b), .result(s1o));
Fp_Sub	sub_2	(.clock(CLK), .dataa(s2a), .datab(s2b), .result(s2o));
Fp_Sub	sub_3	(.clock(CLK), .dataa(s3a), .datab(s3b), .result(s3o));
Fp_Sub	sub_4	(.clock(CLK), .dataa(s4a), .datab(s4b), .result(s4o));
Fp_Sub	sub_5	(.clock(CLK), .dataa(s5a), .datab(s5b), .result(s5o));


Fp_Mul	mul_1	(.clock(CLK), .dataa(m1a), .datab(m1b), .result(m1o));
Fp_Mul	mul_2	(.clock(CLK), .dataa(m2a), .datab(m2b), .result(m2o));
Fp_Mul	mul_3	(.clock(CLK), .dataa(m3a), .datab(m3b), .result(m3o));
Fp_Mul	mul_4	(.clock(CLK), .dataa(m4a), .datab(m4b), .result(m4o));
Fp_Mul	mul_5	(.clock(CLK), .dataa(m5a), .datab(m5b), .result(m5o));

assign	DONE = done;
assign	CODE_X = x;
assign	CODE_Y = y;
assign	CODE_Z = z;
assign	CODE_W = w;

	always @(posedge CLK)
	begin
		if (count == 44 && STEP == 1 && done == 0)
			done <= 1;
		if (STEP == 1 && done == 0)
			count <= count + 1;
		if (RESET == 1 && STEP == 0 && count != 63)
		begin
			count <= 63;
			done <= 0;
		end
		if (STEP == 0 && count != 63 && count != 0)
		begin
			count <= 0;
			done <= 0;
		end
	end
  
	always @(posedge CLK)
	begin
		if (count == 63 && STEP == 1)
		begin
			x <= 32'h3f800000;
			y <= 32'h3f800000;
			z <= 32'h3f800000;
			w <= 32'h3f800000;
			//s <= SHIFT;
		end
		if (count == 0 && STEP == 1)
		begin
			// equation_1
			
			// equation_2

			// equation_3
			s1a <= x;
			s1b <= c;
			s2a <= y;
			s2b <= w;
			// equation_4
		end
		if (count == 8 && STEP == 1)
		begin
			// equation_1
			m1a <= d;
			m1b <= w;
			// equation_2

			// equation_3
			m2a <= z;
			m2b <= s1o;
			m3a <= a;
			m3b <= s2o;
			// equation_4
		end
		if (count == 14 && STEP == 1)
		begin
			// equation_1
			a1a <= y;
			a1b <= z;
			// equation_2
			m4a <= a;
			m4b <= y;
			// equation_3
			s3a <= m2o;
			s3b <= m3o;
			// equation_4
			m5a <= a;
			m5b <= z;
		end
		if (count == 22 && STEP == 1)
		begin
			// equation_1
			s4a <= m1o;
			s4b <= a1o;
			// equation_2
			a2a <= x;
			a2b <= m4o;
			// equation_3
			a3a <= s3o;
			a3b <= b;
			// equation_4
			s5a <= m5o;
			s5b <= w;
		end
		if (count == 30 && STEP == 1)
		begin
			// equation_1
			m1a <= s4o;
			m1b <= t;
			// equation_2
			m2a <= a2o;
			m2b <= t;
			// equation_3
			m3a <= a3o;
			m3b <= t;
			// equation_4
			m4a <= s5o;
			m4b <= t;
		end
		if (count == 36 && STEP == 1)
		begin
			// equation_1
			a1a <= m1o;
			a1b <= x;
			// equation_2
			a2a <= m2o;
			a2b <= y;
			// equation_3
			a3a <= m3o;
			a3b <= z;
			// equation_4
			a4a <= m4o;
			a4b <= w;
		end
		if (count == 44 && STEP == 1 && done == 0)
		begin
			x <= a1o;
			y <= a2o;
			z <= a3o;
			w <= a4o;
		end
	end

endmodule
