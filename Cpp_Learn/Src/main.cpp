#include <iostream>
#include "Headers/Logger.h"
#include "Headers/Bank.h"

using namespace Marouane;

template<typename T>
void Print(const T& buffer)
{
	std::cout << buffer << std::endl;
}

int main()
{
	//Logger::LOG_LK("Hello world!", Marouane::INFO, Marouane::COLOR_YELLOW);

	Bank BMCE("BMCE");
	//Logger::LOG_INFO(BMCE.GetName());
	Print(BMCE.GetName());

	return 0;
}