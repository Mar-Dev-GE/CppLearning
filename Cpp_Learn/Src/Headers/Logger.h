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

		template<typename T>
		static void LOG_INFO(T buffer);
		template<typename T>
		static void LOG_WARN(T buffer);
		template<typename T>
		static void LOG_ERROR(T buffer);
		template<typename T>
		static void LOG_FETAL(T buffer);
		template<typename T>
		static void LOG_LK(T buffer,LEVEL level, COLOR color);

	};

}