`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2023 12:03:19
// Design Name: 
// Module Name: Decade_counter_Rst1
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


module Decade_counter_Rst1_tb(

    );
    reg clk;
    reg reset;
    wire [3:0] q;
    always #5 clk=~clk;
    Decade_Counter_Rst1 dut(.clk(clk),.reset(reset),.q(q));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t reset=%0b q=%b",$time,reset,q);
    clk<=0;
    reset<=0;
    #4; reset<=1;
    #5; reset<=0;
    #34; reset<=1;
    #9; reset<=0;
    #100 $finish;
    end
endmodule
