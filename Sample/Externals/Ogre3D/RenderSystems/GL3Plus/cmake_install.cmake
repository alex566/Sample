# Install script for directory: /Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Release/libRenderSystem_GL3PlusStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libRenderSystem_GL3PlusStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libRenderSystem_GL3PlusStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libRenderSystem_GL3PlusStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/RelWithDebInfo/libRenderSystem_GL3PlusStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/MinSizeRel/libRenderSystem_GL3PlusStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Debug/libRenderSystem_GL3PlusStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRenderSystem_GL3PlusStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL3Plus" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusContext.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusDefaultHardwareBufferManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusDepthBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusDepthTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusFBOMultiRenderTarget.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusFBORenderTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusFrameBufferObject.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusGpuProgram.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusGpuProgramManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwareBufferManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwareCounterBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwareIndexBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwareOcclusionQuery.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwarePixelBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwareShaderStorageBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwareUniformBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHardwareVertexBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusHlmsPso.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusNullTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusPixelFormat.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusPixelFormatToShaderType.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusPlugin.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusPrerequisites.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusRenderSystem.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusRenderTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusRenderToVertexBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusSupport.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusTexture.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusTextureBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusTextureManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/OgreGL3PlusVertexArrayObject.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusAsyncTicket.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusBufferInterface.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusConstBufferPacked.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusDynamicBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusMultiSourceVertexBufferPool.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusStagingBuffer.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusTexBufferPacked.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusUavBufferPacked.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusVaoManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/Vao/OgreGL3PlusVertexArrayObject.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLExtSupport.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLMonolithicProgram.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLMonolithicProgramManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLPreprocessor.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLProgram.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLProgramManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLSeparableProgram.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLSeparableProgramManager.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLShader.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLShaderFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/OgreGLSLShaderManager.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL3Plus/OSX" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/windowing/OSX/OgreOSXCocoaContext.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/windowing/OSX/OgreOSXCocoaView.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/windowing/OSX/OgreOSXCocoaWindow.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/windowing/OSX/OgreOSXCocoaWindowDelegate.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/windowing/OSX/OgreOSXGL3PlusSupport.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/src/windowing/OSX/OgreGL3PlusUtil.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL3Plus" TYPE DIRECTORY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL3Plus" TYPE DIRECTORY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/GL3Plus/include/GLSL/")
endif()

