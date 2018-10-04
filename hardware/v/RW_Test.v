module RW_Test (
      iCLK,
		iRST_n,
		iBUTTON,
	   write,
		writedata,
	   read,
		readdata,
		AES_ed_DONE,
		AES_ed_ENABLE,
		c_state,
		iCLOCK50,
		CHAOS_KEY
);

parameter      ADDR_W             =     25;
parameter      DATA_W             =     16;

input          iCLK;
input          iRST_n;
input          iBUTTON;
input	[127:0]		CHAOS_KEY;

output         write;
output [DATA_W-1:0]	writedata;
output	      read;
input	 [DATA_W-1:0]  readdata;
	
output [1:0] AES_ed_DONE;	
input [1:0] AES_ed_ENABLE;
input iCLOCK50;

output  [7:0]           c_state;		
//=======================================================
//  Signal declarations
//=======================================================

reg  [1:0]           pre_button;
reg                  trigger;
reg  [7:0]           c_state;		
reg	               write, read;
reg  [ADDR_W-1:0]    address;  
reg  [DATA_W-1:0]    writedata;
reg  [4:0]           write_count;
wire                 max_address;
reg  [7:0]           wait_count;
reg  [1:0] AES_ed_DONE;
reg  AES_rst;

assign max_address = &address[2:0];

reg [127:0] e_data_in;
reg [127:0] d_data_out;
reg [15:0]  AES_write_count;

