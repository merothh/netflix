.class Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;
.super Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private playbackParams:Landroid/media/PlaybackParams;

.field private playbackSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    .line 1339
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    .line 1340
    return-void
.end method

.method private maybeApplyPlaybackParams()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1367
    :cond_0
    return-void
.end method


# virtual methods
.method public getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 1360
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    return v0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 0

    .prologue
    .line 1345
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 1346
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->maybeApplyPlaybackParams()V

    .line 1347
    return-void
.end method

.method public setPlaybackParameters(Landroid/media/PlaybackParams;)V
    .locals 1

    .prologue
    .line 1351
    if-eqz p1, :cond_0

    .line 1352
    :goto_0
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 1353
    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    .line 1354
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    .line 1355
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;->maybeApplyPlaybackParams()V

    .line 1356
    return-void

    .line 1351
    :cond_0
    new-instance p1, Landroid/media/PlaybackParams;

    invoke-direct {p1}, Landroid/media/PlaybackParams;-><init>()V

    goto :goto_0
.end method
