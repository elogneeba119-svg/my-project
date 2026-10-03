#include <stdint.h>

// Simple loop delay simulation for microcontrollers
void delay(volatile uint32_t count) {
    while(count--) {
        __asm("nop");
    }
}

int main(void) {
    // A standard infinite loop used in all embedded devices
    while(1) {
        delay(100000);
    }
    return 0;
}
