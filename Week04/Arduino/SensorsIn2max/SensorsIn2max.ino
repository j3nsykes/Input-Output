

int sensorPin = A1;

void setup() {
  Serial.begin(115200); // Open serial monitor at 115200 baud to see ping results.

}

void loop() {
  int sensor=analogRead(sensorPin);
  Serial.print("Sensor: ");
  Serial.println(sensor);// print the distance
  delay(100);
}
