.class public Lo/cH;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Ljava/lang/String; = "nf_configuration_device"

.field public static final e:Ljava/lang/Boolean;


# instance fields
.field private a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lo/cH;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/cH;->d:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lo/cH;->c:Landroid/content/Context;

    .line 58
    iget-object p1, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v0, "deviceConfig"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object p1

    iput-object p1, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 60
    invoke-direct {p0}, Lo/cH;->ac()V

    return-void
.end method

.method private Y()V
    .locals 1

    .line 73
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->forcedDeviceCategory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-static {v0}, Lo/aek;->d(Ljava/lang/String;)V

    return-void
.end method

.method private ab()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getConsolidatedloggingSpecification()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lo/cH;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private ac()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lo/cH;->ab()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/cH;->d:Ljava/util/Map;

    .line 69
    invoke-direct {p0}, Lo/cH;->Y()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "https://www.netflix.com"

    return-object p0
.end method

.method private static d(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    .line 206
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlLockScreen()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableLocalPlayback()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public C()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;
    .locals 1

    .line 242
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->pdsAndLogblobConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->pdsAndLogblobConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public D()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;
    .locals 1

    .line 246
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->partnerIntegrationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->partnerIntegrationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public E()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    .line 287
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public F()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isVoipEnabledOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public G()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1

    .line 299
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableCastFaststart()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowHevcMobile()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAccurateStartPoint()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableLicensePrefetch()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public M()J
    .locals 4

    .line 323
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    const-wide/32 v1, 0x1d4c0

    if-nez v0, :cond_0

    return-wide v1

    .line 326
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method public N()Ljava/lang/String;
    .locals 4

    .line 332
    iget-object v0, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v1, "webview_url_preference"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lo/cH;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/cH;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    sget-object v1, Lo/cH;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSignUpBootloader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public O()V
    .locals 2

    .line 381
    invoke-virtual {p0}, Lo/cH;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    new-instance v0, Lo/aea;

    invoke-direct {v0}, Lo/aea;-><init>()V

    const-string v1, "nf_device_config_cached"

    .line 386
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "image_pref"

    .line 387
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "signup_enabled"

    .line 388
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "signup_timeout"

    .line 389
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "nf_subtitle_configuraton"

    .line 390
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "cl_configuration"

    .line 391
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "ip_connectivity_policy_overide"

    .line 392
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "apm_user_session_timeout_duration_override"

    .line 393
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "breadcrumb_log_configuration"

    .line 394
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "error_log_configuration"

    .line 395
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "voip_configuration"

    .line 396
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "offline_config"

    .line 397
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "pt_aggregation_size"

    .line 398
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "config_recommended_version"

    .line 399
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "config_min_version"

    .line 400
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "disable_mdx"

    .line 401
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "disable_websocket"

    .line 402
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "enable_widevine_l1"

    .line 403
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "enable_dynecom_signin"

    .line 404
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "enable_voip_on_device"

    .line 405
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "memento_enabled_for_world"

    .line 406
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "video_resolution_override"

    .line 407
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "gcm_browse_rate_limit"

    .line 408
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "gcm_tray_change_rate_limit"

    .line 409
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "playback_configuration_local_playback_enabled"

    .line 410
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "mdx_configuration_remote_lockscreen_enabled"

    .line 411
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "mdx_configuration_remote_notification_enabled"

    .line 412
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "jplayer_restart_count"

    .line 413
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "device_locale_not_supported"

    .line 414
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "device_locale_not_supported_msg"

    .line 415
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "disable_playbilling"

    .line 416
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "ignore_preload_playbilling"

    .line 417
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "device_config_geo_country_code"

    .line 418
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "subtitle_download_retry_policy"

    .line 419
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "disable_cast_faststart"

    .line 420
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "disable_data_saver"

    .line 421
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "prefs_allow_hevc_mobile"

    .line 422
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "prefs_allow_vp9_mobile"

    .line 423
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    .line 424
    invoke-virtual {v0}, Lo/aea;->b()V

    return-void
.end method

.method public P()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnableOfflineSecureDelete()Z

    move-result v0

    return v0
.end method

.method public Q()V
    .locals 7

    .line 428
    iget-object v0, p0, Lo/cH;->c:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "enable_widevine_l1"

    invoke-static {v0, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 429
    iget-object v2, p0, Lo/cH;->c:Landroid/content/Context;

    const/4 v3, -0x1

    const-string v4, "config_recommended_version"

    invoke-static {v2, v4, v3}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 430
    iget-object v4, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v5, "config_min_version"

    invoke-static {v4, v5, v3}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 431
    iget-object v4, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v5, "device_config_geo_country_code"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 433
    iget-object v5, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toBuilder()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;

    move-result-object v5

    .line 434
    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;->setIsWidevineL1Enabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;

    move-result-object v5

    .line 435
    invoke-virtual {v5, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;->setGetAppRecommendedVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;

    move-result-object v5

    .line 436
    invoke-virtual {v5, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;->setGetAppMinVersion(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;

    move-result-object v5

    .line 437
    invoke-virtual {v5, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;->setGetGeoCountryCode(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;

    move-result-object v5

    .line 438
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;->build()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object v5

    iput-object v5, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 440
    sget-object v5, Lo/cH;->b:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const-string v0, "recoverAndClearLegacyConfigs: L1: %b, appRecoVersion: %d, appMinVersion: %d, geo: %s"

    invoke-static {v5, v0, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 441
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {p0, v0}, Lo/cH;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    return-void
.end method

.method public R()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnabledWidevineL3SystemId4266()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public S()I
    .locals 1

    .line 453
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoPrefetchIntervalOverride()I

    move-result v0

    :goto_0
    return v0
.end method

.method public T()I
    .locals 1

    .line 473
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipInstallDeadlineInDays()I

    move-result v0

    :goto_0
    return v0
.end method

.method public U()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableAmazonADM()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()I
    .locals 1

    .line 477
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMaxAppLifeDays()I

    move-result v0

    :goto_0
    return v0
.end method

.method public W()Z
    .locals 1

    .line 461
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisablePip()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X()Z
    .locals 1

    .line 469
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldGetNrmViaMsl()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()I
    .locals 1

    .line 87
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVersion()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public a(Z)V
    .locals 2

    .line 445
    iget-object v0, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v1, "disable_roar"

    invoke-static {v0, v1, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public aa()I
    .locals 1

    .line 481
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppUpdateDialogFreqDays()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
    .locals 1

    .line 167
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_0
    iget-object v0, p0, Lo/cH;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V
    .locals 3

    if-nez p1, :cond_0

    .line 180
    sget-object p1, Lo/cH;->b:Ljava/lang/String;

    const-string v0, "deviceConfig object is null - ignore overwrite"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v2, "deviceConfig"

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableRoar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/cH;->a(Z)V

    .line 187
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoCacheExpirationOverride()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/cH;->d(I)V

    .line 189
    iput-object p1, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 190
    invoke-direct {p0}, Lo/cH;->ac()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 1

    .line 91
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVersion()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public d(I)V
    .locals 2

    .line 457
    iget-object v0, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v1, "lolomo_cache_expiration_hours_override"

    invoke-static {v0, v1, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isWidevineL1Enabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 112
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDolbyVisionEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDisableLegacyNetflixMdx()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdr10Enabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableLoginOverMsl()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 138
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAudioFormats()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 130
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMdxDisabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()I
    .locals 1

    .line 134
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()I
    .locals 1

    .line 126
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;
    .locals 1

    .line 162
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;
    .locals 1

    .line 158
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getStreamingCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForMissingLocale()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()I
    .locals 1

    .line 230
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getUserSessionTimeoutDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    return v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getErrorLoggingSpecifications()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public w()Z
    .locals 3

    .line 199
    iget-object v0, p0, Lo/cH;->c:Landroid/content/Context;

    const-string v1, "nf_device_config_cached"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSuppressedLogblobs()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getBreadcrumbLoggingSpecifications()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lo/cH;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlNotification()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
