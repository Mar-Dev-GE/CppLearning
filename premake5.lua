workspace "CppLearning"
	architecture "x64"

	startproject "OpenGL_Learning"

	configurations
	{
		"Debug",
		"Release",
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Cpp_Learn"
	location "Cpp_Learn"
	kind "ConsoleApp"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Cpp_Learn/**.h",
		"Cpp_Learn/**.cpp"
	}

	includedirs
	{
		"Deps/Includes"
	}

	cppdialect "C++17"

	filter "configurations:Debug"
		defines "LR_DEBUG"
		symbols "On"

	filter "configurations:Release"
		defines "LR_RELEASE"
		optimize "On"


project "OpenGL_Learning"
	location "OpenGL_Learning"
	kind "ConsoleApp"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	links { "GLFW" }

	files
	{
		"OpenGL_Learning/**.h",
		"OpenGL_Learning/**.cpp"
	}

	includedirs
	{
		"Deps/Includes"
	}

	cppdialect "C++17"

	filter "configurations:Debug"
		defines "OPGL_LR_DEBUG"
		symbols "On"

	filter "configurations:Release"
		defines "OPGL_LR_RELEASE"
		optimize "On"


project "GLFW"
	location "vendor/GLFW"
	kind "StaticLib"

	language "C"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs
	{
		"Deps/Includes"
	}

		files
	{
		"vendor/GLFW/src/glfw3.h",
		"vendor/GLFW/src/glfw3native.h",
		"vendor/GLFW/src/glfw_config.h",
		"vendor/GLFW/src/context.c",
		"vendor/GLFW/src/init.c",
		"vendor/GLFW/src/input.c",
		"vendor/GLFW/src/monitor.c",
		"vendor/GLFW/src/vulkan.c",
		"vendor/GLFW/src/window.c"
	}

	filter "system:windows"
	files
	{
			"vendor/GLFW/src/win32_joystick.h",
			"vendor/GLFW/src/wgl_context.h",
			"vendor/GLFW/src/egl_context.h",
			"vendor/GLFW/src/osmesa_context.h",
			"vendor/GLFW/src/win32_init.c",
			"vendor/GLFW/src/win32_joystick.c",
			"vendor/GLFW/src/win32_monitor.c",
			"vendor/GLFW/src/win32_time.c",
			"vendor/GLFW/src/win32_thread.c",
		    "vendor/GLFW/src/egl_context.c",
			"vendor/GLFW/src/win32_window.c ",
			"vendor/GLFW/src/wgl_context.c",
		    "vendor/GLFW/src/osmesa_context.c"
	}

	defines
	{
		"_GLFW_WIN32",
		"_CRT_SECURE_NO_WARNINGS"
	}

	cppdialect "C++17"

	filter "configurations:Debug"
		defines "LR_DEBUG"
		symbols "On"

	filter "configurations:Release"
		defines "LR_RELEASE"
		optimize "On"
