  #include <ros.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Float32.h>
#include <drawbot/Custom.h>

// There's still the third parameter of Custom message to use, the bool change. Since we had the problem that we needed to stop for the motor if we are switching from a
// rotation to a forward movement or viceversa due to intertia of wheels. (otherwise one wheel is already spinning and gives an unprecise rotation)

ros::NodeHandle nh; //ROS node handler setup


//------------ PIN ASSIGNEMENT ------------
// Motor encoder output pulse per rotation (change as required)
#define ENC_COUNT_REV 102.0 //Each 102 triggers the wheel makes a complete rotation (.0 since we need a float)
 
// Encoder output to Arduino Interrupt pin
#define ENC_IN 3


//LEFT MOTOR --> M2
// MD10C PWM connected to pin 10
#define PWM_l 6 
// MD10C DIR connected to pin 12
#define DIR_l 7


//RIGHT MOTOR --> M1
// MD10C PWM connected to pin 10
#define PWM_r 5 
// MD10C DIR connected to pin 12
#define DIR_r 4


//-------------- VARIABLE ASSIGNEMENT ------------------
// Pulse count from encoder
volatile long encoderValue = 0;
 
// One-second interval for measurements
   int interval = 100; //sampling time 0.1s
 
// Counters for milliseconds during interval
long previousMillis = 0;
long currentMillis = 0;
 
// Variable for RPM measuerment
int rpm = 0;
int motor_pwm_l = 0;
int motor_pwm_r = 0;
double motor_speed_l = 0; //reference speed in rpm
double motor_speed_r = 0;
int motors_start = 1;
double error_speed_l = 0.0;
double sum_error_speed_l = 0.0;
double damp_fact = 1.0;
double omega = 8.0;
double J=1.6122; //not real value
double B=1.0748; //not real value
double kp=2*damp_fact*omega*J-B;
double ki=J*omega*omega;

const int CW  = HIGH;
const int CCW = LOW;


void messageCb( const drawbot::Custom& toggle_msg){ //just one function to take all the data from the topic Custom
  motor_speed_l = toggle_msg.motor_l;
  motor_speed_r = toggle_msg.motor_r;
  
  // if(motor_pwm_l>=0){
    // digitalWrite(DIR_l, CCW);
  // }else{
    // digitalWrite(DIR_l, CW);
  // }

  // if(motor_pwm_r>=0){
    // digitalWrite(DIR_r, CW);
  // }else{
    // digitalWrite(DIR_r, CCW);
  // }

  //analogWrite(PWM_l, abs(motor_pwm_l)); //I write in the pin PWM (which is the pin 6) the value contained in the 
                                   //topic that is saved inside the variable toogle_msg.motor_l 
                                   
  //analogWrite(PWM_r, abs(motor_pwm_r)); //I write in the pin PWM (which is the pin 6) the value contained in the 
                                   //topic that is saved inside the variable toogle_msg.motor_r                          
}

//Ros subscribers
ros::Subscriber<drawbot::Custom> sub("/chatter", &messageCb);

//Ros publishers
std_msgs::Float32 rpm_value;
ros::Publisher pub_encoder("pub_encoder", &rpm_value); //publisher which publishes the encoder values

void setup()
{
  //----------------ARDUINO
  // Setup Serial Monitor
  Serial.begin(9600); 
  
  // Set encoder as input with internal pullup  
  pinMode(ENC_IN, INPUT_PULLUP); 
 
  // Set PWM and DIR connections as outputs
  pinMode(PWM_l, OUTPUT);
  pinMode(DIR_l, OUTPUT);
  
  pinMode(PWM_r, OUTPUT);
  pinMode(DIR_r, OUTPUT);
  
  // Attach interrupt 
  attachInterrupt(digitalPinToInterrupt(ENC_IN), updateEncoder, RISING);
  
  // Setup initial values for timer
  previousMillis = millis();


  //---------------ROS
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(pub_encoder); //setting the Arduino as a publisher named pub_encoder
  
}

void loop()
{  

  // Update RPM value every second
  currentMillis = millis();
  
  if (currentMillis - previousMillis > interval) { // count a second
    previousMillis = currentMillis;
    rpm_value.data = (float)(encoderValue*60*10/(ENC_COUNT_REV)); //it gives you the rotations per second
    //rpm_value.data = (float)(encoderValue); //it gives you the number of triggers counted in the interval
    
    // Calculate RPM
    pub_encoder.publish( &rpm_value );
   
    
    encoderValue = 0;
  }
  if (motors_start){ //if motor_start is at 1, the motors start moving
    error_speed_l=motor_speed_l-rpm_value.data;
	  motor_pwm_l=kp*error_speed_l+ki*sum_error_speed_l;
	  sum_error_speed_l=sum_error_speed_l+error_speed_l;
  }
  else{
	  error_speed_l=0.0;
	  sum_error_speed_l=0.0;
	  motor_pwm_l=0;
  }
  if(motor_pwm_l<255 & motor_pwm_l>40){
	  analogWrite(PWM_r, motor_pwm_l);
  }
  else{
	  if(motor_pwm_l>255){
		  analogWrite(PWM_r, 255);
	  }
	  else{
		  analogWrite(PWM_r, 0);
	  }
  }
	  
    
  nh.spinOnce();
  //delay(1); //the delay introduces some retards in the correct execution of the time interval division, therefore we removed it
}

void updateEncoder()
{
  // Increment value for each pulse from encoder
  encoderValue++;
}
