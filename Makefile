CC = clang
CFLAGS = -Wall -Wextra -O2 -std=c++23

SRC = src/*.cpp

TARGET = build/text_classifier

all: $(SRC)
	mkdir -p build
	$(CC) -o $(TARGET) $^