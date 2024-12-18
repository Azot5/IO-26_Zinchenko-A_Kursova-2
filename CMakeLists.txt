cmake_minimum_required(VERSION 3.15)
project(calculator_project)

# Включення директорій
include_directories(include)

# Файли з вихідним кодом
set(SOURCES src/calculator.cpp)
set(HEADERS include/calculator.h)

# Бібліотека
add_library(calculator STATIC ${SOURCES} ${HEADERS})

# Виконуваний файл
add_executable(calculator_app src/main.cpp)

# Зв'язок бібліотеки з виконуваним файлом
target_link_libraries(calculator_app calculator)
