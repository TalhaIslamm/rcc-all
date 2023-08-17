#include "rcc_stdlib.h"
using namespace std;

// Creating a simple file to make calculations for triangles!

int hypotenuse;

double find_hypotenuse(int a, int b) {
    double c = sqrt(a*a + b*b);
    return c;
}

void print_triangle(int a, int b, double c) {
    printf("a: %d\n", a);
    printf("b: %d\n", b);
    cout << "c: " << c;
}

int main(void)
{
    stdio_init_all();

    if(cyw43_arch_init())
    {
        cout << "CYW43 init failed!" << "\n";
    }

    cyw43_arch_gpio_put(0, true);

    double a = 3;
    double b = 4;
    while(true)
    {
        cyw43_arch_gpio_put(0, !(cyw43_arch_gpio_get(0)));

        hypotenuse = find_hypotenuse(a, b);
        print_triangle(a, b, hypotenuse);

        sleep_ms(100)

    }
}
