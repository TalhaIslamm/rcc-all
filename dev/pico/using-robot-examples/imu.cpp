#include "rcc_stdlib.h"
using namespace std;

int main() {
    stdio_init_all();
    sleep_ms(1500);
    cyw43_arch_init();
    cyw43_arch_gpio_put(0, 1); //turns on led

    rcc_init_i2c(); //setup i2c

    MPU6050 imu; //class
    imu.begin(i2c1); //adds to i2c1
    imu.calibrate(); //hold robot still

    while(true) 
    {
        imu.update_pico(); //updates data
        float angvel_z = imu.getAngVelZ(); //call function to get data
        cout <<" z rotation: " << angvel_z << "\n";
        sleep_ms(100);
    }
}
