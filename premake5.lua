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
	location "Vendor/GLFW"
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
		"Vendor/GLFW/src/glfw3.h",
		"Vendor/GLFW/src/glfw3native.h",
		"Vendor/GLFW/src/glfw_config.h",
		"Vendor/GLFW/src/context.c",
		"Vendor/GLFW/src/init.c",
		"Vendor/GLFW/src/input.c",
		"Vendor/GLFW/src/monitor.c",
		"Vendor/GLFW/src/vulkan.c",
		"Vendor/GLFW/src/window.c"
	}

	filter "system:windows"
	files
	{
			"Vendor/GLFW/src/win32_joystick.h",
			"Vendor/GLFW/src/wgl_context.h",
			"Vendor/GLFW/src/egl_context.h",
			"Vendor/GLFW/src/osmesa_context.h",
			"Vendor/GLFW/src/win32_init.c",
			"Vendor/GLFW/src/win32_joystick.c",
			"Vendor/GLFW/src/win32_monitor.c",
			"Vendor/GLFW/src/win32_time.c",
			"Vendor/GLFW/src/win32_thread.c",
		    "Vendor/GLFW/src/egl_context.c",
			"Vendor/GLFW/src/win32_window.c ",
			"Vendor/GLFW/src/wgl_context.c",
		    "Vendor/GLFW/src/osmesa_context.c"
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
