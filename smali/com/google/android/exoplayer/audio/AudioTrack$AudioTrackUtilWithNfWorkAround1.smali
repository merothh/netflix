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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->minBuffer:I

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->allocateBuffer:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;-><init>()V

    return-void
.end method


# virtual methods
.method getAvailableSpaceBytes(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->wasPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    if-nez v0, :cond_1

    const/4 p1, -0x1

    :cond_0
    :goto_0
    return p1

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

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->stopTimestampUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->wasPaused:Z

    iput-boolean v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    iput v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    goto :goto_0
.end method

.method pcmFrameSubmitted(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    return-void
.end method

.method play()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->isPlaying:Z

    return-void
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->wasPaused:Z

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->totalFrameSincePause:I

    return-void
.end method

.method setBufferFrameSize(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->minBuffer:I

    iput p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilWithNfWorkAround1;->allocateBuffer:I

    return-void
.end method
