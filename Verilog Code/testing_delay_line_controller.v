`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2023 12:21:28
// Design Name: 
// Module Name: testing_delay_line_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testing_delay_line_controller(

   
	input clk,
	input rst,
	input sr,
	input sl,
	input din,
	output reg dout);

reg [3:0]  pr_st;
wire [15:0] temp;

D_ff d_1 (.clk(clk),.rst(rst),.d(din),.q(temp[0]));

D_ff d_2 (.clk(clk),.rst(rst),.d(temp[0]),.q(temp[1]));

D_ff d_3 (.clk(clk),.rst(rst),.d(temp[1]),.q(temp[2]));

D_ff d_4 (.clk(clk),.rst(rst),.d(temp[2]),.q(temp[3]));

D_ff d_5 (.clk(clk),.rst(rst),.d(temp[3]),.q(temp[4]));

D_ff d_6 (.clk(clk),.rst(rst),.d(temp[4]),.q(temp[5]));

D_ff d_7 (.clk(clk),.rst(rst),.d(temp[5]),.q(temp[6]));

D_ff d_8 (.clk(clk),.rst(rst),.d(temp[6]),.q(temp[7]));

D_ff d_9 (.clk(clk),.rst(rst),.d(temp[7]),.q(temp[8]));

D_ff d_10 (.clk(clk),.rst(rst),.d(temp[8]),.q(temp[9]));

D_ff d_11 (.clk(clk),.rst(rst),.d(temp[9]),.q(temp[10]));

D_ff d_12 (.clk(clk),.rst(rst),.d(temp[10]),.q(temp[11]));

D_ff d_13 (.clk(clk),.rst(rst),.d(temp[11]),.q(temp[12]));

D_ff d_14 (.clk(clk),.rst(rst),.d(temp[12]),.q(temp[13]));

D_ff d_15 (.clk(clk),.rst(rst),.d(temp[13]),.q(temp[14]));

D_ff d_16 (.clk(clk),.rst(rst),.d(temp[14]),.q(temp[15]));

always@(posedge clk) begin//{
	if(!rst) begin//{
		pr_st <= 4'b0000;
		dout  <= din;
	end//}
	else begin//{
		case(pr_st) 
			4'b0000:begin//{
			       	 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= din;
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1111;
					 dout  <= temp[15];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0001;
					 dout  <= temp[1];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= din;
				 end//}
			         end//}

			4'b0001: begin//{
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[1];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0000;
					 dout  <= temp[0];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0010;
					 dout  <= temp[2];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[1];
				 end//}
			         end//}

		       4'b0010:  begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[2];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0001;
					 dout  <= temp[1];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0011;
					 dout  <= temp[3];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[2];
				 end//}
	 
			         end//}

			4'b0011: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[3];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0010;
					 dout  <= temp[2];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0100;
					 dout  <= temp[4];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[3];
				 end//}
	 
			         end//}

			4'b0100: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[4];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0011;
					 dout  <= temp[3];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0101;
					 dout  <= temp[5];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[4];
				 end//}
	 
			         end//}

			4'b0101: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[5];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0100;
					 dout  <= temp[4];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0110;
					 dout  <= temp[6];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[5];
				 end//}
	 
			         end//}

			4'b0110: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[6];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0101;
					 dout  <= temp[5];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0111;
					 dout  <= temp[7];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[6];
				 end//}
	 
			         end//}

				 
	               4'b0111: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[7];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0110;
					 dout  <= temp[6];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1000;
					 dout  <= temp[8];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[7];
				 end//}
	 
			         end//}

			 4'b1000:begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[8];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b0111;
					 dout  <= temp[7];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1001;
					 dout  <= temp[9];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[8];
				 end//}
	 
			         end//}

			 4'b1001:begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[9];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1000;
					 dout  <= temp[8];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1010;
					 dout  <= temp[10];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[9];
				 end//}
	 
			         end//}

			4'b1010:begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[10];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1001;
					 dout  <= temp[9];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1011;
					 dout  <= temp[11];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[10];
				 end//}
	 
			         end//}	 

			4'b1011: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[11];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1010;
					 dout  <= temp[10];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1100;
					 dout  <= temp[12];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[11];
				 end//}
	 
			         end//}	

			4'b1100: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[12];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1011;
					 dout  <= temp[11];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1101;
					 dout  <= temp[13];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[12];
				 end//}
	 
			         end//}	

			4'b1101: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[13];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1100;
					 dout  <= temp[12];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1110;
					 dout  <= temp[14];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[13];
				 end//}
	 
			         end//}	

			4'b1110: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[14];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1101;
					 dout  <= temp[13];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b1111;
					 dout  <= temp[15];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[14];
				 end//}
	 
			         end//}

		       4'b1111: begin//{ 
				 if(sr==1 && sl==1|| sr==0 && sl==0) begin//{
				         pr_st <= pr_st;
				         dout  <= temp[15];
		                 end//}
				
				 else if(sr==1 && sl==0) begin//{
					 pr_st <= 4'b1110;
					 dout  <= temp[14];
				 end//} 

				 else if(sr==0 && sl==1) begin//{
					 pr_st <= 4'b0000;
					 dout  <= temp[0];
				 end//}

				 else begin//{
					 pr_st <= pr_st;
					 dout  <= temp[15];
				 end//}
	 
			         end//}	
			 endcase
				 
	 

				 
	end//}
	

end//}

endmodule

	
