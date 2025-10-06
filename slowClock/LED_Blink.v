`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2025 08:29:02 PM
// Design Name: 
// Module Name: LED_Blink
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


module LED_Blink(
    input clk_in,
    output led
    );
    reg [25:0] count = 0;
    reg clk_out;
    always @(posedge clk_in)
    begin
    count <= count + 1;
    if(count == 50_000_000)
    begin
    count <= 0;
    clk_out = ~clk_out;
    end
    end
   
    assign led = clk_out;
    
endmodule
