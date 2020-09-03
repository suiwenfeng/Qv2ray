set(QV2RAY_BASEDIR_COMPONENTS ${CMAKE_SOURCE_DIR}/src/components)
set(QV2RAY_BASEDIR_CORE ${CMAKE_SOURCE_DIR}/src/core)
set(QV2RAY_BASEDIR_BASE ${CMAKE_SOURCE_DIR}/src/base)

set(QV2RAY_BASE_SOURCES
    ${QV2RAY_BASEDIR_BASE}/Qv2rayBaseApplication.cpp
    ${QV2RAY_BASEDIR_BASE}/Qv2rayBaseApplication.hpp
    ${QV2RAY_BASEDIR_BASE}/JsonHelpers.hpp
    ${QV2RAY_BASEDIR_BASE}/models/CoreObjectModels.hpp
    ${QV2RAY_BASEDIR_BASE}/models/QvComplexConfigModels.hpp
    ${QV2RAY_BASEDIR_BASE}/models/QvConfigIdentifier.hpp
    ${QV2RAY_BASEDIR_BASE}/models/QvCoreSettings.hpp
    ${QV2RAY_BASEDIR_BASE}/models/QvRuntimeConfig.hpp
    ${QV2RAY_BASEDIR_BASE}/models/QvSafeType.hpp
    ${QV2RAY_BASEDIR_BASE}/models/QvSettingsObject.hpp
    ${QV2RAY_BASEDIR_BASE}/models/QvStartupConfig.hpp
    #
    ${QV2RAY_BASEDIR_BASE}/Qv2rayBase.cpp
    ${QV2RAY_BASEDIR_BASE}/Qv2rayBase.hpp
    ${QV2RAY_BASEDIR_BASE}/Qv2rayFeatures.hpp
    ${QV2RAY_BASEDIR_BASE}/Qv2rayLog.hpp
    #
    ${CMAKE_SOURCE_DIR}/src/utils/HTTPRequestHelper.cpp
    ${CMAKE_SOURCE_DIR}/src/utils/HTTPRequestHelper.hpp
    ${CMAKE_SOURCE_DIR}/src/utils/QvHelpers.cpp
    ${CMAKE_SOURCE_DIR}/src/utils/QvHelpers.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/geosite/QvGeositeReader.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/geosite/QvGeositeReader.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/LatencyTest.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/LatencyTest.hpp
    ${QV2RAY_BASEDIR_COMPONENTS}/translations/QvTranslator.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/translations/QvTranslator.hpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/LatencyTestThread.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/LatencyTestThread.hpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/TCPing.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/TCPing.hpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/RealPing.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/RealPing.hpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/DNSBase.hpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/win/ICMPPing.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/win/ICMPPing.hpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/unix/ICMPPing.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/latency/unix/ICMPPing.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/ntp/QvNTPClient.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/ntp/QvNTPClient.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/plugins/QvPluginHost.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/plugins/QvPluginHost.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/port/QvPortDetector.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/port/QvPortDetector.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/proxy/QvProxyConfigurator.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/proxy/QvProxyConfigurator.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/route/RouteSchemeIO.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/route/RouteSchemeIO.hpp
    #
    ${QV2RAY_BASEDIR_COMPONENTS}/update/UpdateChecker.cpp
    ${QV2RAY_BASEDIR_COMPONENTS}/update/UpdateChecker.hpp
    #
    ${QV2RAY_BASEDIR_CORE}/connection/ConnectionIO.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/ConnectionIO.hpp
    ${QV2RAY_BASEDIR_CORE}/connection/Generation.hpp
    ${QV2RAY_BASEDIR_CORE}/connection/generation/final.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/generation/inbounds.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/generation/outbounds.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/generation/filters.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/generation/routing.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/generation/misc.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/Serialization.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/Serialization.hpp
    ${QV2RAY_BASEDIR_CORE}/connection/serialization/ss.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/serialization/ssd.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/serialization/vmess.cpp
    ${QV2RAY_BASEDIR_CORE}/connection/serialization/vmess_new.cpp
    #
    ${QV2RAY_BASEDIR_CORE}/CoreUtils.cpp
    ${QV2RAY_BASEDIR_CORE}/CoreUtils.hpp
    #
    ${QV2RAY_BASEDIR_CORE}/handler/ConfigHandler.cpp
    ${QV2RAY_BASEDIR_CORE}/handler/ConfigHandler.hpp
    ${QV2RAY_BASEDIR_CORE}/handler/KernelInstanceHandler.cpp
    ${QV2RAY_BASEDIR_CORE}/handler/KernelInstanceHandler.hpp
    ${QV2RAY_BASEDIR_CORE}/handler/RouteHandler.cpp
    ${QV2RAY_BASEDIR_CORE}/handler/RouteHandler.hpp
    #
    ${QV2RAY_BASEDIR_CORE}/kernel/APIBackend.cpp
    ${QV2RAY_BASEDIR_CORE}/kernel/APIBackend.hpp
    ${QV2RAY_BASEDIR_CORE}/kernel/QvKernelABIChecker.cpp
    ${QV2RAY_BASEDIR_CORE}/kernel/QvKernelABIChecker.hpp
    ${QV2RAY_BASEDIR_CORE}/kernel/V2RayKernelInteractions.cpp
    ${QV2RAY_BASEDIR_CORE}/kernel/V2RayKernelInteractions.hpp
    #
    ${QV2RAY_BASEDIR_CORE}/settings/SettingsBackend.cpp
    ${QV2RAY_BASEDIR_CORE}/settings/SettingsBackend.hpp
    ${QV2RAY_BASEDIR_CORE}/settings/SettingsUpgrade.cpp
    )
