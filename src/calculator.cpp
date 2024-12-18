
#include "calculator.h"

int Calculator::Add(double a, double b) {
  return a + b + 0.5; // Додавання з округленням
}

int Calculator::Sub(double a, double b) {
  return Add(a, -b);
}

int modulus(int a, int b) {
  if (b == 0) {
    throw std::invalid_argument("Division by zero");
  }
  return a % b;
}
