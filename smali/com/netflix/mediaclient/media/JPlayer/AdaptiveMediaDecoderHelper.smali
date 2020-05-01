.class public Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;
.super Ljava/lang/Object;
.source "AdaptiveMediaDecoderHelper.java"


# static fields
.field static final HD1080P_HEIGHT:I = 0x438

.field static final HD1080P_WIDTH:I = 0x780

.field static final HD720P_HEIGHT:I = 0x2d0

.field static final HD720P_WIDTH:I = 0x500

.field static final SD_HEIGHT:I = 0x1e0

.field static final SD_WIDTH:I = 0x2d0

.field protected static final TAG:Ljava/lang/String; = "AdaptiveMediaDecoderHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getAdaptivePlaybackDecoderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 22
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 23
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 24
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 35
    invoke-virtual {v2, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    .line 36
    const-string/jumbo v4, "adaptive-playback"

    invoke-virtual {v3, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    const-string/jumbo v0, "AdaptiveMediaDecoderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " supports AdaptivePlayback"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_1
    return-object v0

    .line 44
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    const-string/jumbo v0, "AdaptiveMediaDecoderHelper"

    const-string/jumbo v1, "AdaptivePlayback is not supported"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getRequiredMaximumResolution(Lcom/netflix/mediaclient/media/VideoResolutionRange;Z)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/VideoResolutionRange;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 68
    :cond_0
    const/16 v0, 0x2d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAvcDecoderSupportsAdaptivePlayback()Z
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->getAdaptivePlaybackDecoderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
