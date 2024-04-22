#include <8051.h>

// Pin Definitions
#define StepPin   P3_3     // STEP pin (INT1)
#define DirPin    P3_4     // DIR pin
#define EnablePin P3_5     // ENABLE pin

// Define variables
volatile unsigned char direction = 0;         // Direction of rotation (0: counterclockwise, 1: clockwise)
volatile unsigned char StepCount = 1;        // Step counter variable

// External Interrupt 1 Service Routine
void ex1_isr(void) __interrupt(2) {
    // Check for falling edge on STEP pin
    if (!StepPin) {
        // Change StepCount based on direction
        if (direction) {
            StepCount++;  // Clockwise rotation
        } else {
            StepCount--;  // Counterclockwise rotation
        }

        // Reset StepCount if out of range
        if (StepCount > 8) {
            StepCount = 1;  // Reset step count to 1
        } else if (StepCount < 1) {
            StepCount = 8;  // Reset step count to 8
        }
    }
}

void main(void) {
    // Set Direction, Enable, and Step pins as inputs
    DirPin = 1;      // Input mode for DIR (Direction)
    EnablePin = 1;   // Input mode for ENABLE (Motor Enable)
    StepPin = 1;     // Input mode for STEP (Step Pulse)

    // Set P1.0, P1.1, P1.2, P1.3 as outputs for controlling motor coils
    P1 = P1 | 0x0F;  // Set P1.0-P1.3 as outputs (0x0F = 0b00001111)

    EA = 1;          // Enable global interrupts
    EX1 = 1;         // Enable external interrupt 1 (INT1)
    IT1 = 1;         // Trigger on falling edge for external interrupt 1

    while (1) {
        // Read DIR (Direction) and ENABLE input
        direction = DirPin;    // Update direction based on DIR pin state

        // Check if motor is enabled
        if (!EnablePin) {
            // Motor control based on StepCount (current step)
            switch (StepCount) {
                case 1:
                    P1 = (P1 & 0xF0) | 0b00000001;  // Output pattern for Step 1 on P1.0
                    break;
                case 2:
                    P1 = (P1 & 0xF0) | 0b00000011;  // Output pattern for Step 2 on P1.0 and P1.1
                    break;
                case 3:
                    P1 = (P1 & 0xF0) | 0b00000010;  // Output pattern for Step 3 on P1.1
                    break;
                case 4:
                    P1 = (P1 & 0xF0) | 0b00000110;  // Output pattern for Step 4 on P1.1 and P1.2
                    break;
                case 5:
                    P1 = (P1 & 0xF0) | 0b00000100;  // Output pattern for Step 5 on P1.2
                    break;
                case 6:
                    P1 = (P1 & 0xF0) | 0b00001100;  // Output pattern for Step 6 on P1.2 and P1.3
                    break;
                case 7:
                    P1 = (P1 & 0xF0) | 0b00001000;  // Output pattern for Step 7 on P1.3
                    break;
                case 8:
                    P1 = (P1 & 0xF0) | 0b00001001;  // Output pattern for Step 8 on P1.3 and P1.0
                    break;
                default:
                    P1 &= 0xF0;  // Turn off motor if StepCount is out of range
                    break;
            }
        } else {
            P1 &= 0xF0;  // Turn off motor if not enabled
        }
    }
}
