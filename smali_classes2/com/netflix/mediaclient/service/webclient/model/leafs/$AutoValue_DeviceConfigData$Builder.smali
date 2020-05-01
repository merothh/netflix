.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private disableAccurateStartPoint:Ljava/lang/Boolean;

.field private disableLoginOverMsl:Ljava/lang/Boolean;

.field private forcedDeviceCategory:Ljava/lang/String;

.field private getAlertMsgForLocaleSupport:Ljava/lang/String;

.field private getAppMinVersion:Ljava/lang/Integer;

.field private getAppRecommendedVersion:Ljava/lang/Integer;

.field private getAppUpdateDialogFreqDays:Ljava/lang/Integer;

.field private getAudioFormats:Ljava/lang/Integer;

.field private getBreadcrumbLoggingSpecifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private getConsolidatedloggingSpecification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private getDisableCastFaststart:Ljava/lang/Boolean;

.field private getDisableLicensePrefetch:Ljava/lang/Boolean;

.field private getEnableLocalPlayback:Ljava/lang/Boolean;

.field private getEnableMdxRemoteControlLockScreen:Ljava/lang/Boolean;

.field private getEnableMdxRemoteControlNotification:Ljava/lang/Boolean;

.field private getErrorLoggingSpecifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private getGeoCountryCode:Ljava/lang/String;

.field private getImagePref:Ljava/lang/String;

.field private getLolomoCacheExpirationOverride:Ljava/lang/Integer;

.field private getLolomoPrefetchIntervalOverride:Ljava/lang/Integer;

.field private getMaxAppLifeDays:Ljava/lang/Integer;

.field private getMdxDisabled:Ljava/lang/Boolean;

.field private getMobileOnlyMinVersionCode:Ljava/lang/Integer;

.field private getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

.field private getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

.field private getPTAggregationSize:Ljava/lang/String;

.field private getRateLimitForGcmBrowseEvents:Ljava/lang/Integer;

.field private getRateLimitForGcmNListChangeEvents:Ljava/lang/Integer;

.field private getSignUpTimeout:Ljava/lang/String;

.field private getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

.field private getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

.field private getSuppressedLogblobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getUserSessionTimeoutDuration:Ljava/lang/Integer;

.field private getVideoResolutionOverride:Ljava/lang/Integer;

.field private getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

.field private getVoipInstallDeadlineInDays:Ljava/lang/Integer;

.field private getWebsocketDisabled:Ljava/lang/String;

.field private isAllowAv1Mobile:Ljava/lang/Boolean;

.field private isAllowHevcMobile:Ljava/lang/Boolean;

.field private isAllowVp9Mobile:Ljava/lang/Boolean;

.field private isBlacklisted:Ljava/lang/Boolean;

.field private isDisableLegacyNetflixMdx:Ljava/lang/Boolean;

.field private isDolbyVisionEnabled:Ljava/lang/Boolean;

.field private isEnableOfflineSecureDelete:Ljava/lang/Boolean;

.field private isEnabledWidevineL3SystemId4266:Ljava/lang/Boolean;

.field private isHdr10Enabled:Ljava/lang/Boolean;

.field private isHdrBrightnessBoostEnabled:Ljava/lang/Boolean;

.field private isMementoEnabledForWorld:Ljava/lang/Boolean;

.field private isPhonePortraitLockEnabled:Ljava/lang/Boolean;

.field private isPlayBillingDisabled:Ljava/lang/Boolean;

.field private isVoipEnabledOnDevice:Ljava/lang/Boolean;

.field private isWidevineL1Enabled:Ljava/lang/Boolean;

.field private partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

.field private pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

.field private shouldAlertForMissingLocale:Ljava/lang/Boolean;

.field private shouldDisableAmazonADM:Ljava/lang/Boolean;

.field private shouldDisablePip:Ljava/lang/Boolean;

.field private shouldDisableRoar:Ljava/lang/Boolean;

