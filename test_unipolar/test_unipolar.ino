const int stepPin = 3;  // Connect this to P3.3 (Step Pin) of 8051
const int dirPin = 4;   // Connect this to P3.4 (Dir Pin) of 8051
const int enablePin = 5; // Connect this to P3.5 (Enable Pin) of 8051

void setup() {
  pinMode(stepPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
  pinMode(enablePin, OUTPUT);
  
  digitalWrite(enablePin, LOW); // Initially enable the motor
}

void loop() {
  // Set direction to clockwise
  digitalWrite(dirPin, HIGH);

  // Make 8 step pulses with a shorter delay between each pulse
  for (int i = 0; i < 4096; i++) {
    digitalWrite(stepPin, HIGH);
    delayMicroseconds(500);  // Delay for 0.5 milliseconds
    digitalWrite(stepPin, LOW);
    delayMicroseconds(500);  // Delay for 0.5 milliseconds
  }

  // Delay for 2 seconds before changing direction
 delay(2000);

  // Set direction to counterclockwise
  digitalWrite(dirPin, LOW);

  // Make 8 step pulses with a shorter delay between each pulse
  for (int i = 0; i < 4096; i++) {
    digitalWrite(stepPin, HIGH);
    delayMicroseconds(500);  // Delay for 0.5 milliseconds
    digitalWrite(stepPin, LOW);
    delayMicroseconds(500);  // Delay for 0.5 milliseconds
  }

  // Delay before repeating the loop (you can adjust this as needed)
  delay(2000);

}
