#include <Arduino.h>


//encode pins 
static const int clk_pin=8;
static const int dx_pin=9;

int clk_prev=1;

/********************************************
Decrement: when clk edge falls dx is high
       ____
      |    |
clk __|    |___
         ____ 
        |    |
dx   ___|    |___


Increment: when clk edge falls and  dx is low
         ____ 
        |    |
clk ____|    |___
      ____
     |    |
dx __|    |___

Returns: 
-1 = encoder turned counter-clockwise (decrement)
 0 = no change 
+1 = encoder turned clockwise (increment)
*********************************************/
int encoder_update() {
  int ret_val = 0;
  int clk = digitalRead(clk_pin);

  //transition from high to low
  if ( clk_prev == 1 && clk == 0) { 

    int dt = digitalRead(dx_pin);    

    // DEBUG_PRINT("clk: ");
    // DEBUG_PRINT(clk);
    // DEBUG_PRINT(" dt: ");
    // DEBUG_PRINTLN(dt);

    ret_val = dt==0 ? 1 : -1;
  }
  clk_prev = clk;

  return ret_val;
}


void setup() {
  pinMode(clk_pin,INPUT);
  pinMode(dx_pin,INPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
}