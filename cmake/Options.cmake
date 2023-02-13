macro(add_option O DEF)
    if (DEFINED ${O})
        if (${${O}})
            set(${O} ON)
        else ()
            set(${O} OFF)
        endif()
    else ()
        set(${O} ${DEF})
    endif()
endmacro()

add_option(BUILD_SHARED_LIBS OFF)
EXECUTE_PROCESS(COMMAND uname -m COMMAND tr -d '\n' OUTPUT_VARIABLE ARCHITECTURE)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

macro(print_config NAME)
message("")
message("------------------------------------------------------------------------")
message("-- Configuring ${NAME} ${PROJECT_VERSION}${VERSION_SUFFIX}")
message("------------------------------------------------------------------------")
message("-- CMake              Cmake version and location   ${CMAKE_VERSION} (${CMAKE_COMMAND})")
message("-- Compiler           C++ compiler version         ${CMAKE_CXX_COMPILER_ID} ${CMAKE_CXX_COMPILER_VERSION}")
message("-- TARGET_PLATFORM    Target platform              ${CMAKE_SYSTEM_NAME} ${ARCHITECTURE}")
message("-- BUILD_SHARED_LIBS  Build shard lib              ${BUILD_SHARED_LIBS}")
message("------------------------------------------------------------------------")
message("")
endmacro()