`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2023 10:55:59
// Design Name: 
// Module Name: phase_gen_detector_top_tb
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


module phase_gen_detector_top_tb();

reg d_in;
reg clk, rst, rst_gen;
wire shift_left, shift_right;

phase_gen_detector_top uut0(.d_in(d_in), .clk(clk), .rst(rst), .rst_gen(rst_gen), .shift_left(shift_left), .shift_right(shift_right));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;    #200 
rst = 0;     
end

initial begin
rst_gen = 1;    #20
rst_gen = 0;     
end

initial begin
d_in = 0;   #200 // 200 delay units is to set all the values to its initial value
d_in = 0;   #10 // 1  // stream of data inputs (actually from delay line controller output)
d_in = 0;   #10 // 2  
d_in = 0;   #10 // 3
d_in = 1;   #10 // 4
d_in = 1;   #10 // 5
d_in = 0;   #10 // 6
d_in = 0;   #10 // 7
d_in = 0;   #10 // 8
d_in = 0;   #10 // 9
d_in = 1;   #10 // 10
d_in = 1;   #10 // 11
d_in = 0;   #10 // 12
d_in = 0;   #10 // 13
d_in = 1;   #10 // 14
d_in = 0;   #10 // 15
d_in = 1;   #10 // 16
d_in = 0;   #10 // 17
d_in = 0;   #10 // 18
d_in = 0;   #10 // 19
d_in = 1;   #10 // 20 // 390 time stamp


// new sequence thus the previous line should have some delay
d_in = 0;   #10 // 1  // stream of data inputs (actually from delay line controller output)
d_in = 1;   #10 // 2  
d_in = 0;   #10 // 3
d_in = 1;   #10 // 4
d_in = 1;   #10 // 5
d_in = 0;   #10 // 6
d_in = 1;   #10 // 7
d_in = 0;   #10 // 8
d_in = 1;   #10 // 9
d_in = 1;   #10 // 10
d_in = 1;   #10 // 11
d_in = 0;   #10 // 12
d_in = 0;   #10 // 13
d_in = 1;   #10 // 14
d_in = 0;   #10 // 15
d_in = 1;   #10 // 16
d_in = 0;   #10 // 17
d_in = 0;   #10 // 18
d_in = 0;   #10 // 19
d_in = 1;   #10 // 20 //590 timestamp

//new sequence

d_in = 1;   #10 // 1  // stream of data inputs (actually from delay line controller output)
d_in = 0;   #10 // 2  
d_in = 1;   #10 // 3
d_in = 1;   #10 // 4
d_in = 1;   #10 // 5
d_in = 0;   #10 // 6
d_in = 1;   #10 // 7
d_in = 0;   #10 // 8
d_in = 0;   #10 // 9
d_in = 1;   #10 // 10
d_in = 1;   #10 // 11
d_in = 0;   #10 // 12
d_in = 1;   #10 // 13
d_in = 1;   #10 // 14
d_in = 0;   #10 // 15
d_in = 1;   #10 // 16
d_in = 1;   #10 // 17
d_in = 0;   #10 // 18
d_in = 1;   #10 // 19
d_in = 1;       // 20 //790 time stamp
end

/*initial #800
repeat(100) begin 
# 5 d_in = ($random % 2);
end*/

initial begin #800
//clk = 0;
forever #10 d_in = ($random % 2);
end

endmodule
