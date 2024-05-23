# Compiler and compiler flags
CC = clang-17
CFLAGS = -Wall -g -std=c11

# Lifter and lifter flags
LIFT = ~/retdec-install/bin/retdec-decompiler

# Directories
SRC_DIR = src
BIN_DIR = bin
LLVMIR_DIR = compile-ir
LIFTIR_DIR = lift-ir

# Automatically list all C files in the src directory
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
# Target executables are the names of the source files without the extension
BIN_TARGETS = $(patsubst $(SRC_DIR)/%.c,$(BIN_DIR)/%,$(SRC_FILES))
# LLVM IR files
LLVMIR_TARGETS = $(patsubst $(SRC_DIR)/%.c,$(LLVMIR_DIR)/%.ll,$(SRC_FILES))
# Lifted IR files
LIFTIR_TARGETS = $(patsubst $(BIN_DIR)/%,$(LIFTIR_DIR)/%.c,$(wildcard $(BIN_DIR)/*))

# Default target
all: compile lift

compile: $(BIN_TARGETS) $(LLVMIR_TARGETS) 
# Rule to make each executable target
$(BIN_DIR)/%: $(SRC_DIR)/%.c
	@mkdir -p $(BIN_DIR)
	-$(CC) $(CFLAGS) $< -o $@

# Rule to compile C to LLVM IR
$(LLVMIR_DIR)/%.ll: $(SRC_DIR)/%.c
	@mkdir -p $(LLVMIR_DIR)
	-$(CC) $(CFLAGS) -emit-llvm -S $< -o $@

# Default target
lift: $(LIFTIR_TARGETS)

# Rule to lift binary to decompiled C
$(LIFTIR_DIR)/%.c: $(BIN_DIR)/%
	@mkdir -p $(LIFTIR_DIR)
	-$(LIFT) --mode bin --output $@ $<

# Clean rule to remove all builds
clean:
	rm -rf $(BIN_DIR)
	rm -rf $(LLVMIR_DIR)
	rm -rf $(LIFTIR_DIR)
