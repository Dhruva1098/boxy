-- premake5.lua
workspace "Boxy-Server"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Boxy-Server"

   -- Workspace-wide defines
   defines
   {
       "WL_HEADLESS"
   }

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

-- Directories
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
WalnutNetworkingBinDir = "Walnut/Walnut-Modules/Walnut-Networking/vendor/GameNetworkingSockets/bin/%{cfg.system}/%{cfg.buildcfg}/"

include "Walnut/Build-Walnut-Headless-External.lua"

group "App"
    include "Boxy-Common/Build-Boxy-Common-Headless.lua"
    include "Boxy-Server/Build-Boxy-Server-Headless.lua"
group ""