.field private shouldForceLegacyCrypto:Ljava/lang/Boolean;

.field private shouldGetNrmViaMsl:Ljava/lang/Boolean;

.field private toIgnorePreloadForPlayBilling:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 999
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V
    .locals 1

    .line 1001
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;-><init>()V

    .line 1002
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppMinVersion:Ljava/lang/Integer;

    .line 1003
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppRecommendedVersion:Ljava/lang/Integer;

    .line 1004
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getWebsocketDisabled:Ljava/lang/String;

    .line 1005
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMdxDisabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMdxDisabled:Ljava/lang/Boolean;

    .line 1006
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getImagePref:Ljava/lang/String;

    .line 1007
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSignUpTimeout:Ljava/lang/String;

    .line 1008
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getConsolidatedloggingSpecification()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getConsolidatedloggingSpecification:Ljava/util/List;

    .line 1009
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getUserSessionTimeoutDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getUserSessionTimeoutDuration:Ljava/lang/Integer;

    .line 1010
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getPTAggregationSize:Ljava/lang/String;

    .line 1011
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getBreadcrumbLoggingSpecifications()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    .line 1012
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getErrorLoggingSpecifications()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getErrorLoggingSpecifications:Ljava/util/List;

    .line 1013
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVideoResolutionOverride:Ljava/lang/Integer;

    .line 1014
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmBrowseEvents:Ljava/lang/Integer;

    .line 1015
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmNListChangeEvents:Ljava/lang/Integer;

    .line 1016
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableLocalPlayback()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableLocalPlayback:Ljava/lang/Boolean;

    .line 1017
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlLockScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlLockScreen:Ljava/lang/Boolean;

    .line 1018
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlNotification()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlNotification:Ljava/lang/Boolean;

    .line 1019
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isWidevineL1Enabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isWidevineL1Enabled:Ljava/lang/Boolean;

    .line 1020
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldForceLegacyCrypto()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldForceLegacyCrypto:Ljava/lang/Boolean;

    .line 1021
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAudioFormats()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAudioFormats:Ljava/lang/Integer;

    .line 1022
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForMissingLocale()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldAlertForMissingLocale:Ljava/lang/Boolean;

    .line 1023
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    .line 1024
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isVoipEnabledOnDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isVoipEnabledOnDevice:Ljava/lang/Boolean;

    .line 1025
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    .line 1026
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    .line 1027
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 1028
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPlayBillingDisabled:Ljava/lang/Boolean;

    .line 1029
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePreloadForPlayBilling()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->toIgnorePreloadForPlayBilling:Ljava/lang/Boolean;

    .line 1030
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getGeoCountryCode:Ljava/lang/String;

    .line 1031
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableCastFaststart()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableCastFaststart:Ljava/lang/Boolean;

    .line 1032
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isMementoEnabledForWorld()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isMementoEnabledForWorld:Ljava/lang/Boolean;

    .line 1033
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableLicensePrefetch()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableLicensePrefetch:Ljava/lang/Boolean;

    .line 1034
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableRoar()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableRoar:Ljava/lang/Boolean;

    .line 1035
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowHevcMobile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowHevcMobile:Ljava/lang/Boolean;

    .line 1036
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowVp9Mobile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowVp9Mobile:Ljava/lang/Boolean;

    .line 1037
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowAv1Mobile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowAv1Mobile:Ljava/lang/Boolean;

    .line 1038
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdr10Enabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdr10Enabled:Ljava/lang/Boolean;

    .line 1039
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDolbyVisionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDolbyVisionEnabled:Ljava/lang/Boolean;

    .line 1040
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getStreamingCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    .line 1041
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    .line 1042
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnabledWidevineL3SystemId4266()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnabledWidevineL3SystemId4266:Ljava/lang/Boolean;

    .line 1043
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDisableLegacyNetflixMdx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDisableLegacyNetflixMdx:Ljava/lang/Boolean;

    .line 1044
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPhonePortraitLockEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPhonePortraitLockEnabled:Ljava/lang/Boolean;

    .line 1045
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->pdsAndLogblobConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    .line 1046
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isBlacklisted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isBlacklisted:Ljava/lang/Boolean;

    .line 1047
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnableOfflineSecureDelete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnableOfflineSecureDelete:Ljava/lang/Boolean;

    .line 1048
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableLoginOverMsl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableLoginOverMsl:Ljava/lang/Boolean;

    .line 1049
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoPrefetchIntervalOverride()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoPrefetchIntervalOverride:Ljava/lang/Integer;

    .line 1050
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoCacheExpirationOverride()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoCacheExpirationOverride:Ljava/lang/Integer;

    .line 1051
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAccurateStartPoint()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableAccurateStartPoint:Ljava/lang/Boolean;

    .line 1052
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisablePip()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisablePip:Ljava/lang/Boolean;

    .line 1053
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableAmazonADM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableAmazonADM:Ljava/lang/Boolean;

    .line 1054
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldGetNrmViaMsl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldGetNrmViaMsl:Ljava/lang/Boolean;

    .line 1055
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipInstallDeadlineInDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipInstallDeadlineInDays:Ljava/lang/Integer;

    .line 1056
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->forcedDeviceCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->forcedDeviceCategory:Ljava/lang/String;

    .line 1057
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->partnerIntegrationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    .line 1058
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMaxAppLifeDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMaxAppLifeDays:Ljava/lang/Integer;

    .line 1059
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppUpdateDialogFreqDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppUpdateDialogFreqDays:Ljava/lang/Integer;

    .line 1060
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMobileOnlyMinVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMobileOnlyMinVersionCode:Ljava/lang/Integer;

    .line 1061
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdrBrightnessBoostEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdrBrightnessBoostEnabled:Ljava/lang/Boolean;

    .line 1062
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSuppressedLogblobs()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSuppressedLogblobs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$1;)V
    .locals 0

    .line 937
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
    .locals 65

    move-object/from16 v0, p0

    .line 1405
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppMinVersion:Ljava/lang/Integer;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getAppMinVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1408
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppRecommendedVersion:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getAppRecommendedVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1411
    :cond_1
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMdxDisabled:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getMdxDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1414
    :cond_2
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getConsolidatedloggingSpecification:Ljava/util/List;

    if-nez v1, :cond_3

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getConsolidatedloggingSpecification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1417
    :cond_3
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getUserSessionTimeoutDuration:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 1418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getUserSessionTimeoutDuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1420
    :cond_4
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    if-nez v1, :cond_5

    .line 1421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getBreadcrumbLoggingSpecifications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    :cond_5
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getErrorLoggingSpecifications:Ljava/util/List;

    if-nez v1, :cond_6

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getErrorLoggingSpecifications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1426
    :cond_6
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVideoResolutionOverride:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getVideoResolutionOverride"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1429
    :cond_7
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmBrowseEvents:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getRateLimitForGcmBrowseEvents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1432
    :cond_8
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmNListChangeEvents:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getRateLimitForGcmNListChangeEvents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1435
    :cond_9
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableLocalPlayback:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getEnableLocalPlayback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1438
    :cond_a
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlLockScreen:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getEnableMdxRemoteControlLockScreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1441
    :cond_b
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlNotification:Ljava/lang/Boolean;

    if-nez v1, :cond_c

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getEnableMdxRemoteControlNotification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1444
    :cond_c
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isWidevineL1Enabled:Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isWidevineL1Enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1447
    :cond_d
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldForceLegacyCrypto:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldForceLegacyCrypto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1450
    :cond_e
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAudioFormats:Ljava/lang/Integer;

    if-nez v1, :cond_f

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getAudioFormats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1453
    :cond_f
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldAlertForMissingLocale:Ljava/lang/Boolean;

    if-nez v1, :cond_10

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldAlertForMissingLocale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1456
    :cond_10
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isVoipEnabledOnDevice:Ljava/lang/Boolean;

    if-nez v1, :cond_11

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isVoipEnabledOnDevice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1459
    :cond_11
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    if-nez v1, :cond_12

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getVoipConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1462
    :cond_12
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    if-nez v1, :cond_13

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getOfflineConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1465
    :cond_13
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    if-nez v1, :cond_14

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getSubtitleDownloadRetryPolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1468
    :cond_14
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPlayBillingDisabled:Ljava/lang/Boolean;

    if-nez v1, :cond_15

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isPlayBillingDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1471
    :cond_15
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->toIgnorePreloadForPlayBilling:Ljava/lang/Boolean;

    if-nez v1, :cond_16

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " toIgnorePreloadForPlayBilling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1474
    :cond_16
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableCastFaststart:Ljava/lang/Boolean;

    if-nez v1, :cond_17

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getDisableCastFaststart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1477
    :cond_17
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isMementoEnabledForWorld:Ljava/lang/Boolean;

    if-nez v1, :cond_18

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isMementoEnabledForWorld"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1480
    :cond_18
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableLicensePrefetch:Ljava/lang/Boolean;

    if-nez v1, :cond_19

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getDisableLicensePrefetch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1483
    :cond_19
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableRoar:Ljava/lang/Boolean;

    if-nez v1, :cond_1a

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldDisableRoar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1486
    :cond_1a
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowHevcMobile:Ljava/lang/Boolean;

    if-nez v1, :cond_1b

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isAllowHevcMobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    :cond_1b
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowVp9Mobile:Ljava/lang/Boolean;

    if-nez v1, :cond_1c

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isAllowVp9Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1492
    :cond_1c
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowAv1Mobile:Ljava/lang/Boolean;

    if-nez v1, :cond_1d

    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isAllowAv1Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1495
    :cond_1d
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdr10Enabled:Ljava/lang/Boolean;

    if-nez v1, :cond_1e

    .line 1496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isHdr10Enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1498
    :cond_1e
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDolbyVisionEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_1f

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDolbyVisionEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    :cond_1f
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    if-nez v1, :cond_20

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getStreamingCodecPrefData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1504
    :cond_20
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    if-nez v1, :cond_21

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getOfflineCodecPrefData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1507
    :cond_21
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnabledWidevineL3SystemId4266:Ljava/lang/Boolean;

    if-nez v1, :cond_22

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isEnabledWidevineL3SystemId4266"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1510
    :cond_22
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDisableLegacyNetflixMdx:Ljava/lang/Boolean;

    if-nez v1, :cond_23

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDisableLegacyNetflixMdx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    :cond_23
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPhonePortraitLockEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_24

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isPhonePortraitLockEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1516
    :cond_24
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    if-nez v1, :cond_25

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pdsAndLogblobConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1519
    :cond_25
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isBlacklisted:Ljava/lang/Boolean;

    if-nez v1, :cond_26

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isBlacklisted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1522
    :cond_26
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnableOfflineSecureDelete:Ljava/lang/Boolean;

    if-nez v1, :cond_27

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isEnableOfflineSecureDelete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    :cond_27
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableLoginOverMsl:Ljava/lang/Boolean;

    if-nez v1, :cond_28

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disableLoginOverMsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1528
    :cond_28
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoPrefetchIntervalOverride:Ljava/lang/Integer;

    if-nez v1, :cond_29

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getLolomoPrefetchIntervalOverride"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1531
    :cond_29
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoCacheExpirationOverride:Ljava/lang/Integer;

    if-nez v1, :cond_2a

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getLolomoCacheExpirationOverride"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1534
    :cond_2a
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableAccurateStartPoint:Ljava/lang/Boolean;

    if-nez v1, :cond_2b

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disableAccurateStartPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1537
    :cond_2b
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisablePip:Ljava/lang/Boolean;

    if-nez v1, :cond_2c

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldDisablePip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1540
    :cond_2c
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableAmazonADM:Ljava/lang/Boolean;

    if-nez v1, :cond_2d

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldDisableAmazonADM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1543
    :cond_2d
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldGetNrmViaMsl:Ljava/lang/Boolean;

    if-nez v1, :cond_2e

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldGetNrmViaMsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1546
    :cond_2e
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipInstallDeadlineInDays:Ljava/lang/Integer;

    if-nez v1, :cond_2f

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getVoipInstallDeadlineInDays"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1549
    :cond_2f
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    if-nez v1, :cond_30

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " partnerIntegrationConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1552
    :cond_30
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMaxAppLifeDays:Ljava/lang/Integer;

    if-nez v1, :cond_31

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getMaxAppLifeDays"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1555
    :cond_31
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppUpdateDialogFreqDays:Ljava/lang/Integer;

    if-nez v1, :cond_32

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getAppUpdateDialogFreqDays"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1558
    :cond_32
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMobileOnlyMinVersionCode:Ljava/lang/Integer;

    if-nez v1, :cond_33

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getMobileOnlyMinVersionCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    :cond_33
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdrBrightnessBoostEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_34

    .line 1562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isHdrBrightnessBoostEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1564
    :cond_34
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSuppressedLogblobs:Ljava/util/List;

    if-nez v1, :cond_35

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getSuppressedLogblobs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1567
    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1570
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData;

    move-object v3, v1

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppMinVersion:Ljava/lang/Integer;

    .line 1571
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppRecommendedVersion:Ljava/lang/Integer;

    .line 1572
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getWebsocketDisabled:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMdxDisabled:Ljava/lang/Boolean;

    .line 1574
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getImagePref:Ljava/lang/String;

    iget-object v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSignUpTimeout:Ljava/lang/String;

    iget-object v10, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getConsolidatedloggingSpecification:Ljava/util/List;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getUserSessionTimeoutDuration:Ljava/lang/Integer;

    .line 1578
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getPTAggregationSize:Ljava/lang/String;

    iget-object v13, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    iget-object v14, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getErrorLoggingSpecifications:Ljava/util/List;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVideoResolutionOverride:Ljava/lang/Integer;

    .line 1582
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmBrowseEvents:Ljava/lang/Integer;

    .line 1583
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmNListChangeEvents:Ljava/lang/Integer;

    .line 1584
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableLocalPlayback:Ljava/lang/Boolean;

    .line 1585
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlLockScreen:Ljava/lang/Boolean;

    .line 1586
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlNotification:Ljava/lang/Boolean;

    .line 1587
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isWidevineL1Enabled:Ljava/lang/Boolean;

    .line 1588
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldForceLegacyCrypto:Ljava/lang/Boolean;

    .line 1589
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAudioFormats:Ljava/lang/Integer;

    .line 1590
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldAlertForMissingLocale:Ljava/lang/Boolean;

    .line 1591
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isVoipEnabledOnDevice:Ljava/lang/Boolean;

    .line 1593
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-object/from16 v29, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPlayBillingDisabled:Ljava/lang/Boolean;

    .line 1597
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->toIgnorePreloadForPlayBilling:Ljava/lang/Boolean;

    .line 1598
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getGeoCountryCode:Ljava/lang/String;

    move-object/from16 v32, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableCastFaststart:Ljava/lang/Boolean;

    .line 1600
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isMementoEnabledForWorld:Ljava/lang/Boolean;

    .line 1601
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableLicensePrefetch:Ljava/lang/Boolean;

    .line 1602
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableRoar:Ljava/lang/Boolean;

    .line 1603
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowHevcMobile:Ljava/lang/Boolean;

    .line 1604
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowVp9Mobile:Ljava/lang/Boolean;

    .line 1605
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowAv1Mobile:Ljava/lang/Boolean;

    .line 1606
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v39

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdr10Enabled:Ljava/lang/Boolean;

    .line 1607
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDolbyVisionEnabled:Ljava/lang/Boolean;

    .line 1608
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-object/from16 v42, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-object/from16 v43, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnabledWidevineL3SystemId4266:Ljava/lang/Boolean;

    .line 1611
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDisableLegacyNetflixMdx:Ljava/lang/Boolean;

    .line 1612
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPhonePortraitLockEnabled:Ljava/lang/Boolean;

    .line 1613
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-object/from16 v47, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isBlacklisted:Ljava/lang/Boolean;

    .line 1615
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnableOfflineSecureDelete:Ljava/lang/Boolean;

    .line 1616
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableLoginOverMsl:Ljava/lang/Boolean;

    .line 1617
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v50

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoPrefetchIntervalOverride:Ljava/lang/Integer;

    .line 1618
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v51

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoCacheExpirationOverride:Ljava/lang/Integer;

    .line 1619
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v52

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableAccurateStartPoint:Ljava/lang/Boolean;

    .line 1620
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisablePip:Ljava/lang/Boolean;

    .line 1621
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableAmazonADM:Ljava/lang/Boolean;

    .line 1622
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v55

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldGetNrmViaMsl:Ljava/lang/Boolean;

    .line 1623
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v56

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipInstallDeadlineInDays:Ljava/lang/Integer;

    .line 1624
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v57

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->forcedDeviceCategory:Ljava/lang/String;

    move-object/from16 v58, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-object/from16 v59, v2

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMaxAppLifeDays:Ljava/lang/Integer;

    .line 1627
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v60

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppUpdateDialogFreqDays:Ljava/lang/Integer;

    .line 1628
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v61

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMobileOnlyMinVersionCode:Ljava/lang/Integer;

    .line 1629
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v62

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdrBrightnessBoostEnabled:Ljava/lang/Boolean;

    .line 1630
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v63

    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSuppressedLogblobs:Ljava/util/List;

    move-object/from16 v64, v2

    invoke-direct/range {v3 .. v64}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData;-><init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;IIIZZZZZIZLjava/lang/String;ZLcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;ZZLjava/lang/String;ZZZZZZZZZLcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;ZZZLcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;ZZZIIZZZZILjava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;IIIZLjava/util/List;)V

    return-object v1

    .line 1568
    :cond_36
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDisableAccurateStartPoint(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1338
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableAccurateStartPoint:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisableLoginOverMsl(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1323
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->disableLoginOverMsl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setForcedDeviceCategory(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1363
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->forcedDeviceCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setGetAlertMsgForLocaleSupport(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    return-object p0
.end method

.method public setGetAppMinVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1066
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppMinVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetAppRecommendedVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1071
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppRecommendedVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetAppUpdateDialogFreqDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAppUpdateDialogFreqDays:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetAudioFormats(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getAudioFormats:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetBreadcrumbLoggingSpecifications(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1117
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    return-object p0

    .line 1115
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getBreadcrumbLoggingSpecifications"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetConsolidatedloggingSpecification(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1099
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getConsolidatedloggingSpecification:Ljava/util/List;

    return-object p0

    .line 1097
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getConsolidatedloggingSpecification"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetDisableCastFaststart(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableCastFaststart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGetDisableLicensePrefetch(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1239
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getDisableLicensePrefetch:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGetEnableLocalPlayback(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableLocalPlayback:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGetEnableMdxRemoteControlLockScreen(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlLockScreen:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGetEnableMdxRemoteControlNotification(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1155
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getEnableMdxRemoteControlNotification:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGetErrorLoggingSpecifications(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1125
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getErrorLoggingSpecifications:Ljava/util/List;

    return-object p0

    .line 1123
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getErrorLoggingSpecifications"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetGeoCountryCode(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1224
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getGeoCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public setGetImagePref(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getImagePref:Ljava/lang/String;

    return-object p0
.end method

.method public setGetLolomoCacheExpirationOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoCacheExpirationOverride:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetLolomoPrefetchIntervalOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1328
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getLolomoPrefetchIntervalOverride:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetMaxAppLifeDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMaxAppLifeDays:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetMdxDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1081
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMdxDisabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGetMobileOnlyMinVersionCode(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getMobileOnlyMinVersionCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetOfflineCodecPrefData(Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1285
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    return-object p0

    .line 1283
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getOfflineCodecPrefData"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetOfflineConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1201
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object p0

    .line 1199
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getOfflineConfig"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetPTAggregationSize(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getPTAggregationSize:Ljava/lang/String;

    return-object p0
.end method

.method public setGetRateLimitForGcmBrowseEvents(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmBrowseEvents:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetRateLimitForGcmNListChangeEvents(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getRateLimitForGcmNListChangeEvents:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetSignUpTimeout(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSignUpTimeout:Ljava/lang/String;

    return-object p0
.end method

.method public setGetStreamingCodecPrefData(Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1277
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    return-object p0

    .line 1275
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getStreamingCodecPrefData"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetSubtitleDownloadRetryPolicy(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1209
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object p0

    .line 1207
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getSubtitleDownloadRetryPolicy"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetSuppressedLogblobs(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1399
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getSuppressedLogblobs:Ljava/util/List;

    return-object p0

    .line 1397
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getSuppressedLogblobs"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetUserSessionTimeoutDuration(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getUserSessionTimeoutDuration:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetVideoResolutionOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVideoResolutionOverride:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetVoipConfiguration(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1193
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object p0

    .line 1191
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null getVoipConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGetVoipInstallDeadlineInDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1358
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getVoipInstallDeadlineInDays:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGetWebsocketDisabled(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->getWebsocketDisabled:Ljava/lang/String;

    return-object p0
.end method

.method public setIsAllowAv1Mobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1259
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowAv1Mobile:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsAllowHevcMobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowHevcMobile:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsAllowVp9Mobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1254
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isAllowVp9Mobile:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsBlacklisted(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1313
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isBlacklisted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsDisableLegacyNetflixMdx(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDisableLegacyNetflixMdx:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsDolbyVisionEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1269
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isDolbyVisionEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsEnableOfflineSecureDelete(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1318
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnableOfflineSecureDelete:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsEnabledWidevineL3SystemId4266(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isEnabledWidevineL3SystemId4266:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsHdr10Enabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdr10Enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsHdrBrightnessBoostEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1391
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isHdrBrightnessBoostEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsMementoEnabledForWorld(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isMementoEnabledForWorld:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsPhonePortraitLockEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1300
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPhonePortraitLockEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsPlayBillingDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1214
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isPlayBillingDisabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsVoipEnabledOnDevice(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isVoipEnabledOnDevice:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsWidevineL1Enabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->isWidevineL1Enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPartnerIntegrationConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1371
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    return-object p0

    .line 1369
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null partnerIntegrationConfig"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPdsAndLogblobConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1308
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    return-object p0

    .line 1306
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null pdsAndLogblobConfig"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShouldAlertForMissingLocale(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1175
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldAlertForMissingLocale:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShouldDisableAmazonADM(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1348
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableAmazonADM:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShouldDisablePip(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1343
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisablePip:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShouldDisableRoar(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldDisableRoar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShouldForceLegacyCrypto(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1165
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldForceLegacyCrypto:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShouldGetNrmViaMsl(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1353
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->shouldGetNrmViaMsl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setToIgnorePreloadForPlayBilling(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 0

    .line 1219
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;->toIgnorePreloadForPlayBilling:Ljava/lang/Boolean;

    return-object p0
.end method
