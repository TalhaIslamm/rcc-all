#include "rcc_stdlib.h"
using namespace std; //Every code starts with these


void print_val_n_times(int val, int n) {
    int i = 0;
    while( i < n) {
        cout << "val: " << val << "'\n";
        i +=1;
    }
}

void compare(int a,int b) {
    if(a < b) {
        cout << "a < b\n";
    }
    else if(a > b) {
        cout << "a > b\n";
    }
    else if(a == b) {
        cout <<"a = b\n";
    }
}
void compare_led(int a,int b) {
    if(a < b) {
        cout << "a < b\n";
        cyw43_arch_gpio_put(0, false);
    }
    else if(a > b) {
        cout << "a > b\n";
        cyw43_arch_gpio_put(0, true);
    }
    else if(a == b) {
        cout <<"a = b\n";
    }
}

int main() {
    stdio_init_all(); //Lets pico know its being used in this

    // cyw43_arch_gpio_put(0, true); //Turns LED on

//---this is only once
    int x_loc = 0;
    int y_loc = 20;

    
    while(true); { //Lets pico go on forever until USER tells it to stop
        //Prints value of x_loc
        print_val_n_times(x_loc, x_loc);
        x_loc+=1;
        sleep_ms(500);
    }
}