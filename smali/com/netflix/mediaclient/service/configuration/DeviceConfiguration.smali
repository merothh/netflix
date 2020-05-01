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

    .prologue
    .line 37
    const-string/jumbo v0, "nf_configuration_device"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    .line 137
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->load(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 143
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->loadConsolidateLoggingSpecification()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->loadIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pt_aggregation_size"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mPTAggregationSize:I

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "config_recommended_version"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "config_min_version"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_mdx"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableMdx:Z

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_websocket"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableWebsocket:Z

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enable_widevine_l1"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsWidevineL1Enabled:Z

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "force_legacy_crypto"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mForceLegacyCrypto:Z

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enable_dynecom_signin"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDynecomSignInEnabled:Z

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enable_voip_on_device"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsVoipEnabledOnDevice:Z

    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->loadUserSessionTimeoutDuration()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    .line 158
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mBreadcrumbLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    .line 159
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mErrorLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "video_resolution_override"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVideoResolutionOverride:I

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "gcm_browse_rate_limit"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForGcmBrowseEvents:I

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "gcm_tray_change_rate_limit"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForNListChangeEvents:I

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "playback_configuration_local_playback_enabled"

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLocalPlaybackEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mdx_configuration_remote_lockscreen_enabled"

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mdx_configuration_remote_notification_enabled"

    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jplayer_restart_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mJPlayerErrorRestartCount:I

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_locale_not_supported"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_locale_not_supported_msg"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_playbilling"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsPlayBillingDisabled:Z

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ignore_preload_playbilling"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIgnorePreloadForPlayBilling:Z

    .line 172
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    .line 173
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_config_geo_country_code"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mGeoCountryCode:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
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

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_cast_faststart"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disable_data_saver"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableDataSaver:Z

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prefs_allow_hevc_mobile"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prefs_allow_vp9_mobile"

    sget-boolean v2, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    .line 185
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

    .prologue
    const/4 v1, 0x0

    .line 563
    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "cl_configuration"

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CL specification not found in file system"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 579
    :goto_0
    return-object v0

    .line 571
    :cond_0
    :try_start_0
    new-instance v2, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration$1;-><init>(Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;)V

    .line 572
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CL specification loaded from file system"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :goto_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->toMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 576
    :goto_2
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to load CL specification from file system"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 575
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private loadIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 3

    .prologue
    .line 583
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

    .prologue
    .line 587
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

    .prologue
    .line 550
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 551
    if-eqz p0, :cond_1

    .line 552
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

    .line 553
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 558
    :cond_1
    return-object v1
.end method

.method private updateAppBootUrlSuffix(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 419
    if-eqz p2, :cond_0

    .line 420
    :goto_0
    const-string/jumbo v0, "device_config_appBootUrlSuffix"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 421
    return-void

    .line 419
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private updateAudioFormat(Lcom/netflix/mediaclient/util/NetflixPreference;I)V
    .locals 1

    .prologue
    .line 529
    const-string/jumbo v0, "supported_audio_format"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 530
    iput p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAudioFormat:I

    .line 531
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

    .prologue
    .line 453
    invoke-static {p2}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->toMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mConsolidatedLoggingSpecification:Ljava/util/Map;

    .line 454
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 455
    :cond_0
    const-string/jumbo v0, "cl_configuration"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 458
    const-string/jumbo v1, "cl_configuration"

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private updateDeviceConfigFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 3

    .prologue
    .line 542
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
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

    .line 545
    :cond_0
    const-string/jumbo v0, "nf_device_config_cached"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 546
    return-void
.end method

.method private updateDeviceLocaleSupportAlert(Lcom/netflix/mediaclient/util/NetflixPreference;ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 424
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
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

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    if-eq p2, v0, :cond_1

    .line 429
    const-string/jumbo v0, "device_locale_not_supported"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 430
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    const-string/jumbo v0, "device_locale_not_supported_msg"

    invoke-virtual {p1, v0, p3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 434
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    .line 436
    :cond_2
    return-void
.end method

.method private updateDisableMdxFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 446
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 447
    :goto_0
    const-string/jumbo v1, "disable_mdx"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 448
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableMdx:Z

    .line 449
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisableWebsocketFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 440
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 441
    :goto_0
    const-string/jumbo v1, "disable_websocket"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 442
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableWebsocket:Z

    .line 443
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateDynecomSignInFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 1

    .prologue
    .line 403
    const-string/jumbo v0, "enable_dynecom_signin"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 404
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDynecomSignInEnabled:Z

    .line 405
    return-void
.end method

.method private updateForceLegacyCryptoFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 1

    .prologue
    .line 398
    const-string/jumbo v0, "force_legacy_crypto"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 399
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mForceLegacyCrypto:Z

    .line 400
    return-void
.end method

.method private updateGeoCountryCode(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 413
    if-eqz p2, :cond_0

    .line 414
    :goto_0
    const-string/jumbo v0, "device_config_geo_country_code"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mGeoCountryCode:Ljava/lang/String;

    .line 416
    return-void

    .line 413
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private updateLocalPlaybackStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 463
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 466
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
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

    .line 470
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    if-eq v1, v0, :cond_1

    .line 471
    const-string/jumbo v1, "playback_configuration_local_playback_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 472
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    const-string/jumbo v0, "playback_configuration_local_playback_enabled"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 477
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLocalPlaybackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    .line 478
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
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

    .prologue
    .line 507
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 510
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
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

    .line 514
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    if-eq v1, v0, :cond_1

    .line 515
    const-string/jumbo v1, "mdx_configuration_remote_lockscreen_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 516
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 520
    :cond_2
    const-string/jumbo v0, "mdx_configuration_remote_lockscreen_enabled"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 521
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    .line 522
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
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

    .prologue
    .line 485
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 488
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
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

    .line 492
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    if-eq v1, v0, :cond_1

    .line 493
    const-string/jumbo v1, "mdx_configuration_remote_notification_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 494
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    const-string/jumbo v0, "mdx_configuration_remote_notification_enabled"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 499
    invoke-static {}, Lcom/netflix/mediaclient/util/DeviceUtils;->isRemoteControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    .line 500
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
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

    .prologue
    .line 408
    const-string/jumbo v0, "enable_voip_on_device"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 409
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsVoipEnabledOnDevice:Z

    .line 410
    return-void
.end method

.method private updateWidevineL1Flag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V
    .locals 1

    .prologue
    .line 393
    const-string/jumbo v0, "enable_widevine_l1"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 394
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsWidevineL1Enabled:Z

    .line 395
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    .line 189
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    .line 190
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    .line 191
    return-void
.end method

.method public enableWidevineL1()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsWidevineL1Enabled:Z

    return v0
.end method

.method public getAlertMsgForMissingLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAlertMsgForMissingLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMinimalVersion()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    return v0
.end method

.method public getAppRecommendedVersion()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    return v0
.end method

.method public getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mBreadcrumbLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    return-object v0
.end method

.method public getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
    .locals 1

    .prologue
    .line 286
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 290
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

    .prologue
    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mErrorLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mGeoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImageRepository()Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    return-object v0
.end method

.method public getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    return-object v0
.end method

.method public getJPlayerStreamErrorRestartCount()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mJPlayerErrorRestartCount:I

    return v0
.end method

.method public getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object v0
.end method

.method public getPTAggregationSize()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mPTAggregationSize:I

    return v0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForGcmBrowseEvents:I

    return v0
.end method

.method public getRateLimitForNListChangeEvents()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForNListChangeEvents:I

    return v0
.end method

.method public getSignUpConfiguration()Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    return-object v0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object v0
.end method

.method public getUserSessionDurationInSeconds()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    return v0
.end method

.method public getVideoResolutionOverride()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVideoResolutionOverride:I

    return v0
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object v0
.end method

.method public getmAudioFormat()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAudioFormat:I

    return v0
.end method

.method public ignorePreloadForPlayBilling()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIgnorePreloadForPlayBilling:Z

    return v0
.end method

.method public isAllowHevcMobile()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    return v0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    return v0
.end method

.method public isDeviceConfigInCache()Z
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_device_config_cached"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDisableCastFaststart()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    return v0
.end method

.method public isDisableMdx()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableMdx:Z

    return v0
.end method

.method public isDisableWebsocket()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDisableWebsocket:Z

    return v0
.end method

.method public isDynecomSignInEnabled()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsDynecomSignInEnabled:Z

    return v0
.end method

.method public isLocalPlaybackEnabled()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mLocalPlaybackEnabled:Z

    return v0
.end method

.method public isMdxRemoteControlLockScreenEnabled()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlLockScreenEnabled:Z

    return v0
.end method

.method public isMdxRemoteControlNotificationEnabled()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mMdxRemoteControlNotificationEnabled:Z

    return v0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsPlayBillingDisabled:Z

    return v0
.end method

.method public persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    .line 294
    if-nez p1, :cond_0

    .line 295
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deviceConfig object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
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

    .line 303
    :cond_1
    new-instance v2, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceRepository:Lcom/netflix/mediaclient/service/configuration/DeviceRepository;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDeviceCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mImagePrefRepository:Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/ImagePrefRepository;->update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDisableWebsocketFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMdxDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDisableMdxFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isWidevineL1Enabled()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateWidevineL1Flag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    .line 312
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldForceLegacyCrypto()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateForceLegacyCryptoFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    .line 314
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDynecomSignInEnabled()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDynecomSignInFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    .line 315
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isVoipEnabledOnDevice()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateVoipEnabledOnDeviceFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    .line 316
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAudioFormats()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateAudioFormat(Lcom/netflix/mediaclient/util/NetflixPreference;I)V

    .line 318
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getConsolidatedloggingSpecification()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateConsolidatedLoggingSpecification(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/util/List;)V

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleConfiguration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->update(Landroid/content/Context;Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 322
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVresion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVresion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    .line 323
    const-string/jumbo v0, "config_min_version"

    iget v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppMinimalVersion:I

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 325
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVresion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVresion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    .line 326
    const-string/jumbo v0, "config_recommended_version"

    iget v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAppRecommendedVersion:I

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 328
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

    .line 329
    const-string/jumbo v0, "pt_aggregation_size"

    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mPTAggregationSize:I

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 331
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getIpConnectivityPolicy()I

    move-result v0

    .line 332
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->from(I)Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIpConnectivityPolicy:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    .line 333
    const-string/jumbo v1, "ip_connectivity_policy_overide"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 335
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getUserSessionTimeoutDuration()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    .line 336
    const-string/jumbo v0, "apm_user_session_timeout_duration_override"

    iget v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mUserSessionDurationInSeconds:I

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 338
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mBreadcrumbLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    .line 339
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mErrorLoggingSpecification:Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    .line 341
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVideoResolutionOverride:I

    .line 342
    const-string/jumbo v0, "video_resolution_override"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 343
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForGcmBrowseEvents:I

    .line 344
    const-string/jumbo v0, "gcm_browse_rate_limit"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 345
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mRateLimitForNListChangeEvents:I

    .line 346
    const-string/jumbo v0, "gcm_tray_change_rate_limit"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 348
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getJPlayerStreamErrorRestartCount()I

    move-result v0

    .line 349
    const-string/jumbo v1, "jplayer_restart_count"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 351
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableLocalPlayback()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateLocalPlaybackStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlLockScreen()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateMdxRemoteControlLockScreenStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlNotification()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateMdxRemoteControlNotificationStatus(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForMissingLocale()Z

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDeviceLocaleSupportAlert(Lcom/netflix/mediaclient/util/NetflixPreference;ZLjava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    .line 357
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 358
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    .line 360
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    .line 361
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateGeoCountryCode(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAndroidJobScheduler()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->updateJobSchedulerDisabledAndDisableIfNeeded(Landroid/content/Context;Z)V

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAndroidJobSchedulerJobFinish()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->updateJobFinishDisabled(Landroid/content/Context;Z)V

    .line 366
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppBootUrlSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateAppBootUrlSuffix(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mSignUpConfig:Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppBootUrlSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIsPlayBillingDisabled:Z

    .line 370
    const-string/jumbo v0, "disable_playbilling"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 371
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePrelaodForPlayBilling()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mIgnorePreloadForPlayBilling:Z

    .line 372
    const-string/jumbo v0, "ignore_preload_playbilling"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePrelaodForPlayBilling()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 374
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableCastFaststart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    .line 375
    const-string/jumbo v0, "disable_cast_faststart"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableCastFaststart:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 376
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableDataSaver()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableDataSaver:Z

    .line 377
    const-string/jumbo v0, "disable_data_saver"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDisableDataSaver:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 379
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowHevcMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    .line 380
    const-string/jumbo v0, "prefs_allow_hevc_mobile"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowHevcMobile:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 382
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowVp9Mobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    .line 383
    const-string/jumbo v0, "prefs_allow_vp9_mobile"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mAllowVp9Mobile:Z

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 385
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDeviceConfigInCache()Z

    move-result v0

    if-nez v0, :cond_3

    .line 386
    invoke-direct {p0, v2, v6}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->updateDeviceConfigFlag(Lcom/netflix/mediaclient/util/NetflixPreference;Z)V

    .line 389
    :cond_3
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 322
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 325
    goto/16 :goto_2
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mShouldAlertForMissingLocale:Z

    return v0
.end method

.method public shouldDisableVoip()Z
    .locals 1

    .prologue
    .line 641
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

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mForceLegacyCrypto:Z

    return v0
.end method
