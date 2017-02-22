# Install script for directory: /Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE" TYPE FILE FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/include/OgreBuildSettings.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/pkgconfig/OGRE.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/pkgconfig/OGRE-MeshLodGenerator.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/debug" TYPE FILE FILES
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/debug/resources2.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/debug/resources_d.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/debug/plugins_d.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/debug/plugins_tools_d.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/debug/samples_d.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/debug/tests_d.cfg"
      )
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources2.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins_tools.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/samples.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/tests.cfg"
      )
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources2.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins_tools.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/samples.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/tests.cfg"
      )
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources2.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins_tools.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/samples.cfg"
      "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/tests.cfg"
      )
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources2.cfg"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/resources.cfg"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins.cfg"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/plugins_tools.cfg"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/samples.cfg"
    "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/inst/bin/release/tests.cfg"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/OgreMain/cmake_install.cmake")
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/RenderSystems/cmake_install.cmake")
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/PlugIns/cmake_install.cmake")
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Components/cmake_install.cmake")
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Samples/cmake_install.cmake")
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Docs/cmake_install.cmake")
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/Samples/Media/cmake_install.cmake")
  include("/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/CMake/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/alexey/Projects/waterfall/Waterfall/Waterfall/Externals/Ogre3D/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
