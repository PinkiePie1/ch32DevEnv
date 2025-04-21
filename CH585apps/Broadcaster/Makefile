TARGET := Broadcasterx

C_DEFS := \
-D CLK_OSC32K=0 \

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

include ../../ch585.mk
