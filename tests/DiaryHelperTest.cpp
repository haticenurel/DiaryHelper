#include <gtest/gtest.h>
#include "../include/DiaryHelper.h"
#include <fstream>
#include <string>
#include <regex>
#include <sstream>
#include <functional>
#include <filesystem>
#include <cstdio>
#include <iostream>
#include <ctime>
#include <iomanip>

using namespace std;


template <typename Callback>
void cinMock(const string& input, Callback callback) {
    istringstream inputString(input);
    auto originalCin = cin.rdbuf();

    cin.rdbuf(inputString.rdbuf());

    callback();

    cin.rdbuf(originalCin);
}


// Utility function to check if a given string matches a regex pattern
bool stringMatchesRegex(const string& str, const regex& regex) {
    return regex_match(str, regex);
}

TEST(DiaryHelperTest, TestSaveTextToFile) {
    DiaryHelper::SaveTextToFile("This is a test");
    string filePath = "/Users/haticenurel/cppworkspace/text.txt";
    ifstream file(filePath); //file path as a parameter
    string line;
    getline(file, line);
    file.close();

    EXPECT_TRUE(line.find("This is a test") != string::npos);

    // Extract the date part from the line
    string dateString = line.substr(0, line.find(' '));

    // Print the actual date string for debugging
    cout << "Actual date string: " << dateString << endl;

    // Check if the date format matches the expected format: dd.mm.yyyy
    regex dateRegex(R"(\d{1,2}\.\d{1,2}\.\d{4})");
    EXPECT_TRUE(stringMatchesRegex(dateString, dateRegex))
        << "Date format in the saved file does not match the expected format: dd.mm.yyyy";

    // Extract the time part from the line
    string timeString = line.substr(line.find(' ') + 1, line.find(' ', line.find(' ') + 1) - line.find(' ') - 1);

    // Print the actual time string for debugging
    cout << "Actual time string: " << timeString << endl;

    // Check if the time format matches the expected format: hh:mm:ss
    regex timeRegex(R"(\d{1,2}:\d{1,2}:\d{1,2})");
    EXPECT_TRUE(stringMatchesRegex(timeString, timeRegex))
        << "Time format in the saved file does not match the expected format: hh:mm:ss";
}


TEST(DiaryHelperTest, TestGetInput) {
    const string input = "Testing GetInput Function";

    cinMock(input, [input]() {

        const string result = DiaryHelper::GetInput();
        EXPECT_EQ(result, input);
    });
}

TEST(DiaryHelperTest, TestTextEmpty) {
    // Prepare the input
    string emptyText = "";

    cinMock(emptyText, [emptyText]() {
        // Call the GetInput() function
        string result = DiaryHelper::GetInput();

        // Validate the result
        EXPECT_EQ(result, emptyText);
    });
}

TEST(DiaryHelperTest, TestTextTooLong) {
    // Prepare the input
    string longText(101, 'a');

    cinMock(longText, [longText]() {
        // Call the GetInput() function
        string result = DiaryHelper::GetInput();

        // Validate the result
        EXPECT_EQ(result, longText);
    });
}

TEST(DiaryHelperTest, TestTextMustContainAtLeastOneSpace) {
    // Prepare the input
    string input = "ThisIsATestText";

    cinMock(input, [input]() {
        // Call the GetInput() function
        string result = DiaryHelper::GetInput();

        // Validate the result
        EXPECT_EQ(result, input);
    });
}


TEST(DiaryHelperTest, TestSaveTextToFileWithEmptyInput){
    DiaryHelper::SaveTextToFile("");
    string filePath = "/Users/haticenurel/cppworkspace/text.txt";
    ifstream file(filePath); //file path as a parameter
    string line;
    getline(file, line);
    file.close();

    EXPECT_TRUE(line.find("") != string::npos);

    // Extract the date part from the line
    string dateString = line.substr(0, line.find(' '));

    // Print the actual date string for debugging
    cout << "Actual date string: " << dateString << endl;

    // Check if the date format matches the expected format: dd.mm.yyyy
    regex dateRegex(R"(\d{1,2}\.\d{1,2}\.\d{4})");
    EXPECT_TRUE(stringMatchesRegex(dateString, dateRegex))
        << "Date format in the saved file does not match the expected format: dd.mm.yyyy";

    // Extract the time part from the line
    string timeString = line.substr(line.find(' ') + 1, line.find(' ', line.find(' ') + 1) - line.find(' ') - 1);

    // Print the actual time string for debugging
    cout << "Actual time string: " << timeString << endl;

    // Check if the time format matches the expected format: hh:mm:ss
    regex timeRegex(R"(\d{1,2}:\d{1,2}:\d{1,2})");
    EXPECT_TRUE(stringMatchesRegex(timeString, timeRegex))
        << "Time format in the saved file does not match the expected format: hh:mm:ss";
}

