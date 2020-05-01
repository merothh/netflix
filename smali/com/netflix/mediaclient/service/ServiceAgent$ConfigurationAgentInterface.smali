.class public interface abstract Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# virtual methods
.method public abstract clearAccountConfigData()V
.end method

.method public abstract enableHTTPSAuth()Z
.end method

.method public abstract enableLowBitrateStreams()Z
.end method

.method public abstract esnMigrationComplete()V
.end method

.method public abstract fetchAccountConfigData(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
.end method

.method public abstract getABTestConfiguration_6634()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
.end method

.method public abstract getABTestConfiguration_6725()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
.end method

.method public abstract getAlertMsgForMissingLocale()Ljava/lang/String;
.end method

.method public abstract getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
.end method

.method public abstract getApmUserSessionDurationInSeconds()I
.end method

.method public abstract getAppVersionCode()I
.end method

.method public abstract getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
.end method

.method public abstract getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
.end method

.method public abstract getCWProgressBarConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getCastPrefetchSharedSecret()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
.end method

.method public abstract getCoppola1Experience()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getCoppola2Experience()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;
.end method

.method public abstract getDataRequestThreadPoolSize()I
.end method

.method public abstract getDataRequestTimeout()I
.end method

.method public abstract getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
.end method

.method public abstract getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;
.end method

.method public abstract getDiskCacheSizeBytes()I
.end method

.method public abstract getDisplayPageRefreshConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getDownloadAgentThreadPoolSize()I
.end method

.method public abstract getDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
.end method

.method public abstract getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
.end method

.method public abstract getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
.end method

.method public abstract getGeoCountryCode()Ljava/lang/String;
.end method

.method public abstract getImageCacheMinimumTtl()J
.end method

.method public abstract getImageCacheSizeBytes()I
.end method

.method public abstract getImagePreference()Ljava/lang/String;
.end method

.method public abstract getImageResolutionClass()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
.end method

.method public abstract getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
.end method

.method public abstract getJPlayerConfig()Lorg/json/JSONObject;
.end method

.method public abstract getJPlayerStreamErrorRestartCount()I
.end method

.method public abstract getKubrickConfiguration()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;
.end method

.method public abstract getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;
.end method

.method public abstract getMemento2Config()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getMementoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getMotionBBTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;
.end method

.method public abstract getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
.end method

.method public abstract getOfflineTutorialConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getOnRampConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getPhoneOrientationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;
.end method

.method public abstract getPreAppPartnerExperience()Ljava/lang/String;
.end method

.method public abstract getPreAppWidgetExperience()Ljava/lang/String;
.end method

.method public abstract getPrefetchDPConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getPrefetchLolomoConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getPresentationTrackingAggregationSize()I
.end method

.method public abstract getPreviewContentConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
.end method

.method public abstract getRateLimitForGcmBrowseEvents()I
.end method

.method public abstract getRateLimitForNListChangeEvents()I
.end method

.method public abstract getResFetcherThreadPoolSize()I
.end method

.method public abstract getResourceRequestTimeout()I
.end method

.method public abstract getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getStreamingQoe()Ljava/lang/String;
.end method

.method public abstract getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
.end method

.method public abstract getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
.end method

.method public abstract getVideoBufferSize()I
.end method

.method public abstract getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;
.end method

.method public abstract getVoiceSearchABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
.end method

.method public abstract getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
.end method

.method public abstract ignorePreloadForPlayBilling()Z
.end method

.method public abstract isAllowHevcMobile()Z
.end method

.method public abstract isAllowVp9Mobile()Z
.end method

.method public abstract isAssistiveAudioEnabled()Z
.end method

.method public abstract isCurrentDrmWidevine()Z
.end method

.method public abstract isDeviceHd()Z
.end method

.method public abstract isDeviceLowMem()Z
.end method

.method public abstract isDisableCastFaststart()Z
.end method

.method public abstract isDisableMcQueenV2()Z
.end method

.method public abstract isDolbyDigitalPlus20Supported()Z
.end method

.method public abstract isDolbyDigitalPlus51Supported()Z
.end method

.method public abstract isDynecomSignInEnabled()Z
.end method

.method public abstract isEsnMigrationRequired()Z
.end method

.method public abstract isLogoutRequired()Z
.end method

.method public abstract isPlayBillingDisabled()Z
.end method

.method public abstract isPreviewContentEnabled()Z
.end method

.method public abstract isWidevineL1Enabled()Z
.end method

.method public abstract persistNrmConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)V
.end method

.method public abstract setShouldUseAndroidHttpStack(Z)V
.end method

.method public abstract shouldAlertForMissingLocale()Z
.end method

.method public abstract shouldDisableVoip()Z
.end method

.method public abstract shouldForceLegacyCrypto()Z
.end method

.method public abstract shouldUseAndroidHttpStack()Z
.end method

.method public abstract showHelpForNonMemebers()Z
.end method

.method public abstract userAgentLogoutComplete()V
.end method

.method public abstract verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
.end method
