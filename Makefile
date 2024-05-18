# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -g -std=c11
MCTOLL = /home/hi-jin/build/bin/llvm-mctoll

# Directories
SRC_DIR = src
BIN_DIR = bin
LIFT_DIR = lift

SOURCES := $(wildcard $(SRC_DIR)/*.c)
OBJECTS := $(patsubst $(SRC_DIR)/%.c,$(BIN_DIR)/%,$(SOURCES))

.PHONY: all compile clean mctoll-lift diff

all: compile mctoll-lift

compile: $(OBJECTS)

$(BIN_DIR)/%: $(SRC_DIR)/%.c
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $@ $<

mctoll-lift:
	@mkdir -p $(LIFT_DIR)
	@for file in $(BIN_DIR)/*; do \
		$(MCTOLL) -o $${file}.ll -d -I /usr/include/stdio.h -I /usr/include/stdlib.h -I /usr/include/string.h -I /usr/include/math.h -I /usr/include/time.h $$file; \
		mv $${file}.ll $(LIFT_DIR)/; \
	done

diff:
	@echo $(shell comm -23 <(ls $(BIN_DIR) | sed 's/\.[^.]*$$//' | sort -u) <(ls $(LIFT_DIR) | sed 's/\.[^.]*$$//' | sort -u))

clean:
	rm -rf $(BIN_DIR)/*
	rm -rf $(LIFT_DIR)/*