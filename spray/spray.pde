// Automatisches Raumspray
// 2011 by DomesticHacks
// http://www.youtube.com/domestichacks
// http://domestichacks.info/


#include <Servo.h> 
 
// Alle 30 Minuten sprühen
int interval = 30;

 
Servo myservo;
unsigned long currentTime = 0;
unsigned long maxTime = 0;
 
void setup() 
{ 
  myservo.attach(9);
  servonullpos();
  maxTime = interval * 60;
} 
 
 
void loop() 
{ 
  delay(1000);
  currentTime++;
  if(currentTime >= maxTime){
    spray(2);
    currentTime = 0;
  }
} 

void servonullpos(){
  myservo.write(95);
}

void spray(int count){
  for(int a=0;a<count;a++){
    myservo.write(20);
    delay(500);
    myservo.write(95);
    delay(2000);
  }
}
