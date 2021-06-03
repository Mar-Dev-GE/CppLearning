#include "Headers/Bank.h"

Bank::Bank(std::string Name)
{
	s_Name = Name;
}

std::string& Bank::GetName()
{
	return s_Name;
}

