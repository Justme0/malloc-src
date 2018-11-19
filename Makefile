CC = gcc

# To solve warning "conflicting types for built-in function", add flag -fno-builtin-*
CFALGS = -g -Wall -Wextra -std=c11

OBJS := $(patsubst %.c,%.o,$(wildcard *.c))
HEADS := $(wildcard *.h)
TARGET := test

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $^ -o $@

%.o: %.c $(HEADS)
	$(CC) -c $(CFALGS) $< -o $@

.PHONY: clean

clean:
	rm -rf $(OBJS) $(TARGET)
