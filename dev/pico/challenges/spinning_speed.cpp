#include "rcc_stdlib.h"
using namespace std;

int main() {
    stdio_init_all();
    sleep_ms(1500);
    cyw43_arch_init();
    cyw43_arch_gpio_put(0, 1); //turns on led

    rcc_init_i2c(); //setup i2c

    Motor motors; //struct setup
    MotorInit(&motors, RCC_ENA, RCC_ENB, 1000); //setup 
    MotorsOn(&motors); 

    MPU6050 imu; //struct
    imu.begin(i2c1); 
    imu.calibrate(); 

    while(true) 
    {
        MotorPower(&motors, -50, 50);
        imu.update_pico();
        float angvel_z = imu.getAngVelZ();
        cout <<" Rotation speed: " << angvel_z << "\n";
        sleep_ms(100);
    }
}