# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile ASM with /usr/bin/arm-none-eabi-gcc
# compile C with /usr/bin/arm-none-eabi-gcc
# compile CXX with /usr/bin/arm-none-eabi-g++
ASM_DEFINES = -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DCYW43_HOST_NAME=\"\" -DCYW43_LWIP=1 -DLIB_PICO_ASYNC_CONTEXT_THREADSAFE_BACKGROUND=1 -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_CYW43_ARCH=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RAND=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico_w\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Release\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_CYW43_ARCH_THREADSAFE_BACKGROUND=1 -DPICO_MAX_SHARED_IRQ_HANDLERS=6 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_RP2040_USB_DEVICE_UFRAME_FIX=1 -DPICO_TARGET_NAME=\"90degree_imu\" -DPICO_USE_BLOCKED_RAM=0 -DWIFI_PASSWORD=\"\" -DWIFI_SSID=\"\"

ASM_INCLUDES = -I/home/talha_islam/rcc-pico/dev/pico -I/opt/pico-sdk -I/home/talha_islam/rcc-pico/dev/pico/wireless/include -I/home/talha_islam/rcc-pico/dev/pico/include -I/opt/pico-sdk/src/rp2_common/pico_async_context/include -I/opt/pico-sdk/src/rp2_common/pico_platform/include -I/opt/pico-sdk/src/rp2040/hardware_regs/include -I/opt/pico-sdk/src/rp2_common/hardware_base/include -I/opt/pico-sdk/src/common/pico_base/include -I/home/talha_islam/rcc-pico/dev/pico/challenges/generated/pico_base -I/opt/pico-sdk/src/boards/include -I/opt/pico-sdk/src/rp2_common/pico_lwip/include -I/opt/pico-sdk/src/rp2_common/pico_rand/include -I/opt/pico-sdk/src/rp2_common/pico_unique_id/include -I/opt/pico-sdk/src/rp2_common/hardware_flash/include -I/opt/pico-sdk/src/rp2040/hardware_structs/include -I/opt/pico-sdk/src/rp2_common/hardware_claim/include -I/opt/pico-sdk/src/rp2_common/hardware_sync/include -I/opt/pico-sdk/src/rp2_common/pico_bootrom/include -I/opt/pico-sdk/src/rp2_common/hardware_clocks/include -I/opt/pico-sdk/src/rp2_common/hardware_gpio/include -I/opt/pico-sdk/src/rp2_common/hardware_irq/include -I/opt/pico-sdk/src/common/pico_sync/include -I/opt/pico-sdk/src/common/pico_time/include -I/opt/pico-sdk/src/rp2_common/hardware_timer/include -I/opt/pico-sdk/src/common/pico_util/include -I/opt/pico-sdk/src/rp2_common/hardware_resets/include -I/opt/pico-sdk/src/rp2_common/hardware_pll/include -I/opt/pico-sdk/src/rp2_common/hardware_vreg/include -I/opt/pico-sdk/src/rp2_common/hardware_watchdog/include -I/opt/pico-sdk/src/rp2_common/hardware_xosc/include -I/opt/pico-sdk/lib/lwip/src/include -I/opt/pico-sdk/src/rp2_common/pico_cyw43_arch/include -I/opt/pico-sdk/lib/cyw43-driver/src -I/opt/pico-sdk/lib/cyw43-driver/firmware -I/opt/pico-sdk/src/rp2_common/pico_cyw43_driver/cybt_shared_bus -I/opt/pico-sdk/src/rp2_common/hardware_pio/include -I/opt/pico-sdk/src/rp2_common/hardware_dma/include -I/opt/pico-sdk/src/rp2_common/hardware_exception/include -I/opt/pico-sdk/src/rp2_common/pico_cyw43_driver/include -I/home/talha_islam/rcc-pico/dev/pico/challenges/pico-sdk/src/rp2_common/pico_cyw43_driver -I/opt/pico-sdk/src/common/pico_stdlib/include -I/opt/pico-sdk/src/rp2_common/hardware_uart/include -I/opt/pico-sdk/src/rp2_common/hardware_divider/include -I/opt/pico-sdk/src/rp2_common/pico_runtime/include -I/opt/pico-sdk/src/rp2_common/pico_printf/include -I/opt/pico-sdk/src/common/pico_bit_ops/include -I/opt/pico-sdk/src/common/pico_divider/include -I/opt/pico-sdk/src/rp2_common/pico_double/include -I/opt/pico-sdk/src/rp2_common/pico_float/include -I/opt/pico-sdk/src/rp2_common/pico_malloc/include -I/opt/pico-sdk/src/common/pico_binary_info/include -I/opt/pico-sdk/src/rp2_common/pico_stdio/include -I/opt/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/opt/pico-sdk/src/common/pico_usb_reset_interface/include -I/opt/pico-sdk/src/rp2_common/pico_int64_ops/include -I/opt/pico-sdk/src/rp2_common/pico_mem_ops/include -I/opt/pico-sdk/src/rp2_common/boot_stage2/include -I/opt/pico-sdk/lib/tinyusb/src -I/opt/pico-sdk/lib/tinyusb/src/common -I/opt/pico-sdk/lib/tinyusb/hw -I/opt/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/opt/pico-sdk/src/rp2_common/hardware_adc/include -I/opt/pico-sdk/src/rp2_common/hardware_pwm/include -I/home/talha_islam/rcc-pico/lib/serial-packets/.. -I/home/talha_islam/rcc-pico/lib/external -I/opt/pico-sdk/src/rp2_common/hardware_i2c/include

