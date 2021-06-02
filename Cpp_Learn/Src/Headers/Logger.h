#pragma once

namespace Marouane
{
	enum COLOR
	{
		COLOR_RED,
		COLOR_GREEN,
		COLOR_YELLOW,
		COLOR_CYAN,
		COLOR_MAGENTA,
		COLOR_WHITE,
		COLOR_BLUE
	};

	enum LEVEL
	{
		INFO,
		WARN,
		ERROR,
		FETAL
	};

	class Logger
	{
	public:

		static void LOG_INFO(const char* buffer);
		static void LOG_WARN(const char* buffer);
		static void LOG_ERROR(const char* buffer);
		static void LOG_FETAL(const char* buffer);
		static void LOG_LK(const char* buffer,LEVEL level, COLOR color);
	};


}