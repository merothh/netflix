.class Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private endPlaybackHeadPosition:J

.field private frameCountBeforeWrapAround:J

.field private lastRawPlaybackHeadPosition:J

.field private needsPassthroughWorkaround:Z

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I

.field private stopPlaybackHeadPosition:J

.field protected stopTimestampUs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>()V

    return-void
.end method

.method static needPlaybackHeadPositionWorkaround()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAvailableSpaceBytes(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackHeadPosition()J
    .locals 8

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v0, 0x1

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, v0, v2

    if-gez v5, :cond_3

    move-wide v0, v2

    :goto_1
    invoke-static {}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->needPlaybackHeadPositionWorkaround()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->frameCountBeforeWrapAround:J

    :cond_2
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->frameCountBeforeWrapAround:J

    add-long/2addr v2, v0

    goto :goto_0

    :cond_3
    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    :cond_5
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v0, v2

    :cond_6
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_7

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    :cond_7
    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public getPlaybackHeadPositionUs()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTimestampFramePosition()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleEndOfStream(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public pause()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_0
.end method

.method pcmFrameSubmitted(I)V
    .locals 0

    return-void
.end method

.method play()V
    .locals 0

    return-void
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    iput-boolean p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->frameCountBeforeWrapAround:J

    return-void
.end method

.method setBufferFrameSize(II)V
    .locals 0

    return-void
.end method

.method public setPlaybackParameters(Landroid/media/PlaybackParams;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateTimestamp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
