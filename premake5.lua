workspace "CppLearning"
	architecture "x64"

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
		"../Deps/Includes"
	}


	cppdialect "C++17"

	defines
	{

	}

	filter "configurations:Debug"
		defines "HZ_DEBUG"
		symbols "On"

	filter "configurations:Release"
		defines "HZ_RELEASE"
		optimize "On"
