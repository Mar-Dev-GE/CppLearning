#include <iostream>
#include "Headers/Logger.h"
#include "Headers/Bank.h"
#include <array>

using namespace Marouane;

class BMCE : Bank
{
public:

	virtual std::string GetName() override;
	virtual std::string GetNationnality() override;
};


int main()
{
	Logger::LOG_LK("Hello world!", Marouane::INFO, Marouane::COLOR_YELLOW);

	std::array<std::string, 10> sArray;
	std::string Name = "Marouane";

	return 0;
}