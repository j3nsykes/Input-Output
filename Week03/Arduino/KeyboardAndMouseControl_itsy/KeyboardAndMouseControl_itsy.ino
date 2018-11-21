/*
  KeyboardAndMouseControl

  Controls the mouse from five pushbuttons on an Arduino Leonardo, Micro or Due.

  Hardware:
  - five pushbuttons attached to D2, D3, D4, D5, D6

  The mouse movement is always relative. This sketch reads four pushbuttons, and
  uses them to set the movement of the mouse.

  WARNING: When you use the Mouse.move() command, the Arduino takes over your
  mouse! Make sure you have control before you use the mouse commands.

  created 15 Mar 2012
  modified 27 Mar 2012
  by Tom Igoe

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/KeyboardAndMouseControl
*/

#include "Keyboard.h"
#include "Mouse.h"

// set pin numbers for the five buttons:
const int upButton = 12;
const int downButton = 11;
const int leftButton = 10;
const int rightButton = 9;
const int mouseButton = 7;

void setup() { // initialize the buttons' inputs:
  pinMode(upButton, INPUT_PULLUP);
  pinMode(downButton, INPUT_PULLUP);
  pinMode(leftButton, INPUT_PULLUP);
  pinMode(rightButton, INPUT_PULLUP);
  pinMode(mouseButton, INPUT_PULLUP);

  Serial.begin(9600);
  // initialize mouse control:
  Mouse.begin();
  Keyboard.begin();
}

void loop() {
  // use serial input to control the mouse:
  if (Serial.available() > 0) {
    char inChar = Serial.read();

    switch (inChar) {
      case KEY_UP_ARROW:
        // move mouse up
        Mouse.move(0, -40);
        break;
      case KEY_DOWN_ARROW:
        // move mouse down
        Mouse.move(0, 40);
        break;
      case KEY_LEFT_ARROW:
        // move mouse left
        Mouse.move(-40, 0);
        break;
      case KEY_RIGHT_ARROW:
        // move mouse right
        Mouse.move(40, 0);
        break;
      case 'm':
        // perform mouse left click
        Mouse.click(MOUSE_LEFT);
        break;
    }
  }

  // use the pushbuttons to control the keyboard:
  if (digitalRead(upButton) == LOW) {
    Keyboard.write(KEY_UP_ARROW);
  }
  if (digitalRead(downButton) == LOW) {
    Keyboard.write(KEY_DOWN_ARROW);
  }
  if (digitalRead(leftButton) == LOW) {
    Keyboard.write(KEY_LEFT_ARROW);
  }
  if (digitalRead(rightButton) == LOW) {
    Keyboard.write(KEY_RIGHT_ARROW);
  }
  if (digitalRead(mouseButton) == LOW) {
    Keyboard.write('m');
  }

}
