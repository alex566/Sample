# Install script for directory: /Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/sdk")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindOIS.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindRapidjson.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindSDL2.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindOGRE.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/FindPkgMacros.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/MacroLogFeature.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/PreprocessorUtils.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/PrecompiledHeader.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/OgreAddTargets.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/OgreConfigTargets.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/OgreGetVersion.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Utils/OgreFindFrameworks.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindCg.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindCg.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindDirectX.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindFreeImage.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindFreetype.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindOpenGLES.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindOpenGLES2.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindZLIB.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindZZip.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindSoftimage.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindGLSLOptimizer.cmake"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/Packages/FindHLSL2GLSL.cmake"
    )
endif()

