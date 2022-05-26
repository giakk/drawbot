/*
  
*/

#include <ESP8266WiFi.h>
#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Float64.h>

#define DEBUG 1

// WiFi configuration. 

const char* ssid = "OnePlus 8T";
const char* password = "j3avxdan";
IPAddress server(192,168,66,128);      // Set the rosserial socket ROSCORE SERVER IP address
const uint16_t serverPort = 11411;    // Set the rosserial socket server port

int i = 0;

void setupWiFi() {                    // connect to ROS server as as a client
  if(DEBUG){
    Serial.print("Connecting to ");
    Serial.println(ssid);
    WiFi.begin(ssid, password);
  }
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
  }
  if(DEBUG){
    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
  }
  pinMode(LED_BUILTIN, OUTPUT);
}

ros::NodeHandle nh;
std_msgs::Int16 int_msg;
ros::Publisher pub_test("/chatter", &int_msg);

void setup() {
  
  if(DEBUG) Serial.begin(115200);
  setupWiFi();
  delay(2000);

  nh.getHardware()->setConnection(server, serverPort);
  nh.initNode();
  nh.advertise(pub_test);
  
}

// the loop function runs over and over again forever
void loop() {
  if (nh.connected()) {
    int_msg.data=i;
    pub_test.publish(&int_msg);
    i++;
    delay(2000);
  }

  nh.spinOnce();
  // Loop aprox. every  
  delay(200);  // milliseconds
}
