macro(PluginVersionNumber major minor build)

    set(${PROJECT_NAME}_VERSION_MAJOR ${major} CACHE STRING "${PROJECT_NAME} major version number." FORCE)
    set(${PROJECT_NAME}_VERSION_MINOR ${minor} CACHE STRING "${PROJECT_NAME} minor version number." FORCE)
    set(${PROJECT_NAME}_VERSION_BUILD ${build} CACHE STRING "${PROJECT_NAME} build version number." FORCE)

    set(${PROJECT_NAME}_VERSION
        "${${PROJECT_NAME}_VERSION_MAJOR}.${${PROJECT_NAME}_VERSION_MINOR}.${${PROJECT_NAME}_VERSION_BUILD}")

    list(LENGTH ARGN optional_parameters)
    set(bugfix 0)
    if (NOT ${optional_parameters} EQUAL 0)
        list(GET ARGN 0 bugfix)
        if (${bugfix} GREATER 0)
            set(${PROJECT_NAME}_VERSION "${${PROJECT_NAME}_VERSION}-${bugfix}")
        endif()
    endif()
    set(${PROJECT_NAME}_VERSION_BUGFIX ${bugfix} CACHE STRING "${PROJECT_NAME} bug-fix version number." FORCE)

    mark_as_advanced(${PROJECT_NAME}_VERSION_MAJOR)
    mark_as_advanced(${PROJECT_NAME}_VERSION_MINOR)
    mark_as_advanced(${PROJECT_NAME}_VERSION_BUILD)
    mark_as_advanced(${PROJECT_NAME}_VERSION_BUGFIX)

endmacro()
