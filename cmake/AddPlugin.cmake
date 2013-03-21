macro(add_plugin plugin default)

    string(TOUPPER ${plugin} UPPER_CASE_NAME)
    # set(MEDINRIA_BUILD_${UPPER_CASE_NAME}_PLUGIN ${default})
    option(MEDINRIA_BUILD_${UPPER_CASE_NAME}_PLUGIN "Build ${plugin} plugin" "${default}")

    if (MEDINRIA_BUILD_ALL_PLUGINS)
        # Force to update the cache
        set(MEDINRIA_BUILD_${UPPER_CASE_NAME}_PLUGIN "ON" CACHE BOOL "Build ${plugin} plugin" FORCE)
    endif()

    if (MEDINRIA_BUILD_${UPPER_CASE_NAME}_PLUGIN)
        add_subdirectory(${plugin})
    endif()

endmacro()
