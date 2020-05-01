.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultDisableAccurateStartPoint:Z

.field private defaultDisableLoginOverMsl:Z

.field private defaultForcedDeviceCategory:Ljava/lang/String;

.field private defaultGetAlertMsgForLocaleSupport:Ljava/lang/String;

.field private defaultGetAppMinVersion:I

.field private defaultGetAppRecommendedVersion:I

.field private defaultGetAppUpdateDialogFreqDays:I

.field private defaultGetAudioFormats:I

.field private defaultGetBreadcrumbLoggingSpecifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private defaultGetConsolidatedloggingSpecification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private defaultGetDisableCastFaststart:Z

.field private defaultGetDisableLicensePrefetch:Z

.field private defaultGetEnableLocalPlayback:Z

.field private defaultGetEnableMdxRemoteControlLockScreen:Z

.field private defaultGetEnableMdxRemoteControlNotification:Z

.field private defaultGetErrorLoggingSpecifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private defaultGetGeoCountryCode:Ljava/lang/String;

.field private defaultGetImagePref:Ljava/lang/String;

.field private defaultGetLolomoCacheExpirationOverride:I

.field private defaultGetLolomoPrefetchIntervalOverride:I

.field private defaultGetMaxAppLifeDays:I

.field private defaultGetMdxDisabled:Z

.field private defaultGetMobileOnlyMinVersionCode:I

.field private defaultGetOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

.field private defaultGetOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

.field private defaultGetPTAggregationSize:Ljava/lang/String;

.field private defaultGetRateLimitForGcmBrowseEvents:I

.field private defaultGetRateLimitForGcmNListChangeEvents:I

.field private defaultGetSignUpTimeout:Ljava/lang/String;

.field private defaultGetStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

.field private defaultGetSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

.field private defaultGetSuppressedLogblobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultGetUserSessionTimeoutDuration:I

.field private defaultGetVideoResolutionOverride:I

.field private defaultGetVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

.field private defaultGetVoipInstallDeadlineInDays:I

.field private defaultGetWebsocketDisabled:Ljava/lang/String;

.field private defaultIsAllowAv1Mobile:Z

.field private defaultIsAllowHevcMobile:Z

.field private defaultIsAllowVp9Mobile:Z

.field private defaultIsBlacklisted:Z

.field private defaultIsDisableLegacyNetflixMdx:Z

.field private defaultIsDolbyVisionEnabled:Z

.field private defaultIsEnableOfflineSecureDelete:Z

.field private defaultIsEnabledWidevineL3SystemId4266:Z

.field private defaultIsHdr10Enabled:Z

.field private defaultIsHdrBrightnessBoostEnabled:Z

.field private defaultIsMementoEnabledForWorld:Z

.field private defaultIsPhonePortraitLockEnabled:Z

.field private defaultIsPlayBillingDisabled:Z

.field private defaultIsVoipEnabledOnDevice:Z

.field private defaultIsWidevineL1Enabled:Z

.field private defaultPartnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

.field private defaultPdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

.field private defaultShouldAlertForMissingLocale:Z

.field private defaultShouldDisableAmazonADM:Z

.field private defaultShouldDisablePip:Z

.field private defaultShouldDisableRoar:Z

.field private defaultShouldForceLegacyCrypto:Z

.field private defaultShouldGetNrmViaMsl:Z

.field private defaultToIgnorePreloadForPlayBilling:Z

.field private final disableAccurateStartPointAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final disableLoginOverMslAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final forcedDeviceCategoryAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getAlertMsgForLocaleSupportAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getAppMinVersionAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getAppRecommendedVersionAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getAppUpdateDialogFreqDaysAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getAudioFormatsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getBreadcrumbLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getConsolidatedloggingSpecificationAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getDisableCastFaststartAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final getDisableLicensePrefetchAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final getEnableLocalPlaybackAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final getEnableMdxRemoteControlLockScreenAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final getEnableMdxRemoteControlNotificationAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final getErrorLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getGeoCountryCodeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getImagePrefAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getLolomoCacheExpirationOverrideAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getLolomoPrefetchIntervalOverrideAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getMaxAppLifeDaysAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getMdxDisabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final getMobileOnlyMinVersionCodeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getOfflineCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;",
            ">;"
        }
    .end annotation
.end field

.field private final getOfflineConfigAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final getPTAggregationSizeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getRateLimitForGcmBrowseEventsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getRateLimitForGcmNListChangeEventsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getSignUpTimeoutAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getStreamingCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;",
            ">;"
        }
    .end annotation
.end field

