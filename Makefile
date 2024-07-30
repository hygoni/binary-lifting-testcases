# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -g -std=c11

# Directories
SRC_DIR = src
BIN_DIR = bin
LIFT_DIR = lift

SOURCES := $(wildcard $(SRC_DIR)/*.c)
OBJECTS := $(patsubst $(SRC_DIR)/%.c,$(BIN_DIR)/%,$(SOURCES))

.PHONY: all compile clean diff

all: compile

compile: $(OBJECTS)

$(BIN_DIR)/%: $(SRC_DIR)/%.c
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $@ $<

diff:
	@echo $(shell comm -23 <(ls $(BIN_DIR) | sed 's/\.[^.]*$$//' | sort -u) <(ls $(LIFT_DIR) | sed 's/\.[^.]*$$//' | sort -u))

clean:
	rm -rf $(BIN_DIR)/*
	rm -rf $(LIFT_DIR)/*
