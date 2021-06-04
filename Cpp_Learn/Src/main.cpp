#include <iostream>
#include "Headers/Logger.h"
#include "Headers/Bank.h"

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

	

	return 0;
}