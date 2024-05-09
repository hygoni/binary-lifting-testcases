# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -g -std=c11

# Directories
SRC_DIR = src
BIN_DIR = bin

# Automatically list all c files in the src directory
SOURCES = $(wildcard $(SRC_DIR)/*.c)

# Target executables are the names of the source files without the extension
TARGETS = $(patsubst $(SRC_DIR)/%.c,$(BIN_DIR)/%,$(SOURCES))

# Default target
all: $(TARGETS)

# Rule to make each target
$(BIN_DIR)/%: $(SRC_DIR)/%.c
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $< -o $@

# Clean rule to remove all builds
clean:
	rm -f $(BIN_DIR)/*
