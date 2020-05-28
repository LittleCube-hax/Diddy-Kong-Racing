# Makefile to rebuild DKR split image

################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR = build

##################### Compiler Options #######################
#IRIX_ROOT := tools/ido5.3_compiler

ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips-linux-gnu-
else ifeq ($(shell type mips64-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips64-linux-gnu-
else
  CROSS := mips64-elf-
endif

# check that either QEMU_IRIX is set or qemu-irix package installed
#ifndef QEMU_IRIX
#  QEMU_IRIX := $(shell which qemu-irix 2>/dev/null)
#  ifeq (, $(QEMU_IRIX))
#    $(error Please install qemu-irix package or set QEMU_IRIX env var to the full qemu-irix binary path)
#  endif
#endif

AS = $(CROSS)as
#CC = $(CROSS)gcc
CC := $(QEMU_IRIX) -silent -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc
CPP := cpp -P -Wno-trigraphs
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy --pad-to=0xC00000 --gap-fill=0xFF

INCLUDE_FLAGS := -I$(BUILD_DIR)
ASFLAGS = -mtune=vr4300 -march=vr4300 $(INCLUDE_FLAGS)
CFLAGS  = -Wall -O2 -mtune=vr4300 -march=vr4300 -G 0 -c
LDFLAGS = undefined_syms.txt -T $(LD_SCRIPT) -Map $(BUILD_DIR)/dkr.map

####################### Other Tools #########################

# N64 tools
TOOLS_DIR = ./tools
N64CRC = $(TOOLS_DIR)/n64crc
EMULATOR = mupen64plus
EMU_FLAGS = --noosd
LOADER = loader64
LOADER_FLAGS = -vwf

FixPath = $(subst /,,$1)

ASM_DIRS := asm asm/boot asm/assets
SRC_DIRS := src

S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))

BUILD_ASM_DIRS := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/**/))

# Object files
O_FILES := 	$(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o))

######################## Targets #############################

default: all

TARGET = dkr
LD_SCRIPT = $(TARGET).ld

all: $(BUILD_DIR)/$(TARGET).z64

clean: 
	rm -r $(BUILD_DIR)

$(BUILD_DIR):
	mkdir $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

$(BUILD_DIR)/%.o: %.s Makefile $(MAKEFILE_SPLIT) | $(BUILD_DIR) 
	$(AS) $(ASFLAGS) -o $@ $<

#$(BUILD_DIR)/:   Makefile.as | $(BUILD_DIR)
#	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) $(VERSION_CFLAGS) -DBUILD_DIR=$(BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $<

$(BUILD_DIR)/$(TARGET).elf: $(O_FILES) $(BUILD_DIR)/$(LD_SCRIPT)
	$(LD) $(LDFLAGS) -o $@ $(O_FILES) $(LIBS)

$(BUILD_DIR)/$(TARGET).bin: $(BUILD_DIR)/$(TARGET).elf
	$(OBJCOPY) $< $@ -O binary

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).bin
	cp $< $@
	$(N64CRC) $@
	sha1sum -c $(TARGET).sha1

$(BUILD_DIR)/$(TARGET).hex: $(BUILD_DIR)/$(TARGET).z64
	xxd $< > $@

$(BUILD_DIR)/$(TARGET).objdump: $(BUILD_DIR)/$(TARGET).elf
	$(OBJDUMP) -D $< > $@

test: $(BUILD_DIR)/$(TARGET).z64
	$(EMULATOR) $(EMU_FLAGS) $<

load: $(BUILD_DIR)/$(TARGET).z64
	$(LOADER) $(LOADER_FLAGS) $<

.PHONY: all clean default diff test

