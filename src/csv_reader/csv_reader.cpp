#include <iostream>
#include <fstream>
#include <string>

#include "csv_reader.h"

class CSVReader {
  public:
    void open_file(std::string file_name);
};

void CSVReader::open_file(std::string file_name) {
    std::ifstream file;
    file.open("data/train.csv", std::ios_base::in);

    if (!file.is_open()) {
        std::cout << "ERROR! File not found.\n";
    }

    std::cout << "File opened successfully.\n";
}