ASM_FLAGS = -mcpu=cortex-m0plus -mthumb -O3 -DNDEBUG -ffunction-sections -fdata-sections

C_DEFINES = -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DCYW43_HOST_NAME=\"\" -DCYW43_LWIP=1 -DLIB_PICO_ASYNC_CONTEXT_THREADSAFE_BACKGROUND=1 -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_CYW43_ARCH=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RAND=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico_w\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Release\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_CYW43_ARCH_THREADSAFE_BACKGROUND=1 -DPICO_MAX_SHARED_IRQ_HANDLERS=6 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_RP2040_USB_DEVICE_UFRAME_FIX=1 -DPICO_TARGET_NAME=\"90degree_imu\" -DPICO_USE_BLOCKED_RAM=0 -DWIFI_PASSWORD=\"\" -DWIFI_SSID=\"\"

C_INCLUDES = -I/home/talha_islam/rcc-pico/dev/pico -I/opt/pico-sdk -I/home/talha_islam/rcc-pico/dev/pico/wireless/include -I/home/talha_islam/rcc-pico/dev/pico/include -I/opt/pico-sdk/src/rp2_common/pico_async_context/include -I/opt/pico-sdk/src/rp2_common/pico_platform/include -I/opt/pico-sdk/src/rp2040/hardware_regs/include -I/opt/pico-sdk/src/rp2_common/hardware_base/include -I/opt/pico-sdk/src/common/pico_base/include -I/home/talha_islam/rcc-pico/dev/pico/challenges/generated/pico_base -I/opt/pico-sdk/src/boards/include -I/opt/pico-sdk/src/rp2_common/pico_lwip/include -I/opt/pico-sdk/src/rp2_common/pico_rand/include -I/opt/pico-sdk/src/rp2_common/pico_unique_id/include -I/opt/pico-sdk/src/rp2_common/hardware_flash/include -I/opt/pico-sdk/src/rp2040/hardware_structs/include -I/opt/pico-sdk/src/rp2_common/hardware_claim/include -I/opt/pico-sdk/src/rp2_common/hardware_sync/include -I/opt/pico-sdk/src/rp2_common/pico_bootrom/include -I/opt/pico-sdk/src/rp2_common/hardware_clocks/include -I/opt/pico-sdk/src/rp2_common/hardware_gpio/include -I/opt/pico-sdk/src/rp2_common/hardware_irq/include -I/opt/pico-sdk/src/common/pico_sync/include -I/opt/pico-sdk/src/common/pico_time/include -I/opt/pico-sdk/src/rp2_common/hardware_timer/include -I/opt/pico-sdk/src/common/pico_util/include -I/opt/pico-sdk/src/rp2_common/hardware_resets/include -I/opt/pico-sdk/src/rp2_common/hardware_pll/include -I/opt/pico-sdk/src/rp2_common/hardware_vreg/include -I/opt/pico-sdk/src/rp2_common/hardware_watchdog/include -I/opt/pico-sdk/src/rp2_common/hardware_xosc/include -I/opt/pico-sdk/lib/lwip/src/include -I/opt/pico-sdk/src/rp2_common/pico_cyw43_arch/include -I/opt/pico-sdk/lib/cyw43-driver/src -I/opt/pico-sdk/lib/cyw43-driver/firmware -I/opt/pico-sdk/src/rp2_common/pico_cyw43_driver/cybt_shared_bus -I/opt/pico-sdk/src/rp2_common/hardware_pio/include -I/opt/pico-sdk/src/rp2_common/hardware_dma/include -I/opt/pico-sdk/src/rp2_common/hardware_exception/include -I/opt/pico-sdk/src/rp2_common/pico_cyw43_driver/include -I/home/talha_islam/rcc-pico/dev/pico/challenges/pico-sdk/src/rp2_common/pico_cyw43_driver -I/opt/pico-sdk/src/common/pico_stdlib/include -I/opt/pico-sdk/src/rp2_common/hardware_uart/include -I/opt/pico-sdk/src/rp2_common/hardware_divider/include -I/opt/pico-sdk/src/rp2_common/pico_runtime/include -I/opt/pico-sdk/src/rp2_common/pico_printf/include -I/opt/pico-sdk/src/common/pico_bit_ops/include -I/opt/pico-sdk/src/common/pico_divider/include -I/opt/pico-sdk/src/rp2_common/pico_double/include -I/opt/pico-sdk/src/rp2_common/pico_float/include -I/opt/pico-sdk/src/rp2_common/pico_malloc/include -I/opt/pico-sdk/src/common/pico_binary_info/include -I/opt/pico-sdk/src/rp2_common/pico_stdio/include -I/opt/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/opt/pico-sdk/src/common/pico_usb_reset_interface/include -I/opt/pico-sdk/src/rp2_common/pico_int64_ops/include -I/opt/pico-sdk/src/rp2_common/pico_mem_ops/include -I/opt/pico-sdk/src/rp2_common/boot_stage2/include -I/opt/pico-sdk/lib/tinyusb/src -I/opt/pico-sdk/lib/tinyusb/src/common -I/opt/pico-sdk/lib/tinyusb/hw -I/opt/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/opt/pico-sdk/src/rp2_common/hardware_adc/include -I/opt/pico-sdk/src/rp2_common/hardware_pwm/include -I/home/talha_islam/rcc-pico/lib/serial-packets/.. -I/home/talha_islam/rcc-pico/lib/external -I/opt/pico-sdk/src/rp2_common/hardware_i2c/include

