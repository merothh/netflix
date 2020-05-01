.class public Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# static fields
.field private static final DEFAULT_SHOW_HELP_FOR_NOMN_MEMEBER:Z = false

.field private static final DISABLE_MDX_DEF:Z = false

.field private static final DISABLE_WEBSOCKET_DEF:Z = true

.field private static final FORCE_DISABLE_VOIP_IN_CODE:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAlertMsgForMissingLocale:Ljava/lang/String;

.field private mAllowHevcMobile:Z

.field private mAllowVp9Mobile:Z

.field private mAppMinimalVersion:I

.field private mAppRecommendedVersion:I

.field private mAudioFormat:I

.field private mBreadcrumbLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

.field private mConsolidatedLoggingSpecification:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

.field private mDisableCastFaststart:Z

.field private mDisableDataSaver:Z

.field private mErrorLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

.field private mForceLegacyCrypto:Z

.field private mGeoCountryCode:Ljava/lang/String;

.field private mIgnorePreloadForPlayBilling:Z

.field private mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

.field private mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

.field private mIsDisableMdx:Z

.field private mIsDisableWebsocket:Z

.field private mIsDynecomSignInEnabled:Z

.field private mIsPlayBillingDisabled:Z

.field private mIsVoipEnabledOnDevice:Z

.field private mIsWidevineL1Enabled:Z

.field private mJPlayerErrorRestartCount:I

.field private mLocalPlaybackEnabled:Z

.field private mMdxRemoteControlLockScreenEnabled:Z

.field private mMdxRemoteControlNotificationEnabled:Z

.field private mOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

.field private mPTAggregationSize:I

.field private mRateLimitForGcmBrowseEvents:I

.field private mRateLimitForNListChangeEvents:I

.field private mShouldAlertForMissingLocale:Z

.field private mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

.field private mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field private mSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

.field private mUserSessionDurationInSeconds:I

.field private mVideoResolutionOverride:I

.field private mVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_configuration_device"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->load(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->loadConsolidateLoggingSpecification()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->loadIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pt_aggregation_size"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mPTAggregationSize:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "config_recommended_version"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "config_min_version"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_mdx"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableMdx:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_websocket"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableWebsocket:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enable_widevine_l1"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsWidevineL1Enabled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "force_legacy_crypto"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mForceLegacyCrypto:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enable_dynecom_signin"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDynecomSignInEnabled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enable_voip_on_device"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsVoipEnabledOnDevice:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->loadUserSessionTimeoutDuration()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mBreadcrumbLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mErrorLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "video_resolution_override"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVideoResolutionOverride:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "gcm_browse_rate_limit"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForGcmBrowseEvents:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "gcm_tray_change_rate_limit"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForNListChangeEvents:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "playback_configuration_local_playback_enabled"

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLocalPlaybackEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mdx_configuration_remote_lockscreen_enabled"

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mdx_configuration_remote_notification_enabled"

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jplayer_restart_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mJPlayerErrorRestartCount:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_locale_not_supported"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_locale_not_supported_msg"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_playbilling"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsPlayBillingDisabled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ignore_preload_playbilling"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIgnorePreloadForPlayBilling:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_config_geo_country_code"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mGeoCountryCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "constructor DeviceConfiguration: Disable mIsVoipEnabledOnDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsVoipEnabledOnDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", disabledInCode? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_cast_faststart"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_data_saver"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableDataSaver:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prefs_allow_hevc_mobile"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prefs_allow_vp9_mobile"

    sget-boolean v2, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    return-void
.end method

.method private loadConsolidateLoggingSpecification()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cl_configuration"

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CL specification not found in file system"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration$1;-><init>(Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CL specification loaded from file system"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->toMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to load CL specification from file system"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private loadIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ip_connectivity_policy_overide"

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->from(I)Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v0

    return-object v0
.end method

