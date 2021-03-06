#-------------------------------------------------------------------
# This file is part of the CMake build system for OGRE
#     (Object-oriented Graphics Rendering Engine)
# For the latest info, see http://www.ogre3d.org/
#
# The contents of this file are placed in the public domain. Feel
# free to make use of it in any way you like.
#-------------------------------------------------------------------

# Configure Metal RenderSystem build

file(GLOB HEADER_FILES "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h" "${CMAKE_CURRENT_SOURCE_DIR}/include/Vao/*.h" "${CMAKE_CURRENT_SOURCE_DIR}/include/Windowing/iOS/*.h")
file(GLOB SOURCE_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.mm" "${CMAKE_CURRENT_SOURCE_DIR}/src/Vao/*.mm" "${CMAKE_CURRENT_SOURCE_DIR}/src/Windowing/iOS/*.mm")

include_directories(
  BEFORE ${CMAKE_CURRENT_SOURCE_DIR}/include
)

ogre_add_library(RenderSystem_Metal ${OGRE_LIB_TYPE} ${HEADER_FILES} ${SOURCE_FILES})
target_link_libraries(RenderSystem_Metal OgreMain)

if (OGRE_CONFIG_THREADS)
  target_link_libraries(RenderSystem_Metal ${OGRE_THREAD_LIBRARIES})
endif ()

ogre_config_framework(RenderSystem_Metal)

ogre_config_plugin(RenderSystem_Metal)
install(FILES ${HEADER_FILES} DESTINATION include/OGRE/RenderSystems/Metal)
install(FILES ${PLATFORM_HEADERS} DESTINATION include/OGRE/RenderSystems/Metal/${PLATFORM_HEADER_INSTALL})
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include DESTINATION include/OGRE/RenderSystems/Metal)
