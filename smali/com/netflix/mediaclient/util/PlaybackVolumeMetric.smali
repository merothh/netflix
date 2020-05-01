.class public Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;
.super Ljava/lang/Object;
.source "PlaybackVolumeMetric.java"


# static fields
.field public static final PLAYBACK_VOLUME_METRIC_MAX:I = 0xf4240

.field public static final PLAYBACK_VOLUME_METRIC_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "nf_audio"


# instance fields
.field private mVolumeMetric:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->getPlaybackVolumeMetric(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    return-void
.end method

.method private static getPlaybackVolumeMetric(Landroid/content/Context;)I
    .locals 6

    const/4 v2, 0x3

    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    if-lez v2, :cond_2

    const v0, 0xf4240

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nf_audio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Media max volume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", volume metric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isValidPlaybackVolumeMetric(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xf4240

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;

    iget v2, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    iget v3, p1, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getVolumeMetric()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlaybackVolumeMetric{volumeMetric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/PlaybackVolumeMetric;->mVolumeMetric:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
