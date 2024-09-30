project "glad"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("%{wks.location}/build/bin/" .. outputdir .. "/dependencies/%{prj.name}")
	objdir ("%{wks.location}/build/obj/" .. outputdir .. "/dependencies/%{prj.name}")

	files
	{
		"include/glad/glad.h",
		"include/KHR/khrplatform.h",
		"src/glad.c",
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"