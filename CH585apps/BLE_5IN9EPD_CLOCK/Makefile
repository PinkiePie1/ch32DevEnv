TARGET := Peripheral_BLE
C_DEFS := \
-D CLK_OSC32K=0 \
-D DISCARD_LOWRAM_SLEEP=1 \

#使用高32k优先的链接器脚本
LDSCRIPT := ./Link32k.ld

#BLE相关的库的头文件
C_INCLUDES := \
-I"../../CH585Libs/BLELIB" \
-I"../../CH585Libs/HAL/include" \
-I"./APP/include"\
-I"./Profile/include"\
-I"./EPDdriver"

#BLE相关的库
C_SOURCES := \
$(wildcard ./APP/*.c) \
$(wildcard ./Profile/*.c) \
$(wildcard ../../CH585Libs/HAL/*.c) \
$(wildcard ../../CH585Libs/BLELIB/*.c) \
$(wildcard ./EPDdriver/*.c)

#还是BLE相关的库
ASM_SOURCES := ../../CH585Libs/BLELIB/ble_task_scheduler.S

AS_INCLUDES += -I"../../CH585Libs/BLELIB"

#-D DEBUG=0

include ../../ch585.mk
