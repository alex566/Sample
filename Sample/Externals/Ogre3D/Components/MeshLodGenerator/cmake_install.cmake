# Install script for directory: /Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator

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
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Release/libOgreMeshLodGeneratorStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libOgreMeshLodGeneratorStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libOgreMeshLodGeneratorStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libOgreMeshLodGeneratorStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/RelWithDebInfo/libOgreMeshLodGeneratorStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/MinSizeRel/libOgreMeshLodGeneratorStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Debug/libOgreMeshLodGeneratorStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOgreMeshLodGeneratorStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/MeshLodGenerator" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLod0Stripifier.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodCollapseCost.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodCollapseCostCurvature.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodCollapseCostOutside.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodCollapseCostProfiler.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodCollapseCostQuadric.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodCollapser.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodConfig.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodConfigSerializer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodData.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodInputProvider.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodInputProviderBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodInputProviderMesh.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodOutputProvider.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodOutputProviderBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodOutputProviderCompressedBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodOutputProviderCompressedMesh.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodOutputProviderMesh.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodOutsideMarker.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodPrerequisites.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodWorkQueueInjector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodWorkQueueInjectorListener.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodWorkQueueRequest.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreLodWorkQueueWorker.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreMeshLodGenerator.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreSmallVector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreVectorSet.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/MeshLodGenerator/include/OgreVectorSetImpl.h"
    )
endif()

