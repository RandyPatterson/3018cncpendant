#include <Arduino.h>


//CNC Parameters
// enter $$ to view parameters
#define x_max_feed_rate 1000 // mm/min $110=
#define y_max_feed_rate 1000 // mm/min $111=
#define z_max_feed_rate 600 // mm/min  $112=


//encode pins 
#define clk_pin 8
#define dx_pin 9

#define x_button_pin 10
#define y_button_pin 11
#define z_button_pin 12


int clk_prev=1;
unsigned long previousMillis = 0;
unsigned long delay_in_ms = 0;
unsigned long encoder_prev_millis = 0;
int encoder_prev_val;

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
  unsigned long current_millis = millis();
  unsigned long elapsed = current_millis - encoder_prev_millis;

  //Serial.print("pre: ");
  //Serial.print(clk_prev);

  //Serial.print(", clk: ");
  //Serial.print(clk);

  //transition from high to low
  if ( clk_prev ==1 &&  clk == 0) { 
    int dt = digitalRead(dx_pin);    
    ret_val = dt==0 ? -1 : 1;
    encoder_prev_millis = current_millis;
    //if not enough time has elapsed and the encoder changed directions then ignore it, probably noise
    if (elapsed < 50 && encoder_prev_val != ret_val ) {
        ret_val = 0;

    } else {
      encoder_prev_val = ret_val;
    }
    //Serial.print(", dt: ");
    //Serial.print(dt);
  }
  //Serial.println();
  clk_prev = clk;


  return ret_val;
}


void setup() {
  Serial.begin(115200);

  pinMode(clk_pin,INPUT);
  pinMode(dx_pin,INPUT);

  pinMode(x_button_pin,INPUT_PULLUP);
  pinMode(y_button_pin,INPUT_PULLUP);
  pinMode(z_button_pin,INPUT_PULLUP);

  clk_prev = digitalRead(clk_pin);
}

void loop() {
  unsigned long currentMillis = millis();
  unsigned long elapsedMillis = currentMillis - previousMillis;

  int enc_val = encoder_update();
  if (enc_val != 0 && elapsedMillis >= delay_in_ms ) {
    

    int feedRate = 0;
    char axis = 'X';
    int distance = 1;
    
    //determin axis to move and feedrate
    if (digitalRead(x_button_pin) == 0) { 
      axis = 'X'; 
      feedRate = x_max_feed_rate;
    } else if (digitalRead(y_button_pin) == 0) { 
      axis = 'Y';
      feedRate = y_max_feed_rate;
    }
    else if (digitalRead(z_button_pin) == 0) { 
      axis = 'Z';
      feedRate = z_max_feed_rate;
    }

      //create command to send to CNC
      String cmd = "$J=G21G91";
      cmd.concat(axis);
      //determin direction based on encoder direction 
      if (enc_val == -1) {
        cmd.concat('-');
      }
      cmd.concat(distance);
      cmd.concat('F');
      cmd.concat(feedRate);

      Serial.println(cmd);
  
      // save the last time you sent a command
      previousMillis = currentMillis;


      //only send commands after the last one completed
      //calculate how long it will take for CNC to complete this command in ms
      //Distance in mm and feed rate is mm/min.  60000 is the # of milliseconds in a minute
      delay_in_ms = (float)distance / (float)feedRate * 60000;

  }
  
}