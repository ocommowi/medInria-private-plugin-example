cmake_minimum_required(VERSION 2.8.1)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

project(medInria-plugins-private)

include(PluginsConfig)

PluginVersionNumber(2 0 2)

find_package(MedInriaSuperProject REQUIRED)

#   Eventually add libraries specific to this plugin here.

# add_subdirectory(libs)

add_plugin(ITKProcessExample ON)

# Install post-processing code testing

if (APPLE)
  configure_file(${PROJECT_SOURCE_DIR}/fix_apple_links.sh.in
                 ${PROJECT_BINARY_DIR}/fix_apple_links.sh)

  install(CODE "execute_process(COMMAND \${PROJECT_BINARY_DIR}/fix_apple_links.sh)")
endif()

# Packaging. This should always be the last command.

include(pluginPack)
