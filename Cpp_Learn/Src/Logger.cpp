#include <iostream>
#include "Headers/Logger.h"

namespace Marouane
{
	template<typename T>
	void Logger::LOG_INFO(T buffer)
	{
		std::cout << "\u001b[32m[INFO] [" << __TIME__ << "]  : " << buffer << "\u001b[0m" << std::endl;
	}

	template<typename T>
	void Logger::LOG_WARN(T buffer)
	{
		std::cout << "\u001b[33m[WARN] [" << __TIME__ << "]  : " << buffer << "\u001b[0m" << std::endl;
	}

	template<typename T>
	void Logger::LOG_ERROR(T buffer)
	{
		std::cout << "\u001b[31m[ERROR][" << __TIME__ << "]  : " << buffer << "\u001b[0m" << std::endl;
	}

	template<typename T>
	void Logger::LOG_FETAL(T buffer)
	{
		std::cout << "\u001b[35m[FETAL][" << __TIME__ << "]  : " << buffer << "\u001b[0m" << std::endl;
	}

	template<typename T>
	void Logger::LOG_LK(T buffer, LEVEL level, COLOR color)
	{
		T clr = "";
		T lvl = "";
		switch (color)
		{
		case COLOR_RED:
			clr = "\u001b[31m";
			break;
		case COLOR_GREEN:
			clr = "\u001b[32m";
			break;
		case COLOR_YELLOW:
			clr = "\u001b[33m";
			break;
		case COLOR_CYAN:
			clr = "\u001b[36m";
			break;
		case COLOR_MAGENTA:
			clr = "\u001b[35m";
			break;
		case COLOR_WHITE:
			clr = "\u001b[37m";
			break;
		case COLOR_BLUE:
			clr = "\u001b[34m";
			break;
		default:
			clr = "\u001b[37m";
			break;
		}

		switch (level)
		{
		case Marouane::INFO:
			lvl = "INFO";
			break;
		case Marouane::WARN:
			lvl = "WARN";
			break;
		case Marouane::ERROR:
			lvl = "ERROR";
			break;
		case Marouane::FETAL:
			lvl = "FETAL";
			break;
		default:
			lvl = "UNKNOWN";
			break;
		}

		std::cout << clr << "[" << lvl << "][" << __TIME__ << "]  : " << buffer << "\u001b[0m" << std::endl;
	}

}