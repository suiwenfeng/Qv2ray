cmake_minimum_required(VERSION 3.1.0)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

if(CMAKE_VERSION VERSION_LESS "3.7.0")
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

find_package(Qt5 COMPONENTS Core Widgets REQUIRED)

if(QVPLUGIN_HAS_HTTP_TO_SOCKS_HELPER)
    find_package(Qt5 COMPONENTS Network REQUIRED)
    set(QVPLUGIN_HTTP_TO_SOCKS_FILES
        ${QVPLUGIN_INTERFACE_INCLUDE_DIR}/utils/HttpProxy.cpp
        ${QVPLUGIN_INTERFACE_INCLUDE_DIR}/utils/HttpProxy.hpp
        ${QVPLUGIN_INTERFACE_INCLUDE_DIR}/utils/SocketStream.cpp
        ${QVPLUGIN_INTERFACE_INCLUDE_DIR}/utils/SocketStream.hpp
        )
else()
    set(QVPLUGIN_HTTP_TO_SOCKS_FILES "")
endif()

set(QVPLUGIN_INTERFACE_HEADERS
    ${QVPLUGIN_HTTP_TO_SOCKS_FILES}
    ${QVPLUGIN_INTERFACE_INCLUDE_DIR}/QvPluginInterface.hpp
    ${QVPLUGIN_INTERFACE_INCLUDE_DIR}/QvPluginInterfaceModels.hpp
    ${QVPLUGIN_INTERFACE_INCLUDE_DIR}/QvPluginProcessor.hpp)