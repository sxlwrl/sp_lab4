#include "calculator.h"
#include <iostream>

class App {
public:
	Calculator calculator;

	double a = 5.0;
	double b = 2.0;
	
	int sum = calculator.Add(a, b);
	int sub = calculator.Sub(a, b);
	
	void print()
	{
		std::cout << "The sum of a and b: " << sum << std::endl;
		std::cout << "The sub of a and b: " << sub << std::endl;
	}
};

int main() {
	App app;
	app.print();
	
	return 0;
};