always@(posedge iCLK)
begin
	if (!iRST_n)
	begin 
		pre_button <= 2'b11;
		trigger <= 1'b0;
		write_count <= 5'b0;
		c_state <= 8'b0;
		write <= 1'b0;
		read <= 1'b0;
		writedata<=16'b0;
		wait_count <= 8'b0;
		AES_write_count <= 16'b1;
		AES_ed_DONE <= 2'b00;
	end
	else
	begin
	   pre_button <= {pre_button[0], iBUTTON};
		trigger <= !pre_button[0] && pre_button[1];
	  case (c_state)
	  	0 : begin //idle
	  		address <= {ADDR_W{1'b0}};
			e_data_in <= {128{1'b0}};
			d_data_out <= {128{1'b0}};
	  			if (trigger)
	  		begin
	  			c_state <= 1;
	  		end

	  	end
	  	1 : begin //write
	  		 
	  		if (write_count[3])
	  		begin
	  		  write_count <= 5'b0;
	  		  
				if(address == 3'b000)
				begin
					writedata <= d_data_out[15:0];
				end
				else if(address == 3'b001)
				begin
					writedata <= d_data_out[31:16];
				end
				else if(address == 3'b010)
				begin
					writedata <= d_data_out[47:32];
				end
				else if(address == 3'b011)
				begin
					writedata <= d_data_out[63:48];
				end
				else if(address == 3'b100)
				begin
					writedata <= d_data_out[79:64];
				end
				else if(address == 3'b101)
				begin
					writedata <= d_data_out[95:80];
				end
				else if(address == 3'b110)
				begin
					writedata <= d_data_out[111:96];
				end
				else if(address == 3'b111)
				begin
					writedata <= d_data_out[127:112];
				end
				else
				begin
					writedata <= writedata;
				end	
				write <= 1'b1;				
	  		  c_state <= 2;
			  	
	  		end
	  	  else
	  	  	write_count <= write_count + 1'b1;
		 end
	  	2 : begin //finish write one data
	  		   write <= 1'b0;
				
	  			c_state <= 3;
	  		end
	  	3 : begin
	  	   if (max_address) //finish write all(burst) 
	  		begin
		      address <=  {ADDR_W{1'b0}};
				c_state <= 10;
         end
		else //write the next data
	  		begin
	  			address <= address + 1'b1;
	  			c_state <= 1;
	  		end
		end
			
		10 : begin 
		if(wait_count == 8'b1111111)
		begin
			wait_count <= 8'b0;
			c_state <= 11;
		end
		else
			wait_count <= wait_count + 1'b1;
		
		end
		
		11 : 
		begin
		if(AES_write_count%32 == 8'b1)
			begin
				if(wait_count == 8'b1000000)
				begin
					wait_count <= 8'b0;
					c_state <= 4;
				end
				else
					wait_count <= wait_count + 1'b1;
			end
		else
		c_state <= 4;
		end
	  	4 : begin //read
	  			read <= 1;
			
	       if (!write_count[3])
	  			write_count <= write_count + 1'b1;
	  		
	  		   c_state <= 5;
	  	end
	  	5 : begin //latch read data
	  		read <= 0;

		  if (!write_count[3])
	  			write_count <= write_count + 5'b1;

	  	   c_state <= 6;
       end
	  	6 : begin //finish compare one data
	  		
			if(address == 3'b000)
			begin
				e_data_in[15:0] <= readdata;
			end
			else if(address == 3'b001)
			begin
				e_data_in[31:16] <= readdata;
			end
			else if(address == 3'b010)
			begin
				e_data_in[47:32] <= readdata;
			end
			else if(address == 3'b011)
			begin
				e_data_in[63:48] <= readdata;
			end
			else if(address == 3'b100)
			begin
				e_data_in[79:64] <= readdata;
			end
			else if(address == 3'b101)
			begin
				e_data_in[95:80] <= readdata;
			end
			else if(address == 3'b110)
			begin
				e_data_in[111:96] <= readdata;
			end
			else if(address == 3'b111)
			begin
				e_data_in[127:112] <= readdata;
			end
			else
			begin
				e_data_in <= e_data_in;
			end
				if (write_count[3])
				begin
					write_count <= 5'b0;
/*					if (max_address)
					begin
					if (same)
						c_state <= 7;
					else
						c_state <= 8;
					end
					else
						c_state <= 7;
*/					
				c_state <= 7;	
			  end
			  else
				write_count <= write_count + 1'b1;

	  	end
	  	7 : begin
		
	  	  if (max_address)
	  		begin
	  			address <=  {ADDR_W{1'b0}};
			   c_state <= 9;
				if(AES_ed_ENABLE == 2'b10)
				begin
					ld <= 1'b1;
					AES_rst = 1'b1;
				end
				else if(AES_ed_ENABLE == 2'b01)
				begin
					#1 kld <= 1;
					ld <= 1'b1;
					AES_rst = 1'b1;				
				end
	  		end
	  		else
          begin
	  			address <= address + 1'b1;
            c_state <= 4;
  		 end
		end
		8 : c_state <= 8;
		9 : begin
			
			if(wait_count == 8'b10)
				AES_rst <= 1'b0;
			else if(wait_count == 8'b100)
				AES_rst = 1'b1;
			else if(wait_count == 8'b110)
			begin
				if(AES_ed_ENABLE == 2'b10)
				begin
				ld <= 1'b0;
				end
				else if(AES_ed_ENABLE == 2'b01)
				begin
					#1 kld <= 1'b0;
					ld <= 1'b0;
				end
			end
			
			if(AES_ed_ENABLE == 2'b10)
			begin
				if(e_done)
				begin
					c_state <= 100;
					address <=  {ADDR_W{1'b0}};
					wait_count <= 8'b0;
					d_data_out <= e_text_out;
				end
				else
				begin
					if(wait_count < 8'b1000)
						wait_count <= wait_count + 1'b1;
				end
			end
			else if(AES_ed_ENABLE == 2'b01)
			begin
				if(d_done)
				begin
					c_state <= 100;
					address <=  {ADDR_W{1'b0}};
					wait_count <= 8'b0;					
					d_data_out <= d_text_out;
				end
				else
				begin
					if(wait_count < 8'b1000)
						wait_count <= wait_count + 1'b1;
				end
			end			
		
		end
		100 : c_state <= 101;
	  	101 : begin //write
	  		 
	  		if (write_count[3])
	  		begin
	  		  write_count <= 5'b0;
	  		  
				if(address == 3'b000)
				begin
					writedata <= d_data_out[15:0];
				end
				else if(address == 3'b001)
				begin
					writedata <= d_data_out[31:16];
				end
				else if(address == 3'b010)
				begin
					writedata <= d_data_out[47:32];
				end
				else if(address == 3'b011)
				begin
					writedata <= d_data_out[63:48];
				end
				else if(address == 3'b100)
				begin
					writedata <= d_data_out[79:64];
				end
				else if(address == 3'b101)
				begin
					writedata <= d_data_out[95:80];
				end
				else if(address == 3'b110)
				begin
					writedata <= d_data_out[111:96];
				end
				else if(address == 3'b111)
				begin
					writedata <= d_data_out[127:112];
				end
				else
				begin
					writedata <= writedata;
				end	
				write <= 1'b1;				
	  		  c_state <= 102;
			  	
	  		end
	  	  else
	  	  	write_count <= write_count + 1'b1;
		 end
	  	102 : begin //finish write one data
	  		   write <= 1'b0;
				
	  			c_state <= 103;
	  		end
	  	103 : begin
	  	   if (max_address) //finish write 16byte AES text_out
	  		begin
		      address <=  {ADDR_W{1'b0}};
				c_state <= 104;
				AES_write_count <= AES_write_count + 1'b1;
         end
		else //write the next data
	  		begin
	  			address <= address + 1'b1;
	  			c_state <= 101;
	  		end
		end
	  	104 : begin 
				if(AES_write_count == 16'hc000)  //512*512*3/16
					begin
					c_state <= 105;
					writedata <= 16'hffff;
					if(AES_ed_ENABLE == 2'b10)
					AES_ed_DONE <= 2'b10;
					else if(AES_ed_ENABLE == 2'b01)
					AES_ed_DONE <= 2'b01;
					end
				else
					c_state <= 11;
	  		end
		105 : c_state <= 105;
	    default : c_state <= 0;
	  endcase
  end
end

/*
always@(negedge AES_rst)
begin
if(!AES_rst)
	d_data_out <= {128{1'b0}};
end
*/


// Input
reg ld;
reg kld;
// Outputs
wire e_done;
wire d_done;
wire [127:0] e_text_out;
wire [127:0] d_text_out;

aes_cipher_top uut (
	.clk(iCLOCK50), 
	.rst(AES_rst), 
	.ld(ld), 
	.done(e_done), 
	.key(CHAOS_KEY/*{128{1'b0}}*/), 
	.text_in(e_data_in), 
	.text_out(e_text_out)
);

aes_inv_cipher_top uut1 (
	.clk(iCLOCK50), 
	.rst(AES_rst),
	.kld(kld),
	.ld(ld), 
	.done(d_done), 
	.key(CHAOS_KEY/*{128{1'b0}}*/), 
	.text_in(e_data_in), 
	.text_out(d_text_out)
);


endmodule 