C_FLAGS = -mcpu=cortex-m0plus -mthumb -O3 -DNDEBUG -ffunction-sections -fdata-sections -std=gnu11

CXX_DEFINES = -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DCYW43_HOST_NAME=\"\" -DCYW43_LWIP=1 -DLIB_PICO_ASYNC_CONTEXT_THREADSAFE_BACKGROUND=1 -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_CYW43_ARCH=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RAND=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico_w\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Release\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_CYW43_ARCH_THREADSAFE_BACKGROUND=1 -DPICO_MAX_SHARED_IRQ_HANDLERS=6 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_RP2040_USB_DEVICE_UFRAME_FIX=1 -DPICO_TARGET_NAME=\"90degree_imu\" -DPICO_USE_BLOCKED_RAM=0 -DWIFI_PASSWORD=\"\" -DWIFI_SSID=\"\"

CXX_INCLUDES = -I/home/talha_islam/rcc-pico/dev/pico -I/opt/pico-sdk -I/home/talha_islam/rcc-pico/dev/pico/wireless/include -I/home/talha_islam/rcc-pico/dev/pico/include -I/opt/pico-sdk/src/rp2_common/pico_async_context/include -I/opt/pico-sdk/src/rp2_common/pico_platform/include -I/opt/pico-sdk/src/rp2040/hardware_regs/include -I/opt/pico-sdk/src/rp2_common/hardware_base/include -I/opt/pico-sdk/src/common/pico_base/include -I/home/talha_islam/rcc-pico/dev/pico/challenges/generated/pico_base -I/opt/pico-sdk/src/boards/include -I/opt/pico-sdk/src/rp2_common/pico_lwip/include -I/opt/pico-sdk/src/rp2_common/pico_rand/include -I/opt/pico-sdk/src/rp2_common/pico_unique_id/include -I/opt/pico-sdk/src/rp2_common/hardware_flash/include -I/opt/pico-sdk/src/rp2040/hardware_structs/include -I/opt/pico-sdk/src/rp2_common/hardware_claim/include -I/opt/pico-sdk/src/rp2_common/hardware_sync/include -I/opt/pico-sdk/src/rp2_common/pico_bootrom/include -I/opt/pico-sdk/src/rp2_common/hardware_clocks/include -I/opt/pico-sdk/src/rp2_common/hardware_gpio/include -I/opt/pico-sdk/src/rp2_common/hardware_irq/include -I/opt/pico-sdk/src/common/pico_sync/include -I/opt/pico-sdk/src/common/pico_time/include -I/opt/pico-sdk/src/rp2_common/hardware_timer/include -I/opt/pico-sdk/src/common/pico_util/include -I/opt/pico-sdk/src/rp2_common/hardware_resets/include -I/opt/pico-sdk/src/rp2_common/hardware_pll/include -I/opt/pico-sdk/src/rp2_common/hardware_vreg/include -I/opt/pico-sdk/src/rp2_common/hardware_watchdog/include -I/opt/pico-sdk/src/rp2_common/hardware_xosc/include -I/opt/pico-sdk/lib/lwip/src/include -I/opt/pico-sdk/src/rp2_common/pico_cyw43_arch/include -I/opt/pico-sdk/lib/cyw43-driver/src -I/opt/pico-sdk/lib/cyw43-driver/firmware -I/opt/pico-sdk/src/rp2_common/pico_cyw43_driver/cybt_shared_bus -I/opt/pico-sdk/src/rp2_common/hardware_pio/include -I/opt/pico-sdk/src/rp2_common/hardware_dma/include -I/opt/pico-sdk/src/rp2_common/hardware_exception/include -I/opt/pico-sdk/src/rp2_common/pico_cyw43_driver/include -I/home/talha_islam/rcc-pico/dev/pico/challenges/pico-sdk/src/rp2_common/pico_cyw43_driver -I/opt/pico-sdk/src/common/pico_stdlib/include -I/opt/pico-sdk/src/rp2_common/hardware_uart/include -I/opt/pico-sdk/src/rp2_common/hardware_divider/include -I/opt/pico-sdk/src/rp2_common/pico_runtime/include -I/opt/pico-sdk/src/rp2_common/pico_printf/include -I/opt/pico-sdk/src/common/pico_bit_ops/include -I/opt/pico-sdk/src/common/pico_divider/include -I/opt/pico-sdk/src/rp2_common/pico_double/include -I/opt/pico-sdk/src/rp2_common/pico_float/include -I/opt/pico-sdk/src/rp2_common/pico_malloc/include -I/opt/pico-sdk/src/common/pico_binary_info/include -I/opt/pico-sdk/src/rp2_common/pico_stdio/include -I/opt/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/opt/pico-sdk/src/common/pico_usb_reset_interface/include -I/opt/pico-sdk/src/rp2_common/pico_int64_ops/include -I/opt/pico-sdk/src/rp2_common/pico_mem_ops/include -I/opt/pico-sdk/src/rp2_common/boot_stage2/include -I/opt/pico-sdk/lib/tinyusb/src -I/opt/pico-sdk/lib/tinyusb/src/common -I/opt/pico-sdk/lib/tinyusb/hw -I/opt/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/opt/pico-sdk/src/rp2_common/hardware_adc/include -I/opt/pico-sdk/src/rp2_common/hardware_pwm/include -I/home/talha_islam/rcc-pico/lib/serial-packets/.. -I/home/talha_islam/rcc-pico/lib/external -I/opt/pico-sdk/src/rp2_common/hardware_i2c/include

CXX_FLAGS = -mcpu=cortex-m0plus -mthumb -O3 -DNDEBUG -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit -std=gnu++17

