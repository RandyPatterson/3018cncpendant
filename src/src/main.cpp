#include <Arduino.h>


//CNC Parameters
// enter $$ to view parameters
#define x_max_feed_rate 1000 // mm/min $110=
#define y_max_feed_rate 1000 // mm/min $111=
#define z_max_feed_rate 600 // mm/min  $112=


//encode pins 
#define clk_pin       8
#define dx_pin        9
//Move 1 mm
#define distanceA_pin 15
//Move .1 mm
#define distanceB_pin 14

#define x_button_pin  10
#define y_button_pin  11
#define z_button_pin  12

#define usb_busy_pin 7
#define led_green 17


int clk_prev=1;
unsigned long previousMillis = 0;
//How long the current CNC move command will take to coplete
unsigned long delay_in_ms = 0;
//used to determin how long ago (in ms) the encode changed states.  If it's too short ignore it (noise)
unsigned long encoder_prev_millis = 0;
int encoder_prev_val;

/********************************************
Increment: when clk edge falls dx is high
       ____
      |    |
clk __|    |___
         ____ 
        |    |
dx   ___|    |___


Decrement: when clk edge falls and  dx is low
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

  //transition from high to low
  if ( clk_prev ==1 &&  clk == 0) { 
    int dt = digitalRead(dx_pin);    
    ret_val = dt==0 ? -1 : 1;
    encoder_prev_millis = current_millis;
    //if less than 50ms elapsed since last encoder change and the encoder 
    //changed directions then ignore it, probably noise
    if (elapsed < 50 && encoder_prev_val != ret_val ) {
        ret_val = 0;
    } 
    else {
      encoder_prev_val = ret_val;
    }
  }
  clk_prev = clk;
  return ret_val;
}


void setup() {
  pinMode(clk_pin,INPUT);
  pinMode(dx_pin,INPUT);

  pinMode(x_button_pin,INPUT_PULLUP);
  pinMode(y_button_pin,INPUT_PULLUP);
  pinMode(z_button_pin,INPUT_PULLUP);
  pinMode(distanceA_pin,INPUT_PULLUP);
  pinMode(distanceB_pin,INPUT_PULLUP); 

  pinMode(usb_busy_pin,INPUT); 
  pinMode(led_green,OUTPUT);

  digitalWrite(led_green,!digitalRead(usb_busy_pin));

  clk_prev = digitalRead(clk_pin);
}

static int prev_busy = 0;
void loop() {



  
  //is high if pc plugged into CNC USB
  int is_usb_busy = digitalRead(usb_busy_pin);
  if (prev_busy != usb_busy_pin) digitalWrite(led_green,!is_usb_busy);

  unsigned long currentMillis = millis();
  unsigned long elapsedMillis = currentMillis - previousMillis;

  int enc_val = encoder_update();
  if (enc_val != 0 && elapsedMillis >= delay_in_ms  && is_usb_busy == LOW ) {
    

    int feedRate = 0;
    char axis = 'X';
    float distance = 0;

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

    if (digitalRead(distanceA_pin) == 0) distance = 1.0;

    if (digitalRead(distanceB_pin) == 0) distance = 0.1;

    if (feedRate > 0 && distance > 0.0 ) {
      //create command to send to CNC
      String cmd = "$J=G21G91";
      cmd.concat(axis);
      //determine direction based on encoder direction 
      if (enc_val == -1) {
        cmd.concat('-');
      }
      cmd.concat(distance);
      cmd.concat('F');
      cmd.concat(feedRate);
      
      Serial.begin(115200);     
      Serial.println(cmd);
      Serial.end();      
  
    }
    // save the last time you sent a command
    previousMillis = currentMillis;

    prev_busy = is_usb_busy;

    //only send commands after the last one completed
    //calculate how long it will take for CNC to complete this command in ms
    //Distance in mm and feed rate is mm/min.  60000 is the # of milliseconds in a minute
    delay_in_ms = distance / (float)feedRate * 60000;

  }
  
}