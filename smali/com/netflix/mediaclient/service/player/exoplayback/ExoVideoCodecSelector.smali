.class public Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;
.super Ljava/lang/Object;
.source "ExoVideoCodecSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/MediaCodecSelector;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hasHEVCHardwareDecoder:Z

.field private static final hasSecureHEVCDecoder:Z

.field private static final hasSecureVP9Decoder:Z

.field private static final hasVP9HardwareDecoder:Z

.field private static final sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

.field private static final sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

.field private static final supportVP9:Z

.field private static useSoftwareDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    .line 28
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isVideoFormatSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->supportVP9:Z

    .line 30
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureDecoder(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureVP9Decoder:Z

    .line 31
    const-string/jumbo v0, "video/hevc"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureDecoder(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureHEVCDecoder:Z

    .line 32
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->getSoftwareDecoder(Ljava/lang/String;)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    .line 33
    const-string/jumbo v0, "video/hevc"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->getSoftwareDecoder(Ljava/lang/String;)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    .line 34
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHardwareDecoder(Ljava/lang/String;Lcom/google/android/exoplayer/DecoderInfo;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasVP9HardwareDecoder:Z

    .line 35
    const-string/jumbo v0, "video/hevc"

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHardwareDecoder(Ljava/lang/String;Lcom/google/android/exoplayer/DecoderInfo;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHEVCHardwareDecoder:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSoftwareDecoder(Ljava/lang/String;)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 6

    .prologue
    .line 55
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "list all decoder for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/DecoderInfo;

    .line 60
    sget-object v3, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    .line 63
    :cond_2
    :try_start_1
    const-string/jumbo v2, ".google."

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/DecoderInfo;

    .line 65
    iget-object v3, v0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "has a sotfware decoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static hasHardwareDecoder(Ljava/lang/String;Lcom/google/android/exoplayer/DecoderInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    if-eqz p1, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 101
    :cond_1
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static hasSecureDecoder(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 39
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "has a secured decoder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has no secured decoder for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static isHasHEVCHardwareDecoder()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHEVCHardwareDecoder:Z

    return v0
.end method

.method public static isHasHEVCSoftwareDecoder()Z
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHasSecureHEVCDecoder()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureHEVCDecoder:Z

    return v0
.end method

.method public static isHasSecureVP9Decoder()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureVP9Decoder:Z

    return v0
.end method

.method public static isHasVP9HardwareDecoder()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasVP9HardwareDecoder:Z

    return v0
.end method

.method public static isHasVP9SoftwareDecoder()Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVP9()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->supportVP9:Z

    return v0
.end method

.method public static isUseSoftwareDecoder()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    return v0
.end method

.method private static isVideoFormatSupported(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is supported, with decoder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    const/4 v0, 0x1

    .line 90
    :cond_1
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUseSoftwareDecoder(Z)V
    .locals 0

    .prologue
    .line 126
    sput-boolean p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    .line 127
    return-void
.end method


# virtual methods
.method public getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    if-eqz v2, :cond_0

    .line 107
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    .line 116
    :goto_0
    return-object v0

    .line 109
    :cond_0
    if-eqz p2, :cond_2

    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureVP9Decoder:Z

    if-eqz v2, :cond_2

    .line 116
    :cond_1
    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const-string/jumbo v2, "video/hevc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    if-eqz v2, :cond_4

    .line 112
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    goto :goto_0

    .line 114
    :cond_4
    if-eqz p2, :cond_5

    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureHEVCDecoder:Z

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, p2

    goto :goto_1
.end method

.method public getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecUtil;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method
