include(AddPlugin)
include(PluginVersionNumber)

#   Export medinria-plugins_DIR variable so that internal project can automatically find it

set(medInria-plugins_DIR ${PROJECT_BINARY_DIR} CACHE INTERNAL "")

#   Dashboard settings

enable_testing()
OPTION(BUILD_EXAMPLES "Enable this if you want to build the examples" OFF)

#   Configure ctest variables

option(BUILD_REPORTING "Build Reporting")
if (BUILD_REPORTING)
    include(dtkReporting)
endif()

if (BUILD_TESTING)
    add_subdirectory(tests)
endif()

#   Input

if (MSVC)
    #   Macros that enable precompiled headers to be added, defined by dtk.
    include(dtkPch)
    option(MEDINRIA_PLUGINS_USE_PRECOMPILED_HEADERS "Use precompiled headers" ON)
endif(MSVC)

set(DEPENDS_ON_DTK 1)

#   Documentation

option(BUILD_DOCUMENTATION "Build documentation" ON)
if (BUILD_DOCUMENTATION)
    add_subdirectory(doc)
endif()

#   Build settings

if (WIN32 AND NOT BORLAND AND NOT CYGWIN AND NOT MINGW)
    if (NOT ITK_ENABLE_VISUAL_STUDIO_DEPRECATED_C_WARNINGS)
        add_definitions(
            -D_CRT_FAR_MAPPINGS_NO_DEPRECATE
            -D_CRT_IS_WCTYPE_NO_DEPRECATE
            -D_CRT_MANAGED_FP_NO_DEPRECATE
            -D_CRT_NONSTDC_NO_DEPRECATE
            -D_CRT_SECURE_NO_DEPRECATE
            -D_CRT_SECURE_NO_DEPRECATE_GLOBALS
            -D_CRT_SETERRORMODE_BEEP_SLEEP_NO_DEPRECATE
            -D_CRT_TIME_FUNCTIONS_NO_DEPRECATE
            -D_CRT_VCCLRIT_NO_DEPRECATE
            -D_SCL_SECURE_NO_DEPRECATE
            -D_SCL_SECURE_NO_WARNINGS
          )
    endif()
endif()
