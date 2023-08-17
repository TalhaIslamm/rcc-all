#include "rcc_stdlib.h"
using namespace std;

#define IMU_FREQ 500

float hertz_to_s(int hertz) {
    return 1/(float)hertz;
}

int64_t hertz_to_us(int hertz){
    return 1e6/hertz; 
}

int main()
{
    stdio_init_all();    
    sleep_ms(1500);

    if(cyw43_arch_init())
    {
        cout << "CYW43 INIT failed!" << '\n';
    }
    cout << "init worked!" << '\n';

    cyw43_arch_gpio_put(0,1);

    rcc_init_pushbutton();

    Motor motors;
    MotorInit(&motors, RCC_ENA, RCC_ENB, 1000);
    MotorsOn(&motors);

    Left_Odom left;
    Right_Odom right;

    rcc_init_i2c();
    MPU6050 imu; 
    imu.begin(i2c1); 
    imu.calibrate(); 
    sleep_ms(500); 

    int left_count = 0;
    int right_count = 0;
    int rot90deg = 65; 

    float angle_pos = 0.0; 
    float angvel_z = 0.0; 
    float deg_spin = 90.0; 
    float dt_s = hertz_to_s(IMU_FREQ); 
    int dt_us = hertz_to_us(IMU_FREQ); //microseconds

    int64_t current_time = time_us_64(); 
    int64_t previous_time = time_us_64();

    bool stop = false;

    while(true){
        cout << "yo" << '\n';
        cyw43_arch_gpio_put(0, !cyw43_arch_gpio_get(0));
        if(!gpio_get(RCC_PUSHBUTTON))
        {
            MotorPower(&motors, 65, 0);
        }
        
        current_time = time_us_64();
        if((current_time - previous_time) >= dt_us){ 
            imu.update_pico(); 
            angvel_z = imu.getAngVelZ();
            angle_pos += angvel_z*dt_s; 
            previous_time = current_time;
        }

        if(angle_pos <= deg_spin){
            stop = true;
            cout << "IMU saw it first" << '\n';
        }

        if(stop){
            MotorPower(&motors, 0,0);
        }
        sleep_ms(100);
    }
}