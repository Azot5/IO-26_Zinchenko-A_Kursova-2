CC = g++
CFLAGS = -Iinclude -std=c++17 -Wall -Werror
LDFLAGS = -L. -lcalculator

SRC_DIR = src
INCLUDE_DIR = include
BUILD_DIR = build

SOURCES = $(SRC_DIR)/calculator.cpp $(SRC_DIR)/main.cpp
OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

LIBRARY = libcalculator.a
EXECUTABLE = calculator_app

.PHONY: all clean

all: $(LIBRARY) $(EXECUTABLE)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp $(INCLUDE_DIR)/calculator.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBRARY): $(BUILD_DIR)/calculator.o
	ar rcs $@ $^

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(BUILD_DIR)/main.o -o $@ $(LDFLAGS)

clean:
	rm -rf $(BUILD_DIR) $(LIBRARY) $(EXECUTABLE)
