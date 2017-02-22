# Install script for directory: /Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Release/libRenderSystem_MetalStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libRenderSystem_MetalStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libRenderSystem_MetalStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libRenderSystem_MetalStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/RelWithDebInfo/libRenderSystem_MetalStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/MinSizeRel/libRenderSystem_MetalStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Debug/libRenderSystem_MetalStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_MetalStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/Metal" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalDepthBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalDepthTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalDevice.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalDiscardBufferManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalGpuProgramManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalHardwareBufferCommon.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalHardwareBufferManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalHardwareIndexBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalHardwarePixelBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalHardwareVertexBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalHlmsPso.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalMappings.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalNullTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalPlugin.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalPrerequisites.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalProgram.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalProgramFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalRenderSystem.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalRenderTargetCommon.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalRenderTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalRenderWindow.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/OgreMetalTextureManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalAsyncTicket.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalBufferInterface.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalConstBufferPacked.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalDynamicBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalMultiSourceVertexBufferPool.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalStagingBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalTexBufferPacked.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalUavBufferPacked.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Vao/OgreMetalVaoManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include/Windowing/iOS/OgreMetalView.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/Metal" TYPE DIRECTORY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/Metal/include")
endif()

