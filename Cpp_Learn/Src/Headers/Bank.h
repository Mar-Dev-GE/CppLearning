#pragma once 

#include <string>

class Bank
{
	std::string s_Name;
public:
	Bank(std::string Name);


public:
	std::string& GetName();
};