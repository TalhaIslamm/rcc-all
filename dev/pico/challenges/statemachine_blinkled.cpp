#include "rcc_stdlib.h"
using namespace std;

typedef enum {
    OFF,
    ON
} state_t;

int64_t current_time = time_us_64(); 
int64_t previous_time = time_us_64();

int microsecond_time = 400000;

int main()
{   
    stdio_init_all();
    cyw43_arch_init(); 
    cyw43_arch_gpio_put(0,1);

    rcc_init_pushbutton();
    rcc_init_potentiometer();

    state_t state = OFF;

    while(true){
        int64_t current_time = time_us_64();
        switch(state){
            case OFF:
                cyw43_arch_gpio_put(0, 0);
                if(current_time - previous_time >= microsecond_time){
                    state = ON;
                    previous_time = current_time;
                }
                break;
            case ON:
                cyw43_arch_gpio_put(0, 1);
                if(current_time - previous_time >= microsecond_time){
                    state = OFF;
                    previous_time = current_time;
                }
                break;            
        }
    }


}