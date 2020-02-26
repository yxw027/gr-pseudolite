INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_PSEUDOLITE pseudolite)

FIND_PATH(
    PSEUDOLITE_INCLUDE_DIRS
    NAMES pseudolite/api.h
    HINTS $ENV{PSEUDOLITE_DIR}/include
        ${PC_PSEUDOLITE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    PSEUDOLITE_LIBRARIES
    NAMES gnuradio-pseudolite
    HINTS $ENV{PSEUDOLITE_DIR}/lib
        ${PC_PSEUDOLITE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PSEUDOLITE DEFAULT_MSG PSEUDOLITE_LIBRARIES PSEUDOLITE_INCLUDE_DIRS)
MARK_AS_ADVANCED(PSEUDOLITE_LIBRARIES PSEUDOLITE_INCLUDE_DIRS)

