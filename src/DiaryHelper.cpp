#include "../include/DiaryHelper.h"
#include <iostream>
#include <fstream>
#include <string>
#include <ctime>
#include <sstream>
#include <iomanip>


namespace {
    const std::string kFilePath = "/Users/haticenurel/cppworkspace/text.txt";
    const int kMaxTextLength = 100;
    
}

std::string GetCurrentTime() {
    const auto currentTime = std::time(nullptr);
    struct tm localTime;
    localtime_r(&currentTime, &localTime);

    std::stringstream ss;
    ss << std::put_time(&localTime, "%d.%m.%Y %H:%M:%S");
    return ss.str();
}

bool ValidateText(const std::string_view& text) {
    if (text.empty()) {
        std::cout << "No text entered. Exiting..." << std::endl;
        return false;
    }

    if (text.length() > kMaxTextLength) {
        std::cout << "Text too long. Exiting..." << std::endl;
        return false;
    }

    if (text.find(' ') == std::string::npos) {
        std::cout << "Text must contain at least one space. Exiting..." << std::endl;
        return false;
    }

    return true;
}

void DiaryHelper::SaveTextToFile(const std::string& text) {
    if (!ValidateText(text)) {
        return;
    }

    std::ofstream file(kFilePath, std::ios::app);
    if (!file.bad()) {
        const std::string currentTime = GetCurrentTime();
        file << currentTime << ' ' << text << std::endl;
        file.close();
    } else {
        std::cerr << "Failed to open the file: " << kFilePath << std::endl;
    }
}

std::string DiaryHelper::GetInput() {
    std::string input;
    std::getline(std::cin, input);
    return input;
}
