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
	location "VND/GLFW"
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
		"VND/GLFW/src/glfw3.h",
		"VND/GLFW/src/glfw3native.h",
		"VND/GLFW/src/glfw_config.h",
		"VND/GLFW/src/context.c",
		"VND/GLFW/src/init.c",
		"VND/GLFW/src/input.c",
		"VND/GLFW/src/monitor.c",
		"VND/GLFW/src/vulkan.c",
		"VND/GLFW/src/window.c"
	}

	filter "system:windows"
	files
	{
			"VND/GLFW/src/win32_joystick.h",
			"VND/GLFW/src/wgl_context.h",
			"VND/GLFW/src/egl_context.h",
			"VND/GLFW/src/osmesa_context.h",
			"VND/GLFW/src/win32_init.c",
			"VND/GLFW/src/win32_joystick.c",
			"VND/GLFW/src/win32_monitor.c",
			"VND/GLFW/src/win32_time.c",
			"VND/GLFW/src/win32_thread.c",
		    "VND/GLFW/src/egl_context.c",
			"VND/GLFW/src/win32_window.c ",
			"VND/GLFW/src/wgl_context.c",
		    "VND/GLFW/src/osmesa_context.c"
	}

	defines
	{
		"_GLFW_WIN32",
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:linux"
	files
	{
		"VND/GLFW/src/wl_platform.h",
		"VND/GLFW/src/posix_time.h",
		"VND/GLFW/src/posix_thread.h",
		"VND/GLFW/src/xkb_unicode.h",
		"VND/GLFW/src/egl_context.h",
		"VND/GLFW/src/osmesa_context.h",
		"VND/GLFW/src/wl_init.c",
		"VND/GLFW/src/wl_monitor.c",
		"VND/GLFW/src/wl_window.c",
		"VND/GLFW/src/posix_time.c",
		"VND/GLFW/src/posix_thread.c",
		"VND/GLFW/src/xkb_unicode.c",
		"VND/GLFW/src/egl_context.c",
		"VND/GLFW/src/osmesa_context.c",
		"VND/GLFW/src/x11_platform.h",
		"VND/GLFW/src/xkb_unicode.h",
		"VND/GLFW/src/posix_time.h",
		"VND/GLFW/src/posix_thread.h",
		"VND/GLFW/src/glx_context.h",
		"VND/GLFW/src/egl_context.h",
		"VND/GLFW/src/osmesa_context.h",
		"VND/GLFW/src/x11_init.c",
		"VND/GLFW/src/x11_monitor.c",
		"VND/GLFW/src/x11_window.c",
		"VND/GLFW/src/xkb_unicode.c",
		"VND/GLFW/src/posix_time.c",
		"VND/GLFW/src/posix_thread.c",
		"VND/GLFW/src/glx_context.c",
		"VND/GLFW/src/egl_context.c",
		"VND/GLFW/src/osmesa_context.c"
	}

	defines
	{
		"_GLFW_X11",
	}

	cppdialect "C++17"

	filter "configurations:Debug"
		defines "LR_DEBUG"
		symbols "On"

	filter "configurations:Release"
		defines "LR_RELEASE"
		optimize "On"
