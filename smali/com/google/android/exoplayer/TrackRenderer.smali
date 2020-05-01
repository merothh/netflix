.class public abstract Lcom/google/android/exoplayer/TrackRenderer;
.super Ljava/lang/Object;
.source "TrackRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final disable()V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onDisabled()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract doPrepare(J)Z
.end method

.method protected abstract doSomeWork(JJ)V
.end method

.method final enable(IJZ)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/TrackRenderer;->onEnabled(IJZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getBufferedPositionUs()J
.end method

.method protected abstract getDurationUs()J
.end method

.method protected abstract getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
.end method

.method protected getMediaClock()Lcom/google/android/exoplayer/MediaClock;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0
.end method

.method protected abstract getTrackCount()I
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected abstract isEnded()Z
.end method

.method protected abstract isReady()Z
.end method

.method protected abstract maybeThrowError()V
.end method

.method protected onDisabled()V
    .locals 0

    return-void
.end method

.method protected onEnabled(IJZ)V
    .locals 0

    return-void
.end method

.method protected onReleased()V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method final prepare(J)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/TrackRenderer;->doPrepare(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method final release()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iput v2, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onReleased()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract seekTo(J)V
.end method

.method final start()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStarted()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final stop()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStopped()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
