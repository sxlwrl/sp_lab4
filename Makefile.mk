CC = g++
CFLAGS = -c -Wall
LDFLAGS = -shared

SRC_DIR = src
BUILD_DIR = build
LIB_DIR = lib
BIN_DIR = bin

EXECUTABLE = $(BIN_DIR)/calculator_lab4
LIBRARY = $(LIB_DIR)/libcalculator.so

SRC = $(wildcard $(SRC_DIR)/*.cpp)
OBJ = $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(SRC))

all: directories $(EXECUTABLE) $(LIBRARY)

$(LIBRARY): $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(LIBRARY) $(OBJ)

$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean

directories:
	mkdir -p $(BUILD_DIR) $(LIB_DIR) $(BIN_DIR)

clean:
	rm -rf $(BUILD_DIR)
