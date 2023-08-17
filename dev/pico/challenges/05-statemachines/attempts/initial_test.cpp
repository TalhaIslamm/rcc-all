#include "rcc_stdlib.h"
using namespace std;


typedef enum{
    CHECK_VALUE,
    NEW_ENUM1,
    NEW_ENUM2,
    NEW_ENUM3,
    FWD,
    STOP,
    REV
} state_t;

int main(){
    stdio_init_all();
    sleep_ms(1500);
    cyw43_arch_init();
    cyw43_arch_gpio_put(0, 1); //turns on led

    //init robot's sensors and actuators here~~

    //rename state_name to something more informative
    state_t state_name = CHECK_VALUE;
    int val;


    while(true){
        switch(state_name){
            case CHECK_VALUE:
                //do st
                break;

            case FWD:

        }
    }
}