.class Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;
.super Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private allocateBuffer:I

.field private isPlaying:Z

.field private minBuffer:I

.field private totalFrameSincePause:I

.field private wasPaused:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1372
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V

    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    .line 1375
    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    .line 1376
    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->minBuffer:I

    .line 1377
    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->allocateBuffer:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V
    .locals 0

    .prologue
    .line 1372
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;-><init>()V

    return-void
.end method


# virtual methods
.method getAvailableSpaceBytes(I)I
    .locals 3

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->wasPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    if-nez v0, :cond_1

    .line 1411
    const/4 p1, -0x1

    .line 1416
    :cond_0
    :goto_0
    return p1

    .line 1412
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->wasPaused:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->minBuffer:I

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->allocateBuffer:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1416
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1386
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->stopTimestampUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1394
    :goto_0
    return-void

    .line 1391
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->wasPaused:Z

    .line 1392
    iput-boolean v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    .line 1393
    iput v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    goto :goto_0
.end method

.method pcmFrameSubmitted(I)V
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    .line 1423
    return-void
.end method

.method play()V
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    .line 1400
    return-void
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1380
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 1381
    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->wasPaused:Z

    .line 1382
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    .line 1383
    return-void
.end method

.method setBufferFrameSize(II)V
    .locals 0

    .prologue
    .line 1404
    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->minBuffer:I

    .line 1405
    iput p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->allocateBuffer:I

    .line 1407
    return-void
.end method
