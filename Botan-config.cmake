message(STATUS "${CONAN_LIB_DIRS_BOTAN}")

find_path(BOTAN_INCLUDE_DIR NAMES BOTAN/BOTAN.h PATHS ${CONAN_INCLUDE_DIRS_BOTAN})
find_library(BOTAN_LIBRARY NAMES BOTAN PATHS ${CONAN_BUILD_DIRS_BOTAN})

set(BOTAN_INCLUDE_DIRS ${BOTAN_INCLUDE_DIR})
set(BOTAN_LIBRARIES ${CONAN_LIBS_BOTAN})

add_library(randombit::Botan INTERFACE IMPORTED)
target_include_directories(randombit::Botan
  INTERFACE ${BOTAN_INCLUDE_DIRS}
)
target_link_libraries(randombit::Botan
  INTERFACE ${BOTAN_LIBRARIES}
)

mark_as_advanced(BOTAN_LIBRARY BOTAN_INCLUDE_DIR)

message("** Botan found by Conan!")
set(BOTAN_FOUND TRUE)
message("   - includes: ${BOTAN_INCLUDE_DIRS}")
message("   - libraries: ${CONAN_LIBS_BOTAN}")
