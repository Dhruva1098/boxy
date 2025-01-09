-- premake5.lua
workspace "Boxy-Client"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Boxy-Client"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

-- Directories
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
WalnutNetworkingBinDir = "Walnut/Walnut-Modules/Walnut-Networking/vendor/GameNetworkingSockets/bin/%{cfg.system}/%{cfg.buildcfg}/"

include "Walnut/Build-Walnut-External.lua"

group "App"
    include "Boxy-Common/Build-Boxy-Common.lua"
    include "Boxy-Client/Build-Boxy-Client.lua"
group ""