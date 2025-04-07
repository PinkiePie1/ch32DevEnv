SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
BUILD_DIR = objs
$(info lib file location: $(SELF_DIR))
$(info build output dir at : $(BUILD_DIR))

######################################
# Source
######################################
# C sources
C_SOURCES +=	\
$(wildcard $(SELF_DIR)CH585Libs/StdPeriphDriver/*.c) 

# c sources here
C_SOURCES += \
$(wildcard ./*.c)

# ASM sources
ASM_SOURCES += $(SELF_DIR)CH585Libs/Startup/startup_CH585.S



######################################
# Includes
######################################
# C includes
C_INCLUDES +=	\
-I"$(SELF_DIR)CH585Libs/StdPeriphDriver/inc" \
-I"$(SELF_DIR)CH585Libs/Startup" \
-I"$(SELF_DIR)CH585Libs/RVMSIS" \



# add your includes here
C_INCLUDES += \
-I"./"\
-I"./inc"


# AS includes
AS_INCLUDES += -I"$(SELF_DIR)CH585Libs/Startup" 


# optimization
OPT = -Os

######################################
# Defines
######################################
# macros for gcc
C_DEFS ?=

# AS defines
AS_DEFS = $(C_DEFS)


#######################################
# Linker
#######################################
# link script
LDSCRIPT ?= $(SELF_DIR)CH585Libs/Ld/Link.ld

$(info using LD script: $(LDSCRIPT))


PATH_TO_TOOLCHAIN = /mnt/c/MRStoolChain/'RISC-V Embedded GCC12'/bin/
#######################################
# Binaries
#######################################
PREFIX = $(PATH_TO_TOOLCHAIN)riscv-wch-elf-
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc
CP = $(PREFIX)objcopy
AR = $(PREFIX)ar
SZ = $(PREFIX)size --format=berkeley
OD = $(PREFIX)objdump
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 

#######################################
# Flags
#######################################
# architecture
ARCH = -march=rv32imc_zba_zbb_zbc_zbs_xw -mabi=ilp32

# compile gcc flags
CFLAGS = $(ARCH)
CFLAGS += -mcmodel=medany -msmall-data-limit=8 -msave-restore -fmax-errors=20 $(OPT)\
-fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections\
-fno-common
CFLAGS += -g
CFLAGS += $(C_INCLUDES) $(C_DEFS)
CFLAGS += -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)"

ASFLAGS = $(ARCH)
ASFLAGS += -mcmodel=medany -msmall-data-limit=8 -msave-restore -fmax-errors=20 $(OPT)\
-fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections\
-fno-common $(AS_DEFS)
ASFLAGS += -g -x assembler-with-cpp 
ASFLAGS += $(AS_INCLUDES)
ASFLAGS += -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)"



# libraries
LIBS = -lprintf -lCH58xBLE -lISP585 
LIBDIR = -L"$(SELF_DIR)CH585Libs/BLELIB" -L"../" -L"$(SELF_DIR)CH585Libs/StdPeriphDriver" 
LDFLAGS = $(ARCH) $(PERIFLIB_SOURCES)

LDFLAGS += -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -fmax-errors=20\
-Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections\
-fno-common --param=highcode-gen-section-name=1 -g\
-T"$(LDSCRIPT)" \
-nostartfiles -Xlinker --gc-sections $(LIBDIR)\
-Xlinker --print-memory-usage\
-Wl,-Map,$(BUILD_DIR)/$(TARGET).map\
--specs=nano.specs --specs=nosys.specs\


# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin




#######################################
# Build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.S=.o)))
vpath %.S $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(info Compiling c source: $<)
	@$(CC) $(CFLAGS) -c -o "$@" "$<"

$(BUILD_DIR)/%.o: %.S Makefile | $(BUILD_DIR)
	$(info Compiling assembler source: $<)
	@$(AS) $(ASFLAGS) -c -o "$@" "$<"

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(info Linking: $@)
	@$(CC) $(LDFLAGS) -o $@ $(OBJECTS) $(LIBS)
	@$(OD) --all-headers --demangle --disassemble -M xw $(BUILD_DIR)/$(TARGET).elf > $(BUILD_DIR)/$(TARGET).lst 
	@$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(info Generating hex file: $@)
	@$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(info Generating bin file: $@)
	@$(BIN) $< $@	
	
$(BUILD_DIR):
	@mkdir -p $@

#######################################
# Clean up
#######################################

clean:
	-rm -fR .dep $(BUILD_DIR)

clangd :
	make clean
	touch .clangd
	echo "CompileFlags:" > .clangd
	echo "  Remove: [-march=*, -mabi=*, -mcpu=*]" >> .clangd
	bear -- make build

clangd_clean :
	rm -f compile_commands.json
	rm -rf .cache

build: $(BUILD_DIR)/$(TARGET).bin