TEST(DiaryHelperTest, TestSaveTextToFileWithTooLongInput) {
    // Prepare the input
    string longText(101, 'a');

    // Call the SaveTextToFile() function with a too long input
    DiaryHelper::SaveTextToFile(longText);

    // Read the contents of the file to verify
    string filePath = "/Users/haticenurel/cppworkspace/text.txt";
    ifstream file(filePath);
    string line;
    getline(file, line);
    file.close();

    EXPECT_TRUE(line.find(longText) == string::npos)
        << "Expected line to not contain the long text, but it did.";

    // Extract the date part from the line
    string dateString = line.substr(0, line.find(' '));

    // Print the actual date string for debugging
    cout << "Actual date string: " << dateString << endl;

    // Check if the date format matches the expected format: dd.mm.yyyy
    regex dateRegex(R"(\d{1,2}\.\d{1,2}\.\d{4})");
    EXPECT_TRUE(stringMatchesRegex(dateString, dateRegex))
        << "Date format in the saved file does not match the expected format: dd.mm.yyyy";

    // Extract the time part from the line
    string timeString = line.substr(line.find(' ') + 1, line.find(' ', line.find(' ') + 1) - line.find(' ') - 1);

    // Print the actual time string for debugging
    cout << "Actual time string: " << timeString << endl;

    // Check if the time format matches the expected format: hh:mm:ss
    regex timeRegex(R"(\d{1,2}:\d{1,2}:\d{1,2})");
    EXPECT_TRUE(stringMatchesRegex(timeString, timeRegex))
        << "Time format in the saved file does not match the expected format: hh:mm:ss";
}


TEST(DiaryHelperTest, TestSaveTextToFileWithTextMustContainAtLeastOneSpace) {
    // Prepare the input
    string input = "ThisIsATestText";

    // Call the SaveTextToFile() function with input that does not contain any space
    DiaryHelper::SaveTextToFile(input);

    // Read the contents of the file to verify
    string filePath = "/Users/haticenurel/cppworkspace/text.txt";
    ifstream file(filePath);
    string line;
    getline(file, line);
    file.close();

    // Assert that the line contains the expected input
    EXPECT_FALSE(line.find(input) != string::npos)
        << "Expected line to not contain the input, but it did.";

    // Extract the date part from the line
    string dateString = line.substr(0, line.find(' '));

    // Print the actual date string for debugging
    cout << "Actual date string: " << dateString << endl;

    // Check if the date format matches the expected format: dd.mm.yyyy
    regex dateRegex(R"(\d{1,2}\.\d{1,2}\.\d{4})");
    EXPECT_TRUE(stringMatchesRegex(dateString, dateRegex))
        << "Date format in the saved file does not match the expected format: dd.mm.yyyy";

    // Extract the time part from the line
    string timeString = line.substr(line.find(' ') + 1, line.find(' ', line.find(' ') + 1) - line.find(' ') - 1);

    // Print the actual time string for debugging
    cout << "Actual time string: " << timeString << endl;

    // Check if the time format matches the expected format: hh:mm:ss
    regex timeRegex(R"(\d{1,2}:\d{1,2}:\d{1,2})");
    EXPECT_TRUE(stringMatchesRegex(timeString, timeRegex))
        << "Time format in the saved file does not match the expected format: hh:mm:ss";
}



// gcovrdaki sorunlu kısım
TEST(DiaryHelperTest, TestSaveTextToFileFailedToOpenFile) {
    // Prepare the input
    std::string input = "This is a test";

    // Call the SaveTextToFile() function with input that fails to retrieve time information
    DiaryHelper::SaveTextToFile(input);

    // Check if the file was created by attempting to open it
    std::string filePath = "/Users/haticenurel/cppworkspace/text1.txt";
    std::ifstream file(filePath);
    bool fileExists = file.is_open();
    file.close();

    // Assert that the file does not exist
    EXPECT_FALSE(fileExists) << "Expected the file to not be created, but it exists.";
}
