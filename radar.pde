import processing.serial.*;
import java.awt.event.KeyEvent;
import java.io.IOException;

Serial myPort; 
String data = "";
float Angle, Distance;
int iAngle, iDistance;

void setup() {
  size (1200, 700); // Set your screen size
  smooth();
  // Ensure the COM port matches the one in your Arduino IDE
  myPort = new Serial(this, "COM9", 9600); 
  myPort.bufferUntil('.'); 
}

void draw() {
  fill(98, 245, 31);
  noStroke();
  fill(0, 4); 
  rect(0, 0, width, height-height*0.065); 
  
  drawRadar(); 
  drawLine();
  drawObject();
}

void serialEvent (Serial myPort) {
  data = myPort.readStringUntil('.');
  data = data.substring(0, data.length()-1);
  
  int index1 = data.indexOf(",");
  String angleStr = data.substring(0, index1);
  String distanceStr = data.substring(index1+1, data.length());
  
  iAngle = int(angleStr);
  iDistance = int(distanceStr);
}

void drawRadar() {
  pushMatrix();
  translate(width/2, height-height*0.074);
  noFill();
  strokeWeight(2);
  stroke(98, 245, 31);
  // Draw the arcs
  arc(0, 0, (width-width*0.0625), (width-width*0.0625), PI, TWO_PI);
  arc(0, 0, (width-width*0.27), (width-width*0.27), PI, TWO_PI);
  arc(0, 0, (width-width*0.479), (width-width*0.479), PI, TWO_PI);
  arc(0, 0, (width-width*0.687), (width-width*0.687), PI, TWO_PI);
  popMatrix();
}

void drawObject() {
  pushMatrix();
  translate(width/2, height-height*0.074);
  strokeWeight(9);
  stroke(255, 10, 10); // Red color for object
  float pixleDist = iDistance*((width-width*0.507)*0.0225);
  if(iDistance < 40){
    line(pixleDist*cos(radians(iAngle)), -pixleDist*sin(radians(iAngle)), 
         (width-width*0.505)*cos(radians(iAngle)), -(width-width*0.505)*sin(radians(iAngle)));
  }
  popMatrix();
}

void drawLine() {
  pushMatrix();
  strokeWeight(9);
  stroke(30, 250, 60);
  translate(width/2, height-height*0.074);
  line(0, 0, (width-width*0.505)*cos(radians(iAngle)), -(width-width*0.505)*sin(radians(iAngle)));
  popMatrix();
}
