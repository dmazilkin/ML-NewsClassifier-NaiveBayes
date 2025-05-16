CC = clang++
CFLAGS = -Wall -Wextra -O2 -std=c++23

SRC = src/*.cpp \
 		src/csv_reader/*.cpp

INC = src/csv_reader

TARGET = build/text_classifier

all: $(SRC) $(INC)
	mkdir -p build
	$(CC) -I$(INC) -o $(TARGET) $^