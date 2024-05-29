# Compiler and compiler flags
CC = clang
CFLAGS = -Wall -g -std=c17
PASS = /home/kimseongyu925/BinAIDA/pass/build/transform/TransformPass.so

# Lifter and lifter flags
LIFT = ~/retdec-install/bin/retdec-decompiler

# Directories
SRC_DIR = src
BIN_DIR = bin
LLVMIR_DIR = compile-ir
LIFTIR_DIR = lift-ir
MASK_COMPILEIR_DIR = mask-compile-ir
MASK_LIFTIR_DIR = mask-lift-ir

# Automatically list all C files in the src directory
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
# Target executables are the names of the source files without the extension
BIN_TARGETS = $(patsubst $(SRC_DIR)/%.c,$(BIN_DIR)/%,$(SRC_FILES))
# LLVM IR files
LLVMIR_TARGETS = $(patsubst $(SRC_DIR)/%.c,$(LLVMIR_DIR)/%.ll,$(SRC_FILES))
# Lifted IR files
LIFTIR_TARGETS = $(patsubst $(BIN_DIR)/%,$(LIFTIR_DIR)/%.c,$(wildcard $(BIN_DIR)/*))

SED_TARGETS = $(patsubst $(LIFTIR_DIR)/%.c,$(LIFTIR_DIR)/%.ll,$(wildcard $(LIFTIR_DIR)/*))

MASK_COMPILEIR_TARGETS = $(patsubst $(LLVMIR_DIR)/%.ll,$(MASK_COMPILEIR_DIR)/%.ll,$(wildcard $(LLVMIR_DIR)/*.ll))

MASK_LIFTIR_TARGETS = $(patsubst $(LIFTIR_DIR)/%.ll,$(MASK_LIFTIR_DIR)/%.ll,$(wildcard $(LIFTIR_DIR)/*.ll))

# Default target
all: compile lift pass

compile: $(BIN_TARGETS) $(LLVMIR_TARGETS) 
# Rule to make each executable target
$(BIN_DIR)/%: $(SRC_DIR)/%.c
	@mkdir -p $(BIN_DIR)
	-$(CC) $(CFLAGS) $< -o $@

# Rule to compile C to LLVM IR
$(LLVMIR_DIR)/%.ll: $(SRC_DIR)/%.c
	@mkdir -p $(LLVMIR_DIR)
	-$(CC) -emit-llvm -S $< -o $@

# Default target
lift: $(LIFTIR_TARGETS)

# Rule to lift binary to decompiled C
$(LIFTIR_DIR)/%.c: $(BIN_DIR)/%
	@mkdir -p $(LIFTIR_DIR)
	-$(LIFT) $< -o $@

sed: $(SED_TARGETS)

$(LIFTIR_DIR)/%.ll: $(LIFTIR_DIR)/%.c
	sed -i '/uselistorder/d' $@

pass: $(MASK_COMPILEIR_TARGETS) $(MASK_LIFTIR_TARGETS)

$(MASK_COMPILEIR_DIR)/%.ll: $(LLVMIR_DIR)/%.ll
	@mkdir -p $(MASK_COMPILEIR_DIR)
	-opt -load-pass-plugin $(PASS) -passes="getInfo" --disable-verify -S $< -o $@
	-sed -i '/%MASK = type/d' $@

$(MASK_LIFTIR_DIR)/%.ll: $(LIFTIR_DIR)/%.ll
	@mkdir -p $(MASK_LIFTIR_DIR)
	-opt -load-pass-plugin $(PASS) -passes="getInfo" --disable-verify -S $< -o $@
	-sed -i '/%MASK = type/d' $@

# Clean rule to remove all builds
clean:
	rm -rf $(BIN_DIR)
	rm -rf $(LLVMIR_DIR)
	rm -rf $(LIFTIR_DIR)
	rm -rf $(MASK_COMPILEIR_DIR)
	rm -rf $(MASK_LIFTIR_DIR)
