#include <iostream>
#include "calculator.h"

int main() {
  Calculator calc;

  std::cout << "Addition: " << calc.Add(5.5, 2.2) << std::endl;
  std::cout << "Subtraction: " << calc.Sub(5.5, 2.2) << std::endl;

  try {
    std::cout << "Modulus: " << modulus(10, 3) << std::endl;
    std::cout << "Modulus (division by zero): " << modulus(10, 0) << std::endl;
  }
  catch (const std::invalid_argument& e) {
    std::cerr << e.what() << std::endl;
  }

  return 0;
}
