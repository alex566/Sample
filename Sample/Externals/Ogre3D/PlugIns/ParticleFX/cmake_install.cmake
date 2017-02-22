# Install script for directory: /Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Release/libPlugin_ParticleFXStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libPlugin_ParticleFXStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libPlugin_ParticleFXStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Release/libPlugin_ParticleFXStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/RelWithDebInfo/libPlugin_ParticleFXStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/MinSizeRel/libPlugin_ParticleFXStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/lib/$(PLATFORM_NAME)/Debug/libPlugin_ParticleFXStatic.a")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libPlugin_ParticleFXStatic.a")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Plugins/ParticleFX" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreAreaEmitter.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreBoxEmitter.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreBoxEmitterFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourFaderAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourFaderAffector2.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory2.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourImageAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourImageAffectorFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourInterpolatorAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreColourInterpolatorAffectorFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreCylinderEmitter.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreCylinderEmitterFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffectorFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffectorFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreEllipsoidEmitter.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreEllipsoidEmitterFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitter.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitterFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreLinearForceAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreLinearForceAffectorFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreParticleFXPlugin.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreParticleFXPrerequisites.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgrePointEmitter.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgrePointEmitterFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreRingEmitter.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreRingEmitterFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreRotationAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreRotationAffectorFactory.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreScaleAffector.h"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/ParticleFX/include/OgreScaleAffectorFactory.h"
    )
endif()

