# Aurduino-Radar-system
An Arduino radar system project is a DIY prototype that uses an ultrasonic sensor and a servo motor to mimic radar scanning, displaying detected objects on a computer screen via Processing software.

Components Used
-------------------------
Arduino UNO
HC-SR04 Ultrasonic Sensor
Servo Motor
Jumper Wires
Breadboard
Buzzer

Working Principle
-------------------------
The servo motor rotates the ultrasonic sensor from 0° to 180°. The sensor continuously measures distance and sends data to Arduino. The data is visualized using Processing IDE.

Features
-----------------------
Real-time object detection
Rotating radar visualization
Distance measurement
Low-cost implementation
Circuit Diagram



Installation
----------------------
Upload Arduino code using Arduino IDE
Connect hardware properly
Run Processing visualization code
Open serial monitor/output screen
Applications
Obstacle detection

Connections
----------------
1..HC-SR04 to Arduino
 
HC-SR04 Pin         Arduino Pin
VCC                   5v
GND                  GND
Trig                Pin 10
Echo                Pin 11

2..Servo Motor to Arduino
Servo Pin          Arduino Pin
Red                   5V
Brown/Black           GND
Orange/Yellow        Pin 12


Process to Build
---------------------------

Step 1 — Assemble Circuit
Connect sensor and servo to Arduino using jumper wires.

Step 2 — Install Arduino IDE
Download: arduino.cc⁠�

Step 3 — Upload Code
Select board: Arduino Uno
Select COM port
Upload code

Step 4 — Test Sensor
Open Serial Monitor and check distance values.

Step 5 — Create Radar Visualization
Use Processing software to make radar animation.
Download: processing.org⁠�

circuit daigram
+-------------------+
        |    Arduino Uno    |
        |                   |
        | D10 ---- TRIG     |
        | D11 ---- ECHO     |
        | D12 ---- Servo    |
        | 5V  ---- VCC      |
        | GND ---- GND      |
        +-------------------+
                 |
      ---------------------
      |                   |
+-------------+    +-------------+
| HC-SR04     |    | Servo Motor |
| Ultrasonic  |    | SG90        |
+-------------+    +-------------+


Output
-------------
When an object comes in front:
Sensor detects distance
Radar line scans area
Object appears on screen
