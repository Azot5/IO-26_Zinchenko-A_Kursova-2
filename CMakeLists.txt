cmake_minimum_required(VERSION 3.15)
project(calculator_project)

# ��������� ���������
include_directories(include)

# ����� � �������� �����
set(SOURCES src/calculator.cpp)
set(HEADERS include/calculator.h)

# ���������
add_library(calculator STATIC ${SOURCES} ${HEADERS})

# ����������� ����
add_executable(calculator_app src/main.cpp)

# ��'���� �������� � ����������� ������
target_link_libraries(calculator_app calculator)
