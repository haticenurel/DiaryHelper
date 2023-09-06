#ifndef DIARY_HELPER_H
#define DIARY_HELPER_H

#include <iostream>
#include <fstream>
#include <string>
#include <ctime>

class DiaryHelper {
public:
    static void SaveTextToFile(const std::string& text);
    static std::string GetInput();
    
};

#endif  // DIARY_HELPER_H
