`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2018 22:03:23
// Design Name: 
// Module Name: lab2
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


module lab2(
  input      [3:0] btn_i,
  input      [3:0] sw_i,
  output reg [2:0] rgb_led_o,
  output reg [7:0] sym
    );
  
  localparam RED_ON   = 3'b100;
  localparam GREEN_ON = 3'b010;
  localparam BLUE_ON  = 3'b001;
  localparam LED_ON   = 3'b111;
  localparam LED_OFF  = 3'b000;
  
  parameter LIM_1 = 40;
  parameter LIM_2 = 105;
  parameter LIM_3 = 140;
  parameter LIM_4 = 250;
  
  always @( btn_i or sw_i )
    begin
      
      sym <= ( btn_i << 4 )  + sw_i; 
      
      if ( sym == 97 )
        rgb_led_o <= GREEN_ON;
      else 
        rgb_led_o <= LED_OFF;
              
    end  
   
endmodule
