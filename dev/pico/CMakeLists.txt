cmake_minimum_required(VERSION 3.13)
set(CMAKE_C_STANDARD 11) 
set(CMAKE_CXX_STANDARD 17)


set(PICO_BOARD pico_w) # Force pico_w so onboard led and wireless sdk stuff is built
include(pico_sdk_import.cmake)
project(rcc_pico_dev C CXX ASM)
pico_sdk_init()

add_subdirectory(include)
add_subdirectory(../../lib lib)
add_subdirectory(sensors)
add_subdirectory(util)

macro(make_exec exec_name exec_dir)
    add_executable(${exec_name} ${exec_dir})
    
    pico_add_extra_outputs(${exec_name})

    pico_enable_stdio_usb(${exec_name} 1)
    pico_enable_stdio_uart(${exec_name} 0)
    
# For debugging with openocd (comment out above)
    # pico_enable_stdio_usb(${exec_name} 0)
    # pico_enable_stdio_uart(${exec_name} 1)

# Allow hash-library-sha1 to find endian.h which is in include directory
    target_include_directories(hash-library-sha1 PUBLIC include)

    target_compile_definitions(${exec_name} PUBLIC
                        # Set WIFI parameters with cmake cmd
                            WIFI_SSID=\"${WIFI_SSID}\"
                            WIFI_PASSWORD=\"${WIFI_PASSWORD}\"
                            CYW43_HOST_NAME=\"${CYW43_HOST_NAME}\"

                        # Forced values for WIFI params
                            # WIFI_SSID=<"MY_WIFI_ROUTER"
                            # WIFI_PASSWORD="MY_WIFI_ROUTER_PASS"
                            # CYW43_HOST_NAME="NAME_I_WANT MY PICO TO HAVE ON NETWORK"

                        # Pico Sdk
                            PICO_MAX_SHARED_IRQ_HANDLERS=6 #IMPORTANT!! It seems default shared irq is 2, we need more.
                            
                        # Related to wireless capabilities
                            # PICO_CYW43_ARCH_BACKGROUND
    )

    target_include_directories(${exec_name} PUBLIC
                            ${CMAKE_CURRENT_LIST_DIR}
                            ${PICO_SDK_PATH}
                            wireless/include #TODO: Turn into CMake compatible directory (lib)
                            include
                            
    )

    target_link_libraries(${exec_name}
                            pico_cyw43_arch_lwip_threadsafe_background # For wireless
                            # pico_cyw43_arch_none
                            pico_stdlib
                            hardware_adc
                            hardware_pwm
                            # pico_multicore
                            serial-packets
                            hardware_i2c
                            sensors
                            util
    )



endmacro()

# macro template
# make_exec(arg1 arg2)
# arg1 = desired uf2 name
# arg2 = location of cpp file relative to the current /pico directory 

# Test files
# make_exec(wireless tests/wireless_interface_test.cpp)
# make_exec(mpu6050_test tests/mpu_6050_test.cpp)
# make_exec(lidar_test tests/lidar_test.cpp)
# make_exec(multi_i2c_test tests/multi_i2c_test.cpp)
# make_exec(lidar_test tests/lidar_test.cpp)
# make_exec(multi_i2c_test tests/multi_i2c_test.cpp)
# make_exec(hcsr04_test tests/hcsr04_test.cpp)
# make_exec(odom_test tests/odom_test.cpp)
# make_exec(servo_pot_test tests/servo_pot_test.cpp)
# make_exec(motor_test tests/motor_test.cpp)
# make_exec(frequency_test tests/frequency_test.cpp)
# make_exec(control_test tests/control_test.cpp)
# make_exec(all_sensor_test tests/all_sensor_test.cpp)
# make_exec(vel_control_test tests/vel_control_test.cpp)
# make_exec(conversions challenges/02-functions/1-conversions-sol/1-conversions-sol.cpp)
# make_exec(blink_test tests/blink_test.cpp)
# make_exec(motor_polarity_test tests/motor_polarity_test.cpp)
# make_exec(back_emf_test tests/back_emf_test.cpp)
# make_exec(servo_forward tests/servo_forward.cpp)
# make_exec(back_emf_test tests/back_emf_test.cpp)

# Lessons
#make_exec(helloworld lessons/01/helloworld.cpp)
#make_exec(straight_line straight_line.cpp)
#make_exec(blinking_led blinking_led.cpp)
#make_exec(led_button led_button.cpp)
#make_exec(button_servo button_servo.cpp)
#make_exec(odom_stop odom_stop.cpp)
#make_exec(count_rotation count_rotation.cpp)
#make_exec(integrator challenges/04-sensor2/in-class-example/integrator.cpp)
#make_exec(counts_rotation counts_rotation.cpp)
#make_exec(rotate_360 challenges/rotate_360.cpp)
#make_exec(search_object challenges/search_object.cpp)
#make_exec(brake challenges/brake.cpp)
#make_exec(spinning_speed challenges/spinning_speed.cpp)
#make_exec(90degree_imu challenges/90degree_imu.cpp)
#make_exec(statemachine_blinkled challenges/statemachine_blinkled.cpp)
#make_exec(dist_control build/dist_control.cpp)
#make_exec(follow_distance build/follow_distance.cpp)
#make_exec(pid_controller build/pid_controller.cpp)
#make_exec(travel_straight200 build/travel_straight200.cpp)
#make_exec(path_following build/path_following.cpp)
#make_exec(target_acquired final/target_acquired.cpp)
make_exec(targetacquired2 final/targetacquired2.cpp)
#make_exec(motor_test tests/motor_test.cpp)
#make_exec(servo using-robot-examples/servo.cpp)