.field private final getSubtitleDownloadRetryPolicyAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final getSuppressedLogblobsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getUserSessionTimeoutDurationAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getVideoResolutionOverrideAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getVoipConfigurationAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final getVoipInstallDeadlineInDaysAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final getWebsocketDisabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isAllowAv1MobileAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isAllowHevcMobileAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isAllowVp9MobileAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isBlacklistedAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isDisableLegacyNetflixMdxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isDolbyVisionEnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isEnableOfflineSecureDeleteAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isEnabledWidevineL3SystemId4266Adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isHdr10EnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isHdrBrightnessBoostEnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isMementoEnabledForWorldAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isPhonePortraitLockEnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isPlayBillingDisabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isVoipEnabledOnDeviceAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isWidevineL1EnabledAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final partnerIntegrationConfigAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final pdsAndLogblobConfigAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldAlertForMissingLocaleAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldDisableAmazonADMAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldDisablePipAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldDisableRoarAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldForceLegacyCryptoAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldGetNrmViaMslAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final toIgnorePreloadForPlayBillingAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 5

    .line 173
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppMinVersion:I

    .line 113
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppRecommendedVersion:I

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetWebsocketDisabled:Ljava/lang/String;

    .line 115
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMdxDisabled:Z

    .line 116
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetImagePref:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSignUpTimeout:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetConsolidatedloggingSpecification:Ljava/util/List;

    .line 119
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetUserSessionTimeoutDuration:I

    .line 120
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetPTAggregationSize:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetBreadcrumbLoggingSpecifications:Ljava/util/List;

    .line 122
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetErrorLoggingSpecifications:Ljava/util/List;

    .line 123
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVideoResolutionOverride:I

    .line 124
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetRateLimitForGcmBrowseEvents:I

    .line 125
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetRateLimitForGcmNListChangeEvents:I

    .line 126
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableLocalPlayback:Z

    .line 127
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableMdxRemoteControlLockScreen:Z

    .line 128
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableMdxRemoteControlNotification:Z

    .line 129
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsWidevineL1Enabled:Z

    .line 130
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldForceLegacyCrypto:Z

    .line 131
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAudioFormats:I

    .line 132
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldAlertForMissingLocale:Z

    .line 133
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAlertMsgForLocaleSupport:Ljava/lang/String;

    .line 134
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsVoipEnabledOnDevice:Z

    .line 135
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    .line 136
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    .line 137
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 138
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsPlayBillingDisabled:Z

    .line 139
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultToIgnorePreloadForPlayBilling:Z

    .line 140
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetGeoCountryCode:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetDisableCastFaststart:Z

    .line 142
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsMementoEnabledForWorld:Z

    .line 143
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetDisableLicensePrefetch:Z

    .line 144
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisableRoar:Z

    .line 145
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowHevcMobile:Z

    .line 146
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowVp9Mobile:Z

    .line 147
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowAv1Mobile:Z

    .line 148
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsHdr10Enabled:Z

    .line 149
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsDolbyVisionEnabled:Z

    .line 150
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    .line 151
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    .line 152
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsEnabledWidevineL3SystemId4266:Z

    .line 153
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsDisableLegacyNetflixMdx:Z

    .line 154
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsPhonePortraitLockEnabled:Z

    .line 155
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultPdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    .line 156
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsBlacklisted:Z

    .line 157
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsEnableOfflineSecureDelete:Z

    .line 158
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultDisableLoginOverMsl:Z

    .line 159
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetLolomoPrefetchIntervalOverride:I

    .line 160
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetLolomoCacheExpirationOverride:I

    .line 161
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultDisableAccurateStartPoint:Z

    .line 162
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisablePip:Z

    .line 163
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisableAmazonADM:Z

    .line 164
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldGetNrmViaMsl:Z

    .line 165
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVoipInstallDeadlineInDays:I

    .line 166
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultForcedDeviceCategory:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultPartnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    .line 168
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMaxAppLifeDays:I

    .line 169
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppUpdateDialogFreqDays:I

    .line 170
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMobileOnlyMinVersionCode:I

    .line 171
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsHdrBrightnessBoostEnabled:Z

    .line 172
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSuppressedLogblobs:Ljava/util/List;

    .line 174
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppMinVersionAdapter:Lcom/google/gson/TypeAdapter;

    .line 175
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppRecommendedVersionAdapter:Lcom/google/gson/TypeAdapter;

    .line 176
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getWebsocketDisabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 177
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMdxDisabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 178
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getImagePrefAdapter:Lcom/google/gson/TypeAdapter;

    .line 179
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSignUpTimeoutAdapter:Lcom/google/gson/TypeAdapter;

    .line 180
    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getConsolidatedloggingSpecificationAdapter:Lcom/google/gson/TypeAdapter;

    .line 181
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getUserSessionTimeoutDurationAdapter:Lcom/google/gson/TypeAdapter;

    .line 182
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getPTAggregationSizeAdapter:Lcom/google/gson/TypeAdapter;

    .line 183
    const-class v1, Ljava/util/List;

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getBreadcrumbLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;

    .line 184
    const-class v1, Ljava/util/List;

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getErrorLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;

    .line 185
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVideoResolutionOverrideAdapter:Lcom/google/gson/TypeAdapter;

    .line 186
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getRateLimitForGcmBrowseEventsAdapter:Lcom/google/gson/TypeAdapter;

    .line 187
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getRateLimitForGcmNListChangeEventsAdapter:Lcom/google/gson/TypeAdapter;

    .line 188
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableLocalPlaybackAdapter:Lcom/google/gson/TypeAdapter;

    .line 189
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableMdxRemoteControlLockScreenAdapter:Lcom/google/gson/TypeAdapter;

    .line 190
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableMdxRemoteControlNotificationAdapter:Lcom/google/gson/TypeAdapter;

    .line 191
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isWidevineL1EnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 192
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldForceLegacyCryptoAdapter:Lcom/google/gson/TypeAdapter;

    .line 193
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAudioFormatsAdapter:Lcom/google/gson/TypeAdapter;

    .line 194
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldAlertForMissingLocaleAdapter:Lcom/google/gson/TypeAdapter;

    .line 195
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAlertMsgForLocaleSupportAdapter:Lcom/google/gson/TypeAdapter;

    .line 196
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isVoipEnabledOnDeviceAdapter:Lcom/google/gson/TypeAdapter;

    .line 197
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVoipConfigurationAdapter:Lcom/google/gson/TypeAdapter;

    .line 198
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getOfflineConfigAdapter:Lcom/google/gson/TypeAdapter;

    .line 199
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSubtitleDownloadRetryPolicyAdapter:Lcom/google/gson/TypeAdapter;

    .line 200
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isPlayBillingDisabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 201
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->toIgnorePreloadForPlayBillingAdapter:Lcom/google/gson/TypeAdapter;

    .line 202
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getGeoCountryCodeAdapter:Lcom/google/gson/TypeAdapter;

    .line 203
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getDisableCastFaststartAdapter:Lcom/google/gson/TypeAdapter;

    .line 204
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isMementoEnabledForWorldAdapter:Lcom/google/gson/TypeAdapter;

    .line 205
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getDisableLicensePrefetchAdapter:Lcom/google/gson/TypeAdapter;

    .line 206
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisableRoarAdapter:Lcom/google/gson/TypeAdapter;

    .line 207
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowHevcMobileAdapter:Lcom/google/gson/TypeAdapter;

    .line 208
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowVp9MobileAdapter:Lcom/google/gson/TypeAdapter;

    .line 209
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowAv1MobileAdapter:Lcom/google/gson/TypeAdapter;

    .line 210
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isHdr10EnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 211
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isDolbyVisionEnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 212
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getStreamingCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;

    .line 213
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getOfflineCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;

    .line 214
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isEnabledWidevineL3SystemId4266Adapter:Lcom/google/gson/TypeAdapter;

    .line 215
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isDisableLegacyNetflixMdxAdapter:Lcom/google/gson/TypeAdapter;

    .line 216
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isPhonePortraitLockEnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 217
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->pdsAndLogblobConfigAdapter:Lcom/google/gson/TypeAdapter;

    .line 218
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isBlacklistedAdapter:Lcom/google/gson/TypeAdapter;

    .line 219
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isEnableOfflineSecureDeleteAdapter:Lcom/google/gson/TypeAdapter;

    .line 220
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->disableLoginOverMslAdapter:Lcom/google/gson/TypeAdapter;

    .line 221
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getLolomoPrefetchIntervalOverrideAdapter:Lcom/google/gson/TypeAdapter;

    .line 222
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getLolomoCacheExpirationOverrideAdapter:Lcom/google/gson/TypeAdapter;

    .line 223
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->disableAccurateStartPointAdapter:Lcom/google/gson/TypeAdapter;

    .line 224
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisablePipAdapter:Lcom/google/gson/TypeAdapter;

    .line 225
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisableAmazonADMAdapter:Lcom/google/gson/TypeAdapter;

    .line 226
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldGetNrmViaMslAdapter:Lcom/google/gson/TypeAdapter;

    .line 227
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVoipInstallDeadlineInDaysAdapter:Lcom/google/gson/TypeAdapter;

    .line 228
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->forcedDeviceCategoryAdapter:Lcom/google/gson/TypeAdapter;

    .line 229
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->partnerIntegrationConfigAdapter:Lcom/google/gson/TypeAdapter;

    .line 230
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMaxAppLifeDaysAdapter:Lcom/google/gson/TypeAdapter;

    .line 231
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppUpdateDialogFreqDaysAdapter:Lcom/google/gson/TypeAdapter;

    .line 232
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMobileOnlyMinVersionCodeAdapter:Lcom/google/gson/TypeAdapter;

    .line 233
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isHdrBrightnessBoostEnabledAdapter:Lcom/google/gson/TypeAdapter;

    .line 234
    const-class v1, Ljava/util/List;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSuppressedLogblobsAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
    .locals 125

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 373
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 374
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppMinVersion:I

    .line 375
    iget v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppRecommendedVersion:I

    .line 376
    iget-object v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetWebsocketDisabled:Ljava/lang/String;

    .line 377
    iget-boolean v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMdxDisabled:Z

    .line 378
    iget-object v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetImagePref:Ljava/lang/String;

    .line 379
    iget-object v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSignUpTimeout:Ljava/lang/String;

    .line 380
    iget-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetConsolidatedloggingSpecification:Ljava/util/List;

    .line 381
    iget v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetUserSessionTimeoutDuration:I

    .line 382
    iget-object v10, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetPTAggregationSize:Ljava/lang/String;

    .line 383
    iget-object v11, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetBreadcrumbLoggingSpecifications:Ljava/util/List;

    .line 384
    iget-object v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetErrorLoggingSpecifications:Ljava/util/List;

    .line 385
    iget v13, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVideoResolutionOverride:I

    .line 386
    iget v14, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetRateLimitForGcmBrowseEvents:I

    .line 387
    iget v15, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetRateLimitForGcmNListChangeEvents:I

    move/from16 v16, v2

    .line 388
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableLocalPlayback:Z

    move/from16 v17, v2

    .line 389
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableMdxRemoteControlLockScreen:Z

    move/from16 v18, v2

    .line 390
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableMdxRemoteControlNotification:Z

    move/from16 v19, v2

    .line 391
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsWidevineL1Enabled:Z

    move/from16 v20, v2

    .line 392
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldForceLegacyCrypto:Z

    move/from16 v21, v2

    .line 393
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAudioFormats:I

    move/from16 v22, v2

    .line 394
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldAlertForMissingLocale:Z

    move/from16 v23, v2

    .line 395
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAlertMsgForLocaleSupport:Ljava/lang/String;

    move-object/from16 v24, v2

    .line 396
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsVoipEnabledOnDevice:Z

    move/from16 v25, v2

    .line 397
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-object/from16 v26, v2

    .line 398
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-object/from16 v27, v2

    .line 399
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-object/from16 v28, v2

    .line 400
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsPlayBillingDisabled:Z

    move/from16 v29, v2

    .line 401
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultToIgnorePreloadForPlayBilling:Z

    move/from16 v30, v2

    .line 402
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetGeoCountryCode:Ljava/lang/String;

    move-object/from16 v31, v2

    .line 403
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetDisableCastFaststart:Z

    move/from16 v32, v2

    .line 404
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsMementoEnabledForWorld:Z

    move/from16 v33, v2

    .line 405
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetDisableLicensePrefetch:Z

    move/from16 v34, v2

    .line 406
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisableRoar:Z

    move/from16 v35, v2

    .line 407
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowHevcMobile:Z

    move/from16 v36, v2

    .line 408
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowVp9Mobile:Z

    move/from16 v37, v2

    .line 409
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowAv1Mobile:Z

    move/from16 v38, v2

    .line 410
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsHdr10Enabled:Z

    move/from16 v39, v2

    .line 411
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsDolbyVisionEnabled:Z

    move/from16 v40, v2

    .line 412
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-object/from16 v41, v2

    .line 413
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-object/from16 v42, v2

    .line 414
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsEnabledWidevineL3SystemId4266:Z

    move/from16 v43, v2

    .line 415
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsDisableLegacyNetflixMdx:Z

    move/from16 v44, v2

    .line 416
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsPhonePortraitLockEnabled:Z

    move/from16 v45, v2

    .line 417
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultPdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-object/from16 v46, v2

    .line 418
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsBlacklisted:Z

    move/from16 v47, v2

    .line 419
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsEnableOfflineSecureDelete:Z

    move/from16 v48, v2

    .line 420
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultDisableLoginOverMsl:Z

    move/from16 v49, v2

    .line 421
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetLolomoPrefetchIntervalOverride:I

    move/from16 v50, v2

    .line 422
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetLolomoCacheExpirationOverride:I

    move/from16 v51, v2

    .line 423
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultDisableAccurateStartPoint:Z

    move/from16 v52, v2

    .line 424
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisablePip:Z

    move/from16 v53, v2

    .line 425
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisableAmazonADM:Z

    move/from16 v54, v2

    .line 426
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldGetNrmViaMsl:Z

    move/from16 v55, v2

    .line 427
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVoipInstallDeadlineInDays:I

    move/from16 v56, v2

    .line 428
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultForcedDeviceCategory:Ljava/lang/String;

    move-object/from16 v57, v2

    .line 429
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultPartnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-object/from16 v58, v2

    .line 430
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMaxAppLifeDays:I

    move/from16 v59, v2

    .line 431
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppUpdateDialogFreqDays:I

    move/from16 v60, v2

    .line 432
    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMobileOnlyMinVersionCode:I

    move/from16 v61, v2

    .line 433
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsHdrBrightnessBoostEnabled:Z

    move/from16 v62, v2

    .line 434
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSuppressedLogblobs:Ljava/util/List;

    move-object/from16 v124, v2

    move/from16 v65, v3

    move-object/from16 v66, v4

    move/from16 v67, v5

    move-object/from16 v68, v6

    move-object/from16 v69, v7

    move-object/from16 v70, v8

    move/from16 v71, v9

    move-object/from16 v72, v10

    move-object/from16 v73, v11

    move-object/from16 v74, v12

    move/from16 v75, v13

    move/from16 v76, v14

    move/from16 v77, v15

    move/from16 v64, v16

    move/from16 v78, v17

    move/from16 v79, v18

    move/from16 v80, v19

    move/from16 v81, v20

    move/from16 v82, v21

    move/from16 v83, v22

    move/from16 v84, v23

    move-object/from16 v85, v24

    move/from16 v86, v25

    move-object/from16 v87, v26

    move-object/from16 v88, v27

    move-object/from16 v89, v28

    move/from16 v90, v29

    move/from16 v91, v30

    move-object/from16 v92, v31

    move/from16 v93, v32

    move/from16 v94, v33

    move/from16 v95, v34

    move/from16 v96, v35

    move/from16 v97, v36

    move/from16 v98, v37

    move/from16 v99, v38

    move/from16 v100, v39

    move/from16 v101, v40

    move-object/from16 v102, v41

    move-object/from16 v103, v42

    move/from16 v104, v43

    move/from16 v105, v44

    move/from16 v106, v45

    move-object/from16 v107, v46

    move/from16 v108, v47

    move/from16 v109, v48

    move/from16 v110, v49

    move/from16 v111, v50

    move/from16 v112, v51

    move/from16 v113, v52

    move/from16 v114, v53

    move/from16 v115, v54

    move/from16 v116, v55

    move/from16 v117, v56

    move-object/from16 v118, v57

    move-object/from16 v119, v58

    move/from16 v120, v59

    move/from16 v121, v60

    move/from16 v122, v61

    move/from16 v123, v62

    .line 435
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 441
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "lolomoCacheExpirationOverride"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x30

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "partnerIntegrationConfig"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x37

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "disableLicensePrefetch"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "enableWidevineL3SystemId4266"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "audioFormats"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "disableCastFaststart"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "gcmBrowseEventRateLimitInSecs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "geoCountryCode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "offlineCodecPrefData"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x27

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "disable_mdx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "disableRoar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "enableDolbyVision"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "gcmNListChangeEventRateLimitInSecs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "enableHdrBrightnessBoost"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x3b

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "disableLoginOverMsl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2e

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "appUpdateDialogFreqDays"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x39

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "current_version"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "allowVp9Mobile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "signup_timeout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "voipConfig"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_14
    const-string v4, "nrmViaMsl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x34

    goto/16 :goto_1

    :sswitch_15
    const-string v4, "lockPhonePortraitEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2a

    goto/16 :goto_1

    :sswitch_16
    const-string v4, "subtitleDownloadRetryPolicy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_17
    const-string v4, "alertMsgForLocaleSupport"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_18
    const-string v4, "error_logging_config"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_19
    const-string v4, "forcedDeviceCategory"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x36

    goto/16 :goto_1

    :sswitch_1a
    const-string v4, "pdsAndLogblobConfig"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_1b
    const-string v4, "shouldAlertForLocaleSupport"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_1c
    const-string v4, "suppressedLogblobs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x3c

    goto/16 :goto_1

    :sswitch_1d
    const-string v4, "ignorePreloadForPlayBilling"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_1e
    const-string v4, "maxAppLifeDays"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x38

    goto/16 :goto_1

    :sswitch_1f
    const-string v4, "isBlacklisted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2c

    goto/16 :goto_1

    :sswitch_20
    const-string v4, "min_version"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_21
    const-string v4, "enableOfflineSecureDelete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_22
    const-string v4, "disableLegacyNetflixMdx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_23
    const-string v4, "disable_websocket"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_24
    const-string v4, "enableLocalPlayback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_25
    const-string v4, "consolidated_logging_specification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_26
    const-string v4, "voipEnabledOnDevice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_27
    const-string v4, "voipInstallDeadlineInDays"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x35

    goto/16 :goto_1

    :sswitch_28
    const-string v4, "allowAv1Mobile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_29
    const-string v4, "breadcrumb_logging_config"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2a
    const-string v4, "disableAmazonADM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x33

    goto/16 :goto_1

    :sswitch_2b
    const-string v4, "lolomoPrefetchIntervalOverride"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_2c
    const-string v4, "pt_aggregation_size"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_2d
    const-string v4, "user_session_timeout_duration"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_2e
    const-string v4, "disableAccurateStartPoint"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x31

    goto/16 :goto_1

    :sswitch_2f
    const-string v4, "image_pref"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_30
    const-string v4, "enableHdr10"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_31
    const-string v4, "offlineConfig"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_32
    const-string v4, "mementoEnabledForWorld"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_33
    const-string v4, "disablePip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x32

    goto :goto_1

    :sswitch_34
    const-string v4, "streamingCodecPrefData"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x26

    goto :goto_1

    :sswitch_35
    const-string v4, "enableMdxRemoteControlLockScreen"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xf

    goto :goto_1

    :sswitch_36
    const-string v4, "disablePlayBilling"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x1a

    goto :goto_1

    :sswitch_37
    const-string v4, "allowHevcMobile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x21

    goto :goto_1

    :sswitch_38
    const-string v4, "enableWidevineL1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x11

    goto :goto_1

    :sswitch_39
    const-string v4, "mobileOnlyMinVersionCode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x3a

    goto :goto_1

    :sswitch_3a
    const-string v4, "videoResolutionOverride"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_3b
    const-string v4, "forceLegacyCrypto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x12

    goto :goto_1

    :sswitch_3c
    const-string v4, "enableMdxRemoteControlNotification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x10

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 683
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSuppressedLogblobsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v124, v2

    goto/16 :goto_0

    .line 679
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isHdrBrightnessBoostEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v123, v2

    goto/16 :goto_0

    .line 675
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMobileOnlyMinVersionCodeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v122, v2

    goto/16 :goto_0

    .line 671
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppUpdateDialogFreqDaysAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v121, v2

    goto/16 :goto_0

    .line 667
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMaxAppLifeDaysAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v120, v2

    goto/16 :goto_0

    .line 663
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->partnerIntegrationConfigAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-object/from16 v119, v2

    goto/16 :goto_0

    .line 659
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->forcedDeviceCategoryAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v118, v2

    goto/16 :goto_0

    .line 655
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVoipInstallDeadlineInDaysAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v117, v2

    goto/16 :goto_0

    .line 651
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldGetNrmViaMslAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v116, v2

    goto/16 :goto_0

    .line 647
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisableAmazonADMAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v115, v2

    goto/16 :goto_0

    .line 643
    :pswitch_a
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisablePipAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v114, v2

    goto/16 :goto_0

    .line 639
    :pswitch_b
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->disableAccurateStartPointAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v113, v2

    goto/16 :goto_0

    .line 635
    :pswitch_c
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getLolomoCacheExpirationOverrideAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v112, v2

    goto/16 :goto_0

    .line 631
    :pswitch_d
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getLolomoPrefetchIntervalOverrideAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v111, v2

    goto/16 :goto_0

    .line 627
    :pswitch_e
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->disableLoginOverMslAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v110, v2

    goto/16 :goto_0

    .line 623
    :pswitch_f
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isEnableOfflineSecureDeleteAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v109, v2

    goto/16 :goto_0

    .line 619
    :pswitch_10
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isBlacklistedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v108, v2

    goto/16 :goto_0

    .line 615
    :pswitch_11
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->pdsAndLogblobConfigAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-object/from16 v107, v2

    goto/16 :goto_0

    .line 611
    :pswitch_12
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isPhonePortraitLockEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v106, v2

    goto/16 :goto_0

    .line 607
    :pswitch_13
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isDisableLegacyNetflixMdxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v105, v2

    goto/16 :goto_0

    .line 603
    :pswitch_14
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isEnabledWidevineL3SystemId4266Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v104, v2

    goto/16 :goto_0

    .line 599
    :pswitch_15
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getOfflineCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-object/from16 v103, v2

    goto/16 :goto_0

    .line 595
    :pswitch_16
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getStreamingCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-object/from16 v102, v2

    goto/16 :goto_0

    .line 591
    :pswitch_17
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isDolbyVisionEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v101, v2

    goto/16 :goto_0

    .line 587
    :pswitch_18
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isHdr10EnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v100, v2

    goto/16 :goto_0

    .line 583
    :pswitch_19
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowAv1MobileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v99, v2

    goto/16 :goto_0

    .line 579
    :pswitch_1a
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowVp9MobileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v98, v2

    goto/16 :goto_0

    .line 575
    :pswitch_1b
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowHevcMobileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v97, v2

    goto/16 :goto_0

    .line 571
    :pswitch_1c
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisableRoarAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v96, v2

    goto/16 :goto_0

    .line 567
    :pswitch_1d
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getDisableLicensePrefetchAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v95, v2

    goto/16 :goto_0

    .line 563
    :pswitch_1e
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isMementoEnabledForWorldAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v94, v2

    goto/16 :goto_0

    .line 559
    :pswitch_1f
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getDisableCastFaststartAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v93, v2

    goto/16 :goto_0

    .line 555
    :pswitch_20
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getGeoCountryCodeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v92, v2

    goto/16 :goto_0

    .line 551
    :pswitch_21
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->toIgnorePreloadForPlayBillingAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v91, v2

    goto/16 :goto_0

    .line 547
    :pswitch_22
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isPlayBillingDisabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v90, v2

    goto/16 :goto_0

    .line 543
    :pswitch_23
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSubtitleDownloadRetryPolicyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-object/from16 v89, v2

    goto/16 :goto_0

    .line 539
    :pswitch_24
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getOfflineConfigAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-object/from16 v88, v2

    goto/16 :goto_0

    .line 535
    :pswitch_25
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVoipConfigurationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-object/from16 v87, v2

    goto/16 :goto_0

    .line 531
    :pswitch_26
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isVoipEnabledOnDeviceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v86, v2

    goto/16 :goto_0

    .line 527
    :pswitch_27
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAlertMsgForLocaleSupportAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v85, v2

    goto/16 :goto_0

    .line 523
    :pswitch_28
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldAlertForMissingLocaleAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v84, v2

    goto/16 :goto_0

    .line 519
    :pswitch_29
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAudioFormatsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v83, v2

    goto/16 :goto_0

    .line 515
    :pswitch_2a
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldForceLegacyCryptoAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v82, v2

    goto/16 :goto_0

    .line 511
    :pswitch_2b
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isWidevineL1EnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v81, v2

    goto/16 :goto_0

    .line 507
    :pswitch_2c
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableMdxRemoteControlNotificationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v80, v2

    goto/16 :goto_0

    .line 503
    :pswitch_2d
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableMdxRemoteControlLockScreenAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v79, v2

    goto/16 :goto_0

    .line 499
    :pswitch_2e
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableLocalPlaybackAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v78, v2

    goto/16 :goto_0

    .line 495
    :pswitch_2f
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getRateLimitForGcmNListChangeEventsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v77, v2

    goto/16 :goto_0

    .line 491
    :pswitch_30
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getRateLimitForGcmBrowseEventsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v76, v2

    goto/16 :goto_0

    .line 487
    :pswitch_31
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVideoResolutionOverrideAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v75, v2

    goto/16 :goto_0

    .line 483
    :pswitch_32
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getErrorLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v74, v2

    goto/16 :goto_0

    .line 479
    :pswitch_33
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getBreadcrumbLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v73, v2

    goto/16 :goto_0

    .line 475
    :pswitch_34
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getPTAggregationSizeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v72, v2

    goto/16 :goto_0

    .line 471
    :pswitch_35
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getUserSessionTimeoutDurationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v71, v2

    goto/16 :goto_0

    .line 467
    :pswitch_36
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getConsolidatedloggingSpecificationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v70, v2

    goto/16 :goto_0

    .line 463
    :pswitch_37
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSignUpTimeoutAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v69, v2

    goto/16 :goto_0

    .line 459
    :pswitch_38
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getImagePrefAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v68, v2

    goto/16 :goto_0

    .line 455
    :pswitch_39
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMdxDisabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v67, v2

    goto/16 :goto_0

    .line 451
    :pswitch_3a
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getWebsocketDisabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v66, v2

    goto/16 :goto_0

    .line 447
    :pswitch_3b
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppRecommendedVersionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v65, v2

    goto/16 :goto_0

    .line 443
    :pswitch_3c
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppMinVersionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v64, v2

    goto/16 :goto_0

    .line 691
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 692
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData;

    move-object/from16 v63, v1

    invoke-direct/range {v63 .. v124}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData;-><init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;IIIZZZZZIZLjava/lang/String;ZLcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;ZZLjava/lang/String;ZZZZZZZZZLcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;ZZZLcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;ZZZIIZZZZILjava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;IIIZLjava/util/List;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x79e5c6dc -> :sswitch_3c
        -0x73ba138b -> :sswitch_3b
        -0x71f6ab8d -> :sswitch_3a
        -0x6ee97bbf -> :sswitch_39
        -0x6da4befb -> :sswitch_38
        -0x6a84722b -> :sswitch_37
        -0x66ecef61 -> :sswitch_36
        -0x66adf010 -> :sswitch_35
        -0x634e7e9f -> :sswitch_34
        -0x607eb271 -> :sswitch_33
        -0x587ad6cf -> :sswitch_32
        -0x5800b8fb -> :sswitch_31
        -0x5675682e -> :sswitch_30
        -0x5600ad79 -> :sswitch_2f
        -0x55b78696 -> :sswitch_2e
        -0x552ac0d1 -> :sswitch_2d
        -0x51ea73e7 -> :sswitch_2c
        -0x513771b0 -> :sswitch_2b
        -0x4c4e3602 -> :sswitch_2a
        -0x3f6d2c22 -> :sswitch_29
        -0x3e854eeb -> :sswitch_28
        -0x3d4d3bb1 -> :sswitch_27
        -0x3c36fa4a -> :sswitch_26
        -0x3540ef21 -> :sswitch_25
        -0x2be62a1d -> :sswitch_24
        -0x215048d0 -> :sswitch_23
        -0x18f9e780 -> :sswitch_22
        -0x14980cfe -> :sswitch_21
        -0x11940815 -> :sswitch_20
        -0x10fd010e -> :sswitch_1f
        -0x107d2150 -> :sswitch_1e
        -0x8b7a02b -> :sswitch_1d
        -0x7498a1a -> :sswitch_1c
        -0x4da10ab -> :sswitch_1b
        -0x1e029f5 -> :sswitch_1a
        -0x12c4753 -> :sswitch_19
        -0x99b8c7 -> :sswitch_18
        0xb34f471 -> :sswitch_17
        0xd54e51a -> :sswitch_16
        0x120619a3 -> :sswitch_15
        0x166a9921 -> :sswitch_14
        0x1c400902 -> :sswitch_13
        0x1eddcd3a -> :sswitch_12
        0x230298f8 -> :sswitch_11
        0x23fbf812 -> :sswitch_10
        0x2a1fdd41 -> :sswitch_f
        0x2aab5d71 -> :sswitch_e
        0x4a77d2df -> :sswitch_d
        0x4e151373 -> :sswitch_c
        0x4e532ddd -> :sswitch_b
        0x50a96236 -> :sswitch_a
        0x50af43ea -> :sswitch_9
        0x52884580 -> :sswitch_8
        0x5b53ca92 -> :sswitch_7
        0x665f3b43 -> :sswitch_6
        0x7477a6ff -> :sswitch_5
        0x791126a6 -> :sswitch_4
        0x7ad16f0f -> :sswitch_3
        0x7c750150 -> :sswitch_2
        0x7e21c24e -> :sswitch_1
        0x7ef04335 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultDisableAccurateStartPoint(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 891
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultDisableAccurateStartPoint:Z

    return-object p0
.end method

.method public setDefaultDisableLoginOverMsl(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 879
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultDisableLoginOverMsl:Z

    return-object p0
.end method

.method public setDefaultForcedDeviceCategory(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultForcedDeviceCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultGetAlertMsgForLocaleSupport(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAlertMsgForLocaleSupport:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultGetAppMinVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 695
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppMinVersion:I

    return-object p0
.end method

.method public setDefaultGetAppRecommendedVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 699
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppRecommendedVersion:I

    return-object p0
.end method

.method public setDefaultGetAppUpdateDialogFreqDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 923
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAppUpdateDialogFreqDays:I

    return-object p0
.end method

.method public setDefaultGetAudioFormats(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 771
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetAudioFormats:I

    return-object p0
.end method

.method public setDefaultGetBreadcrumbLoggingSpecifications(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;"
        }
    .end annotation

    .line 731
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetBreadcrumbLoggingSpecifications:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultGetConsolidatedloggingSpecification(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;"
        }
    .end annotation

    .line 719
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetConsolidatedloggingSpecification:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultGetDisableCastFaststart(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 811
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetDisableCastFaststart:Z

    return-object p0
.end method

.method public setDefaultGetDisableLicensePrefetch(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 819
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetDisableLicensePrefetch:Z

    return-object p0
.end method

.method public setDefaultGetEnableLocalPlayback(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 751
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableLocalPlayback:Z

    return-object p0
.end method

.method public setDefaultGetEnableMdxRemoteControlLockScreen(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 755
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableMdxRemoteControlLockScreen:Z

    return-object p0
.end method

.method public setDefaultGetEnableMdxRemoteControlNotification(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 759
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetEnableMdxRemoteControlNotification:Z

    return-object p0
.end method

.method public setDefaultGetErrorLoggingSpecifications(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;"
        }
    .end annotation

    .line 735
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetErrorLoggingSpecifications:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultGetGeoCountryCode(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetGeoCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultGetImagePref(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetImagePref:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultGetLolomoCacheExpirationOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 887
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetLolomoCacheExpirationOverride:I

    return-object p0
.end method

.method public setDefaultGetLolomoPrefetchIntervalOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 883
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetLolomoPrefetchIntervalOverride:I

    return-object p0
.end method

.method public setDefaultGetMaxAppLifeDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 919
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMaxAppLifeDays:I

    return-object p0
.end method

.method public setDefaultGetMdxDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 707
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMdxDisabled:Z

    return-object p0
.end method

.method public setDefaultGetMobileOnlyMinVersionCode(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 927
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetMobileOnlyMinVersionCode:I

    return-object p0
.end method

.method public setDefaultGetOfflineCodecPrefData(Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    return-object p0
.end method

.method public setDefaultGetOfflineConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object p0
.end method

.method public setDefaultGetPTAggregationSize(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetPTAggregationSize:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultGetRateLimitForGcmBrowseEvents(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 743
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetRateLimitForGcmBrowseEvents:I

    return-object p0
.end method

.method public setDefaultGetRateLimitForGcmNListChangeEvents(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 747
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetRateLimitForGcmNListChangeEvents:I

    return-object p0
.end method

.method public setDefaultGetSignUpTimeout(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSignUpTimeout:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultGetStreamingCodecPrefData(Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    return-object p0
.end method

.method public setDefaultGetSubtitleDownloadRetryPolicy(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object p0
.end method

.method public setDefaultGetSuppressedLogblobs(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;"
        }
    .end annotation

    .line 935
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetSuppressedLogblobs:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultGetUserSessionTimeoutDuration(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 723
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetUserSessionTimeoutDuration:I

    return-object p0
.end method

.method public setDefaultGetVideoResolutionOverride(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 739
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVideoResolutionOverride:I

    return-object p0
.end method

.method public setDefaultGetVoipConfiguration(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object p0
.end method

.method public setDefaultGetVoipInstallDeadlineInDays(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 907
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetVoipInstallDeadlineInDays:I

    return-object p0
.end method

.method public setDefaultGetWebsocketDisabled(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultGetWebsocketDisabled:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultIsAllowAv1Mobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 835
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowAv1Mobile:Z

    return-object p0
.end method

.method public setDefaultIsAllowHevcMobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 827
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowHevcMobile:Z

    return-object p0
.end method

.method public setDefaultIsAllowVp9Mobile(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 831
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsAllowVp9Mobile:Z

    return-object p0
.end method

.method public setDefaultIsBlacklisted(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 871
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsBlacklisted:Z

    return-object p0
.end method

.method public setDefaultIsDisableLegacyNetflixMdx(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 859
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsDisableLegacyNetflixMdx:Z

    return-object p0
.end method

.method public setDefaultIsDolbyVisionEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 843
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsDolbyVisionEnabled:Z

    return-object p0
.end method

.method public setDefaultIsEnableOfflineSecureDelete(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 875
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsEnableOfflineSecureDelete:Z

    return-object p0
.end method

.method public setDefaultIsEnabledWidevineL3SystemId4266(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 855
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsEnabledWidevineL3SystemId4266:Z

    return-object p0
.end method

.method public setDefaultIsHdr10Enabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 839
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsHdr10Enabled:Z

    return-object p0
.end method

.method public setDefaultIsHdrBrightnessBoostEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 931
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsHdrBrightnessBoostEnabled:Z

    return-object p0
.end method

.method public setDefaultIsMementoEnabledForWorld(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 815
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsMementoEnabledForWorld:Z

    return-object p0
.end method

.method public setDefaultIsPhonePortraitLockEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 863
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsPhonePortraitLockEnabled:Z

    return-object p0
.end method

.method public setDefaultIsPlayBillingDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 799
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsPlayBillingDisabled:Z

    return-object p0
.end method

.method public setDefaultIsVoipEnabledOnDevice(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 783
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsVoipEnabledOnDevice:Z

    return-object p0
.end method

.method public setDefaultIsWidevineL1Enabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 763
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultIsWidevineL1Enabled:Z

    return-object p0
.end method

.method public setDefaultPartnerIntegrationConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultPartnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    return-object p0
.end method

.method public setDefaultPdsAndLogblobConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultPdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    return-object p0
.end method

.method public setDefaultShouldAlertForMissingLocale(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 775
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldAlertForMissingLocale:Z

    return-object p0
.end method

.method public setDefaultShouldDisableAmazonADM(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 899
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisableAmazonADM:Z

    return-object p0
.end method

.method public setDefaultShouldDisablePip(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 895
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisablePip:Z

    return-object p0
.end method

.method public setDefaultShouldDisableRoar(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 823
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldDisableRoar:Z

    return-object p0
.end method

.method public setDefaultShouldForceLegacyCrypto(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 767
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldForceLegacyCrypto:Z

    return-object p0
.end method

.method public setDefaultShouldGetNrmViaMsl(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 903
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultShouldGetNrmViaMsl:Z

    return-object p0
.end method

.method public setDefaultToIgnorePreloadForPlayBilling(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;
    .locals 0

    .line 803
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->defaultToIgnorePreloadForPlayBilling:Z

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V
    .locals 2

    if-nez p2, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "min_version"

    .line 243
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppMinVersionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "current_version"

    .line 245
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppRecommendedVersionAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disable_websocket"

    .line 247
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getWebsocketDisabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disable_mdx"

    .line 249
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMdxDisabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMdxDisabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "image_pref"

    .line 251
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getImagePrefAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "signup_timeout"

    .line 253
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSignUpTimeoutAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "consolidated_logging_specification"

    .line 255
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getConsolidatedloggingSpecificationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getConsolidatedloggingSpecification()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "user_session_timeout_duration"

    .line 257
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getUserSessionTimeoutDurationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getUserSessionTimeoutDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "pt_aggregation_size"

    .line 259
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getPTAggregationSizeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "breadcrumb_logging_config"

    .line 261
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getBreadcrumbLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getBreadcrumbLoggingSpecifications()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "error_logging_config"

    .line 263
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getErrorLoggingSpecificationsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getErrorLoggingSpecifications()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "videoResolutionOverride"

    .line 265
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVideoResolutionOverrideAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "gcmBrowseEventRateLimitInSecs"

    .line 267
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getRateLimitForGcmBrowseEventsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "gcmNListChangeEventRateLimitInSecs"

    .line 269
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getRateLimitForGcmNListChangeEventsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableLocalPlayback"

    .line 271
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableLocalPlaybackAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableLocalPlayback()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableMdxRemoteControlLockScreen"

    .line 273
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableMdxRemoteControlLockScreenAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlLockScreen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableMdxRemoteControlNotification"

    .line 275
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getEnableMdxRemoteControlNotificationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlNotification()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableWidevineL1"

    .line 277
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isWidevineL1EnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isWidevineL1Enabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "forceLegacyCrypto"

    .line 279
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldForceLegacyCryptoAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldForceLegacyCrypto()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "audioFormats"

    .line 281
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAudioFormatsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAudioFormats()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "shouldAlertForLocaleSupport"

    .line 283
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldAlertForMissingLocaleAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForMissingLocale()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "alertMsgForLocaleSupport"

    .line 285
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAlertMsgForLocaleSupportAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "voipEnabledOnDevice"

    .line 287
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isVoipEnabledOnDeviceAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isVoipEnabledOnDevice()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "voipConfig"

    .line 289
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVoipConfigurationAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "offlineConfig"

    .line 291
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getOfflineConfigAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "subtitleDownloadRetryPolicy"

    .line 293
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSubtitleDownloadRetryPolicyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disablePlayBilling"

    .line 295
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isPlayBillingDisabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "ignorePreloadForPlayBilling"

    .line 297
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->toIgnorePreloadForPlayBillingAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePreloadForPlayBilling()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "geoCountryCode"

    .line 299
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getGeoCountryCodeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableCastFaststart"

    .line 301
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getDisableCastFaststartAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableCastFaststart()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "mementoEnabledForWorld"

    .line 303
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isMementoEnabledForWorldAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isMementoEnabledForWorld()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableLicensePrefetch"

    .line 305
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getDisableLicensePrefetchAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableLicensePrefetch()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableRoar"

    .line 307
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisableRoarAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableRoar()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "allowHevcMobile"

    .line 309
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowHevcMobileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowHevcMobile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "allowVp9Mobile"

    .line 311
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowVp9MobileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowVp9Mobile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "allowAv1Mobile"

    .line 313
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isAllowAv1MobileAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowAv1Mobile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableHdr10"

    .line 315
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isHdr10EnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdr10Enabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableDolbyVision"

    .line 317
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isDolbyVisionEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDolbyVisionEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "streamingCodecPrefData"

    .line 319
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getStreamingCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getStreamingCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "offlineCodecPrefData"

    .line 321
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getOfflineCodecPrefDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableWidevineL3SystemId4266"

    .line 323
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isEnabledWidevineL3SystemId4266Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnabledWidevineL3SystemId4266()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableLegacyNetflixMdx"

    .line 325
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isDisableLegacyNetflixMdxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDisableLegacyNetflixMdx()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "lockPhonePortraitEnabled"

    .line 327
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isPhonePortraitLockEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPhonePortraitLockEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "pdsAndLogblobConfig"

    .line 329
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->pdsAndLogblobConfigAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->pdsAndLogblobConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "isBlacklisted"

    .line 331
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isBlacklistedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isBlacklisted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableOfflineSecureDelete"

    .line 333
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isEnableOfflineSecureDeleteAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnableOfflineSecureDelete()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableLoginOverMsl"

    .line 335
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->disableLoginOverMslAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableLoginOverMsl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "lolomoPrefetchIntervalOverride"

    .line 337
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getLolomoPrefetchIntervalOverrideAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoPrefetchIntervalOverride()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "lolomoCacheExpirationOverride"

    .line 339
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getLolomoCacheExpirationOverrideAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoCacheExpirationOverride()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableAccurateStartPoint"

    .line 341
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->disableAccurateStartPointAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAccurateStartPoint()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disablePip"

    .line 343
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisablePipAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisablePip()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableAmazonADM"

    .line 345
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldDisableAmazonADMAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableAmazonADM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "nrmViaMsl"

    .line 347
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->shouldGetNrmViaMslAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldGetNrmViaMsl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "voipInstallDeadlineInDays"

    .line 349
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getVoipInstallDeadlineInDaysAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipInstallDeadlineInDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "forcedDeviceCategory"

    .line 351
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->forcedDeviceCategoryAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->forcedDeviceCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "partnerIntegrationConfig"

    .line 353
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->partnerIntegrationConfigAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->partnerIntegrationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "maxAppLifeDays"

    .line 355
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMaxAppLifeDaysAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMaxAppLifeDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "appUpdateDialogFreqDays"

    .line 357
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getAppUpdateDialogFreqDaysAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppUpdateDialogFreqDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "mobileOnlyMinVersionCode"

    .line 359
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getMobileOnlyMinVersionCodeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMobileOnlyMinVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableHdrBrightnessBoost"

    .line 361
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->isHdrBrightnessBoostEnabledAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdrBrightnessBoostEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "suppressedLogblobs"

    .line 363
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->getSuppressedLogblobsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSuppressedLogblobs()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_DeviceConfigData$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    return-void
.end method
