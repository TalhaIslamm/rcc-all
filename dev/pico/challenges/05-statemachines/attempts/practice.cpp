#include "rcc_stdlib.h"
using namespace std;


int state
uint32_t cur, prev;
uint32_t dt0=10000000
uint32_t dt1 = 3000000

int main() {
    stdio_init_all();
    cur = time_us_32;
    s0enter = s1enter = s2enter = cur;

    while(true) {
        cur = time_us_32

        if (state == 0) {
            if (cur - s0enter >= dt0) {
                state = 1;
                s1enter = cur;
            }
        }

        if(state = 1) {
            cout << "Spin clockwise"
            if (cur - s1enter >= dt1) {
                state = 2;
                s2enter = cur;
            }
        }

        if(state = 1) {
            cout << "Spin counter clockwise"
            if (cur - s2enter >= dt1) {
                state = 1;
                s1enter = cur;
                }
            }
        }
    }