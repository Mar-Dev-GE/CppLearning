#include <iostream>
#include "Headers/Logger.h"


int main()
{
	Marouane::Logger::LOG_INFO("Hi i am Marouane!");
	Marouane::Logger::LOG_WARN("Hi i am Marouane!");
	Marouane::Logger::LOG_ERROR("Hi i am Marouane!");
	Marouane::Logger::LOG_FETAL("Hi i am Marouane!");
	std::cout << std::endl << std::endl;
	Marouane::Logger::LOG_LK("Hi i am Marouane!", Marouane::LEVEL::ERROR, Marouane::COLOR::COLOR_BLUE);
	Marouane::Logger::LOG_LK("Hi i am Marouane!", Marouane::LEVEL::FETAL, Marouane::COLOR::COLOR_CYAN);

	return 0;
}