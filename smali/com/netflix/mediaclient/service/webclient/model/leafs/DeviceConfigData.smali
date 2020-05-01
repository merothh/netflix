.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
.super Ljava/lang/Object;
.source "DeviceConfigData.java"


# instance fields
.field private alertMsgForLocaleSupport:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alertMsgForLocaleSupport"
    .end annotation
.end field

.field private allowHevcMobile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowHevcMobile"
    .end annotation
.end field

.field private allowVp9Mobile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowVp9Mobile"
    .end annotation
.end field

.field private appBootUrlSuffix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appBootUrlSuffix"
    .end annotation
.end field

.field private audioFormats:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioFormats"
    .end annotation
.end field

.field private breadcrumb_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "breadcrumb_logging_specification"
    .end annotation
.end field

.field private consolidated_logging_specification:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consolidated_logging_specification"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private current_version:Ljava/lang/String;

.field private device_category:Ljava/lang/String;

.field private disableCastFaststart:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableCastFaststart"
    .end annotation
.end field

.field private disableDataSaver:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableDataSaver"
    .end annotation
.end field

.field private disablePlayBilling:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disablePlayBilling"
    .end annotation
.end field

.field private disable_mdx:Ljava/lang/String;

.field private disable_websocket:Ljava/lang/String;

.field private enableDynecomSignIn:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableDynecomSignIn"
    .end annotation
.end field

.field private enableLocalPlayback:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableLocalPlayback"
    .end annotation
.end field

.field private enableMdxRemoteControlLockScreen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableMdxRemoteControlLockScreen"
    .end annotation
.end field

.field private enableMdxRemoteControlNotification:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableMdxRemoteControlNotification"
    .end annotation
.end field

.field private enableWidevineL1:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableWidevineL1"
    .end annotation
.end field

.field private error_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_logging_specification"
    .end annotation
.end field

.field private forceLegacyCrypto:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceLegacyCrypto"
    .end annotation
.end field

.field private gcmBrowseEventRateLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gcmBrowseEventRateLimitInSecs"
    .end annotation
.end field

.field private gcmNListChangeEventRateLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gcmNListChangeEventRateLimitInSecs"
    .end annotation
.end field

.field private geoCountryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geoCountryCode"
    .end annotation
.end field

.field private ignorePreloadForPlayBilling:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ignorePreloadForPlayBilling"
    .end annotation
.end field

.field private image_pref:Ljava/lang/String;

.field private ip_connectivity_policy:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ip_connectivity_policy"
    .end annotation
.end field

.field private jPlayerRestartOnStreamErrors:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jPlayerRestartOnStreamErrors"
    .end annotation
.end field

.field private mDisableAndroidJobScheduler:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableAndroidJobScheduler"
    .end annotation
.end field

.field private mDisableAndroidJobSchedulerJobFinish:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableAndroidJobSchedulerJobFinish"
    .end annotation
.end field

.field private min_version:Ljava/lang/String;

.field private offlineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlineConfig"
    .end annotation
.end field

.field private pt_aggregation_size:Ljava/lang/String;

.field private shouldAlertForLocaleSupport:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldAlertForLocaleSupport"
    .end annotation
.end field

.field private signup_enabled:Ljava/lang/String;

.field private signup_timeout:Ljava/lang/String;

.field private subtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitleDownloadRetryPolicy"
    .end annotation
.end field

.field private subtitle_configuration:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user_session_timeout_duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_session_timeout_duration"
    .end annotation
.end field

.field private videoResolutionOverride:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoResolutionOverride"
    .end annotation
.end field

.field private voipConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipConfig"
    .end annotation
.end field

.field private voipConfirmationDialogAllocationPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipConfirmationDialogAllocationPercentage"
    .end annotation
.end field

.field private voipEnabledOnDevice:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipEnabledOnDevice"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->consolidated_logging_specification:Ljava/util/List;

    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->ip_connectivity_policy:I

    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->user_session_timeout_duration:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->jPlayerRestartOnStreamErrors:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipConfirmationDialogAllocationPercentage:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowHevcMobile:Z

    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowVp9Mobile:Z

    return-void
.end method


# virtual methods
.method public disableAndroidJobScheduler()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->mDisableAndroidJobScheduler:Z

    return v0
.end method

.method public disableAndroidJobSchedulerJobFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->mDisableAndroidJobSchedulerJobFinish:Z

    return v0
.end method

.method public getAlertMsgForLocaleSupport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->alertMsgForLocaleSupport:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBootUrlSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->appBootUrlSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMinVresion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->min_version:Ljava/lang/String;

    return-object v0
.end method

.method public getAppRecommendedVresion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->current_version:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioFormats()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->audioFormats:I

    return v0
.end method

.method public getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->breadcrumb_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    return-object v0
.end method

.method public getConsolidatedloggingSpecification()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->consolidated_logging_specification:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->device_category:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableCastFaststart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableCastFaststart:Z

    return v0
.end method

.method public getDisableDataSaver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableDataSaver:Z

    return v0
.end method

.method public getEnableLocalPlayback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableLocalPlayback:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableMdxRemoteControlLockScreen()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableMdxRemoteControlLockScreen:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableMdxRemoteControlNotification()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableMdxRemoteControlNotification:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->error_logging_specification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->geoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->image_pref:Ljava/lang/String;

    return-object v0
.end method

.method public getIpConnectivityPolicy()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->ip_connectivity_policy:I

    return v0
.end method

.method public getJPlayerStreamErrorRestartCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->jPlayerRestartOnStreamErrors:I

    return v0
.end method

.method public getMdxDisabled()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disable_mdx:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->offlineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object v0
.end method

.method public getPTAggregationSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->pt_aggregation_size:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->gcmBrowseEventRateLimit:I

    return v0
.end method

.method public getRateLimitForGcmNListChangeEvents()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->gcmNListChangeEventRateLimit:I

    return v0
.end method

.method public getSignUpEnabled()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->signup_enabled:Ljava/lang/String;

    return-object v0
.end method

.method public getSignUpTimeout()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->signup_timeout:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleConfiguration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->subtitle_configuration:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->subtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object v0
.end method

.method public getUserSessionTimeoutDuration()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->user_session_timeout_duration:I

    return v0
.end method

.method public getVideoResolutionOverride()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->videoResolutionOverride:I

    return v0
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object v0
.end method

.method public getVoipConfirmationDialogAllocationPercentage()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipConfirmationDialogAllocationPercentage:I

    return v0
.end method

.method public getWebsocketDisabled()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disable_websocket:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowHevcMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowHevcMobile:Z

    return v0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->allowVp9Mobile:Z

    return v0
.end method

.method public isDynecomSignInEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableDynecomSignIn:Z

    return v0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disablePlayBilling:Z

    return v0
.end method

.method public isVoipEnabledOnDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->voipEnabledOnDevice:Z

    return v0
.end method

.method public isWidevineL1Enabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->enableWidevineL1:Z

    return v0
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForLocaleSupport:Z

    return v0
.end method

.method public shouldForceLegacyCrypto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->forceLegacyCrypto:Z

    return v0
.end method

.method public toIgnorePrelaodForPlayBilling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->ignorePreloadForPlayBilling:Z

    return v0
.end method
