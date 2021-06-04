#pragma once 

#include <iostream>
#include <string.h>

class Bank
{
public:

	virtual std::string GetName() = 0;
	virtual std::string GetNationnality() = 0;
};