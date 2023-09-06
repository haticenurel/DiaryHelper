#include "../include/DiaryHelper.h"

#include <iostream>

int main() {
    std::cout << "Enter text to save to file: ";
    std::string text = DiaryHelper::GetInput();

    DiaryHelper::SaveTextToFile(text);

    std::cout << "Text saved to file: /Users/haticenurel/xxx/text.txt" << std::endl;

    return 0;
}
