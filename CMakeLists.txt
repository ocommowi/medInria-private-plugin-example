cmake_minimum_required(VERSION 2.8.1)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

project(medInria-plugins-private)

include(PluginsConfig)

PluginVersionNumber(2 0 2)
PluginSetDependencies(VTK ITK TTK RPI medInria)

#   Eventually add libraries specific to this plugin here.

# add_subdirectory(libs)

add_plugin(ITKProcessExample ON)

#   Packaging. This should always be the last command.

#include(PluginPackaging)
