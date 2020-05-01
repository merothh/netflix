.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
.super Ljava/lang/Object;
.source "ManifestRequestParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_FetchManifestsRequest"

.field private static allowAVC:Z

.field private static forceHEVC:Z

.field private static forceVP9:Z


# instance fields
.field private allowHEVC:Z

.field private allowVP9:Z

.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mDxid:Ljava/lang/String;

.field private mFalvor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

.field private mOxid:Ljava/lang/String;

.field private mPlayableIds:[Ljava/lang/String;

.field private mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

.field private mUiversion:Ljava/lang/String;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private mVersion:I

.field private mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAllowVp9Mobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowVP9:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAllowHevcMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowHEVC:Z

    return-void
.end method

.method private buildManifestUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->getManifestMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getManifestMethodName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "manifest"

    return-object v0
.end method

.method public static getPresetFormat()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video/hevc"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "video/avc"

    goto :goto_0
.end method

.method public static presetVideoFormat(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    :goto_0
    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presetVideoFormat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    goto :goto_0
.end method

.method private shouldUseVP9(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isSupportVP9()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 11

    const/16 v9, 0x2d0

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceHd()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isWidevineL1Enabled()Z

    move-result v3

    if-eqz v3, :cond_10

    move v4, v0

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    sget-boolean v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "playready-h264mpl30-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v3

    if-lt v3, v9, :cond_0

    if-eqz v4, :cond_0

    const-string/jumbo v3, "playready-h264mpl31-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v3, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v7, "device supports 720P"

    invoke-static {v3, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v3

    const/16 v7, 0x438

    if-lt v3, v7, :cond_1

    if-eqz v4, :cond_1

    const-string/jumbo v3, "playready-h264mpl40-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v3, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v7, "device supports 1080P"

    invoke-static {v3, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_11

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureHEVCDecoder()Z

    move-result v3

    :goto_1
    iget-boolean v7, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowHEVC:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    :cond_2
    sget-boolean v7, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    if-eqz v7, :cond_5

    :cond_3
    const-string/jumbo v7, "hevc-main-L21-dash-cenc-mobile"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v7, "hevc-main-L30-dash-cenc-mobile"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v7

    if-lt v7, v9, :cond_4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureHEVCDecoder()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "hevc-main-L31-dash-cenc-mobile"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    const-string/jumbo v7, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v8, "device supports HEVC"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v4, :cond_12

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowVP9:Z

    if-eqz v3, :cond_7

    if-nez v0, :cond_8

    :cond_7
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    if-eqz v0, :cond_a

    :cond_8
    const-string/jumbo v0, "vp9-profile0-L21-dash-cenc"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v0, "vp9-profile0-L30-dash-cenc"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v0

    if-lt v0, v9, :cond_9

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "vp9-profile0-L31-dash-cenc"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_9
    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v3, "device supports VP9"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "quality "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDolbyDigitalPlus51Supported()Z

    move-result v0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDolbyDigitalPlus20Supported()Z

    move-result v3

    const-string/jumbo v4, "heaac-2-dash"

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v3, :cond_c

    const-string/jumbo v3, "ddplus-2.0-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_c
    if-eqz v0, :cond_d

    const-string/jumbo v0, "ddplus-5.1-dash"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_d
    const-string/jumbo v0, "simplesdh"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v3, "dfxp-ls-sdh"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v3, "nflx-cmisc"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v0, "BIF320"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v0, "profiles"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "method"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->getManifestMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mFalvor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    if-eqz v0, :cond_e

    const-string/jumbo v0, "flavor"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mFalvor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    if-ne v0, v3, :cond_f

    const-string/jumbo v0, "type"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "downloadQuality"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "oxid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "dxid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "preferAssistiveAudio"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAssistiveAudioEnabled()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_f
    const-string/jumbo v0, "useHttpsStreams"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "drmType"

    const-string/jumbo v3, "widevine"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "uiversion"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUiversion:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sdk"

    const-string/jumbo v3, "4.1"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "platform"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "application"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "viewableIds"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mPlayableIds:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v6}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string/jumbo v5, "appselectedlanguages"

    new-instance v6, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "platformselectedlanguages"

    new-instance v5, Lorg/json/JSONArray;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_15

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "params"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->buildManifestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "preferredlanguages"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    move v4, v2

    goto/16 :goto_0

    :cond_11
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHEVCHardwareDecoder()Z

    move-result v3

    goto/16 :goto_1

    :cond_12
    iget-boolean v7, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowHEVC:Z

    if-eqz v7, :cond_13

    if-nez v3, :cond_14

    :cond_13
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isSupportVP9()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_14
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9HardwareDecoder()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v2

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v0, "preferredlanguages"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_4
    const-string/jumbo v3, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v4, "error creating manifest params"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method downaloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    return-object p0
.end method

.method flavor(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mFalvor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    return-object p0
.end method

.method playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mPlayableIds:[Ljava/lang/String;

    return-object p0
.end method

.method setBladerunnerVersion(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    return-object p0
.end method

.method setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    return-object p0
.end method

.method type(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    return-object p0
.end method

.method uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUiversion:Ljava/lang/String;

    return-object p0
.end method
