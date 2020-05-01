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

    .prologue
    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    .line 108
    sput-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAllowVp9Mobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowVP9:Z

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAllowHevcMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowHEVC:Z

    .line 47
    return-void
.end method

.method private buildManifestUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
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

    .prologue
    .line 81
    const-string/jumbo v0, "manifest"

    return-object v0
.end method

.method public static getPresetFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
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

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    .line 93
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    .line 94
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    .line 96
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    .line 103
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

    .line 104
    return-void

    .line 97
    :cond_0
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    .line 99
    sput-boolean v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    goto :goto_0

    .line 101
    :cond_1
    sput-boolean v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    goto :goto_0
.end method

.method private shouldUseVP9(Z)Z
    .locals 1

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    .line 234
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

    .prologue
    const/16 v9, 0x2d0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
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

    .line 116
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoResolutionRange()Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v5

    .line 117
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 122
    sget-boolean v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowAVC:Z

    if-eqz v3, :cond_1

    .line 123
    const-string/jumbo v3, "playready-h264mpl30-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 124
    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v3

    if-lt v3, v9, :cond_0

    if-eqz v4, :cond_0

    .line 125
    const-string/jumbo v3, "playready-h264mpl31-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 126
    const-string/jumbo v3, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v7, "device supports 720P"

    invoke-static {v3, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v3

    const/16 v7, 0x438

    if-lt v3, v7, :cond_1

    if-eqz v4, :cond_1

    .line 129
    const-string/jumbo v3, "playready-h264mpl40-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    const-string/jumbo v3, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v7, "device supports 1080P"

    invoke-static {v3, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    if-eqz v4, :cond_11

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureHEVCDecoder()Z

    move-result v3

    .line 137
    :goto_1
    iget-boolean v7, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowHEVC:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    :cond_2
    sget-boolean v7, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceHEVC:Z

    if-eqz v7, :cond_5

    .line 138
    :cond_3
    const-string/jumbo v7, "hevc-main-L21-dash-cenc-mobile"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 139
    const-string/jumbo v7, "hevc-main-L30-dash-cenc-mobile"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 140
    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v7

    if-lt v7, v9, :cond_4

    if-eqz v4, :cond_4

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureHEVCDecoder()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 142
    const-string/jumbo v7, "hevc-main-L31-dash-cenc-mobile"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    :cond_4
    const-string/jumbo v7, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v8, "device supports HEVC"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_5
    if-eqz v4, :cond_12

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    .line 151
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowVP9:Z

    if-eqz v3, :cond_7

    if-nez v0, :cond_8

    :cond_7
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->forceVP9:Z

    if-eqz v0, :cond_a

    .line 152
    :cond_8
    const-string/jumbo v0, "vp9-profile0-L21-dash-cenc"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    const-string/jumbo v0, "vp9-profile0-L30-dash-cenc"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 154
    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v0

    if-lt v0, v9, :cond_9

    if-eqz v4, :cond_9

    .line 155
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    const-string/jumbo v0, "vp9-profile0-L31-dash-cenc"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 158
    :cond_9
    const-string/jumbo v0, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v3, "device supports VP9"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 161
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

    .line 164
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDolbyDigitalPlus51Supported()Z

    move-result v0

    .line 165
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDolbyDigitalPlus20Supported()Z

    move-result v3

    .line 166
    const-string/jumbo v4, "heaac-2-dash"

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    if-eqz v3, :cond_c

    .line 168
    const-string/jumbo v3, "ddplus-2.0-dash"

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    :cond_c
    if-eqz v0, :cond_d

    .line 171
    const-string/jumbo v0, "ddplus-5.1-dash"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 175
    :cond_d
    const-string/jumbo v0, "simplesdh"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v3, "dfxp-ls-sdh"

    .line 176
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v3, "nflx-cmisc"

    .line 177
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 180
    const-string/jumbo v0, "BIF320"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    const-string/jumbo v0, "profiles"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v0, "method"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->getManifestMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mFalvor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    if-eqz v0, :cond_e

    .line 185
    const-string/jumbo v0, "flavor"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mFalvor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_e
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    if-ne v0, v3, :cond_f

    .line 188
    const-string/jumbo v0, "type"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v0, "downloadQuality"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 193
    const-string/jumbo v0, "oxid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v0, "dxid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v0, "preferAssistiveAudio"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isAssistiveAudioEnabled()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 198
    :cond_f
    const-string/jumbo v0, "useHttpsStreams"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    const-string/jumbo v0, "drmType"

    const-string/jumbo v3, "widevine"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v0, "uiversion"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUiversion:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v0, "sdk"

    const-string/jumbo v3, "4.1"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v0, "platform"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string/jumbo v0, "application"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string/jumbo v0, "viewableIds"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mPlayableIds:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 211
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v6}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 212
    const-string/jumbo v5, "appselectedlanguages"

    new-instance v6, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v0, "platformselectedlanguages"

    new-instance v5, Lorg/json/JSONArray;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_15

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v4, "params"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v1, "url"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->buildManifestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v1, "preferredlanguages"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    move v4, v2

    .line 115
    goto/16 :goto_0

    .line 136
    :cond_11
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHEVCHardwareDecoder()Z

    move-result v3

    goto/16 :goto_1

    .line 148
    :cond_12
    iget-boolean v7, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->allowHEVC:Z

    if-eqz v7, :cond_13

    if-nez v3, :cond_14

    .line 149
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

    .line 222
    :cond_15
    const-string/jumbo v0, "preferredlanguages"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 223
    goto :goto_3

    .line 225
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 226
    :goto_4
    const-string/jumbo v3, "nf_msl_volley_FetchManifestsRequest"

    const-string/jumbo v4, "error creating manifest params"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 225
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method downaloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 69
    return-object p0
.end method

.method flavor(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mFalvor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    .line 60
    return-object p0
.end method

.method playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mPlayableIds:[Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method setBladerunnerVersion(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mVersion:I

    .line 73
    return-object p0
.end method

.method setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mOxid:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mDxid:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method type(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mType:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestType;

    .line 64
    return-object p0
.end method

.method uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->mUiversion:Ljava/lang/String;

    .line 77
    return-object p0
.end method
