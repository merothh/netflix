.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
.end method

.method public abstract setDisableAccurateStartPoint(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setDisableLoginOverMsl(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setForcedDeviceCategory(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetAlertMsgForLocaleSupport(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetAppMinVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetAppRecommendedVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetAppUpdateDialogFreqDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetAudioFormats(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetBreadcrumbLoggingSpecifications(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation
.end method

.method public abstract setGetConsolidatedloggingSpecification(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation
.end method

.method public abstract setGetDisableCastFaststart(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetDisableLicensePrefetch(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetEnableLocalPlayback(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetEnableMdxRemoteControlLockScreen(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetEnableMdxRemoteControlNotification(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetErrorLoggingSpecifications(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation
.end method

.method public abstract setGetGeoCountryCode(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetImagePref(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetLolomoCacheExpirationOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetLolomoPrefetchIntervalOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetMaxAppLifeDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetMdxDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetMobileOnlyMinVersionCode(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetOfflineCodecPrefData(Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetOfflineConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetPTAggregationSize(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetRateLimitForGcmBrowseEvents(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetRateLimitForGcmNListChangeEvents(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetSignUpTimeout(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetStreamingCodecPrefData(Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetSubtitleDownloadRetryPolicy(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetSuppressedLogblobs(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation
.end method

.method public abstract setGetUserSessionTimeoutDuration(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetVideoResolutionOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetVoipConfiguration(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetVoipInstallDeadlineInDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setGetWebsocketDisabled(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsAllowAv1Mobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsAllowHevcMobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsAllowVp9Mobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsBlacklisted(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsDisableLegacyNetflixMdx(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsDolbyVisionEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsEnableOfflineSecureDelete(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsEnabledWidevineL3SystemId4266(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsHdr10Enabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsHdrBrightnessBoostEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsMementoEnabledForWorld(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsPhonePortraitLockEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsPlayBillingDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsVoipEnabledOnDevice(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setIsWidevineL1Enabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setPartnerIntegrationConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setPdsAndLogblobConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setShouldAlertForMissingLocale(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setShouldDisableAmazonADM(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setShouldDisablePip(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setShouldDisableRoar(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setShouldForceLegacyCrypto(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setShouldGetNrmViaMsl(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method

.method public abstract setToIgnorePreloadForPlayBilling(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.end method