.method private loadUserSessionTimeoutDuration()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "apm_user_session_timeout_duration_override"

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static toMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private updateAppBootUrlSuffix(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    :goto_0
    const-string/jumbo v0, "device_config_appBootUrlSuffix"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private updateAudioFormat(Lcom/netflix/mediaclient/util/NetflixPreference;I)V
    .locals 1

    const-string/jumbo v0, "supported_audio_format"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    iput p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAudioFormat:I

    return-void
.end method

.method private updateConsolidatedLoggingSpecification(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/util/NetflixPreference;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->toMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "cl_configuration"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string/jumbo v1, "cl_configuration"

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private updateDeviceConfigFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting DeviceConfig preferences inCache= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "nf_device_config_cached"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    return-void
.end method

.method private updateDeviceLocaleSupportAlert(Lcom/netflix/mediaclient/util/NetflixPreference;ZLjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "nf_loc shouldAlert: %b, alertMsg:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    if-eq p2, v0, :cond_1

    const-string/jumbo v0, "device_locale_not_supported"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "device_locale_not_supported_msg"

    invoke-virtual {p1, v0, p3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private updateDisableMdxFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const-string/jumbo v1, "disable_mdx"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableMdx:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisableWebsocketFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const-string/jumbo v1, "disable_websocket"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableWebsocket:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateDynecomSignInFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 1

    const-string/jumbo v0, "enable_dynecom_signin"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDynecomSignInEnabled:Z

    return-void
.end method

.method private updateForceLegacyCryptoFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 1

    const-string/jumbo v0, "force_legacy_crypto"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mForceLegacyCrypto:Z

    return-void
.end method

.method private updateGeoCountryCode(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    :goto_0
    const-string/jumbo v0, "device_config_geo_country_code"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mGeoCountryCode:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private updateLocalPlaybackStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Change in local playback status from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    if-eq v1, v0, :cond_1

    const-string/jumbo v1, "playback_configuration_local_playback_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "playback_configuration_local_playback_enabled"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLocalPlaybackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Overide is not found, use default for local playback enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMdxRemoteControlLockScreenStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Change in MDX remote control lock screen be used status from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    if-eq v1, v0, :cond_1

    const-string/jumbo v1, "mdx_configuration_remote_lockscreen_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "mdx_configuration_remote_lockscreen_enabled"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Overide is not found, use default on device for MDX remote control lock screen  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMdxRemoteControlNotificationStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Change in MDX remote control notification be used status from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    if-eq v1, v0, :cond_1

    const-string/jumbo v1, "mdx_configuration_remote_notification_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "mdx_configuration_remote_notification_enabled"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Overide is not found, use default on device for MDX remote control notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVoipEnabledOnDeviceFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 1

    const-string/jumbo v0, "enable_voip_on_device"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsVoipEnabledOnDevice:Z

    return-void
.end method

.method private updateWidevineL1Flag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 1

    const-string/jumbo v0, "enable_widevine_l1"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsWidevineL1Enabled:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    return-void
.end method

.method public enableWidevineL1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsWidevineL1Enabled:Z

    return v0
.end method

.method public getAlertMsgForMissingLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMinimalVersion()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    return v0
.end method

.method public getAppRecommendedVersion()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    return v0
.end method

.method public getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mBreadcrumbLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    return-object v0
.end method

.method public getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
    .locals 1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    goto :goto_0
.end method

.method public getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mErrorLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mGeoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImageRepository()Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    return-object v0
.end method

.method public getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    return-object v0
.end method

.method public getJPlayerStreamErrorRestartCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mJPlayerErrorRestartCount:I

    return v0
.end method

.method public getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object v0
.end method

.method public getPTAggregationSize()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mPTAggregationSize:I

    return v0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForGcmBrowseEvents:I

    return v0
.end method

.method public getRateLimitForNListChangeEvents()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForNListChangeEvents:I

    return v0
.end method

.method public getSignUpConfiguration()Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    return-object v0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object v0
.end method

.method public getUserSessionDurationInSeconds()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    return v0
.end method

.method public getVideoResolutionOverride()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVideoResolutionOverride:I

    return v0
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object v0
.end method

.method public getmAudioFormat()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAudioFormat:I

    return v0
.end method

.method public ignorePreloadForPlayBilling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIgnorePreloadForPlayBilling:Z

    return v0
.end method

.method public isAllowHevcMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    return v0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    return v0
.end method

.method public isDeviceConfigInCache()Z
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_device_config_cached"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDisableCastFaststart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    return v0
.end method

.method public isDisableMdx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableMdx:Z

    return v0
.end method

.method public isDisableWebsocket()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableWebsocket:Z

    return v0
.end method

.method public isDynecomSignInEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDynecomSignInEnabled:Z

    return v0
.end method

.method public isLocalPlaybackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    return v0
.end method

.method public isMdxRemoteControlLockScreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    return v0
.end method

.method public isMdxRemoteControlNotificationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    return v0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsPlayBillingDisabled:Z

    return v0
.end method

.method public persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deviceConfig object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writing configData to storage %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDeviceCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDisableWebsocketFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMdxDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDisableMdxFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isWidevineL1Enabled()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateWidevineL1Flag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldForceLegacyCrypto()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateForceLegacyCryptoFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDynecomSignInEnabled()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDynecomSignInFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isVoipEnabledOnDevice()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateVoipEnabledOnDeviceFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAudioFormats()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateAudioFormat(Lcom/netflix/mediaclient/util/NetflixPreference;I)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getConsolidatedloggingSpecification()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateConsolidatedLoggingSpecification(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/util/List;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleConfiguration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->update(Landroid/content/Context;Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVresion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVresion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    const-string/jumbo v0, "config_min_version"

    iget v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVresion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVresion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    const-string/jumbo v0, "config_recommended_version"

    iget v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    iput v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mPTAggregationSize:I

    const-string/jumbo v0, "pt_aggregation_size"

    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mPTAggregationSize:I

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getIpConnectivityPolicy()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->from(I)Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    const-string/jumbo v1, "ip_connectivity_policy_overide"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getUserSessionTimeoutDuration()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    const-string/jumbo v0, "apm_user_session_timeout_duration_override"

    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mBreadcrumbLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mErrorLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVideoResolutionOverride:I

    const-string/jumbo v0, "video_resolution_override"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForGcmBrowseEvents:I

    const-string/jumbo v0, "gcm_browse_rate_limit"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForNListChangeEvents:I

    const-string/jumbo v0, "gcm_tray_change_rate_limit"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getJPlayerStreamErrorRestartCount()I

    move-result v0

    const-string/jumbo v1, "jplayer_restart_count"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableLocalPlayback()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateLocalPlaybackStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlLockScreen()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateMdxRemoteControlLockScreenStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlNotification()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateMdxRemoteControlNotificationStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForMissingLocale()Z

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDeviceLocaleSupportAlert(Lcom/netflix/mediaclient/util/NetflixPreference;ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateGeoCountryCode(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAndroidJobScheduler()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->updateJobSchedulerDisabledAndDisableIfNeeded(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAndroidJobSchedulerJobFinish()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->updateJobFinishDisabled(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppBootUrlSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateAppBootUrlSuffix(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppBootUrlSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsPlayBillingDisabled:Z

    const-string/jumbo v0, "disable_playbilling"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePrelaodForPlayBilling()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIgnorePreloadForPlayBilling:Z

    const-string/jumbo v0, "ignore_preload_playbilling"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePrelaodForPlayBilling()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableCastFaststart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    const-string/jumbo v0, "disable_cast_faststart"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableDataSaver()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableDataSaver:Z

    const-string/jumbo v0, "disable_data_saver"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableDataSaver:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowHevcMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    const-string/jumbo v0, "prefs_allow_hevc_mobile"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowVp9Mobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    const-string/jumbo v0, "prefs_allow_vp9_mobile"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDeviceConfigInCache()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2, v6}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDeviceConfigFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    :cond_3
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_2
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    return v0
.end method

.method public shouldDisableVoip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsVoipEnabledOnDevice:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldForceLegacyCrypto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mForceLegacyCrypto:Z

    return v0
.end method
