.class public interface abstract Lcom/google/android/exoplayer2/Renderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# virtual methods
.method public abstract disable()V
.end method

.method public abstract disableWhenPeriodChanges()V
.end method

.method public abstract enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V
.end method

.method public abstract getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;
.end method

.method public abstract getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lcom/google/android/exoplayer2/source/SampleStream;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
.end method

.method public abstract render(JJ)V
.end method

.method public abstract replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V
.end method

.method public abstract resetPosition(J)V
.end method

.method public abstract setAudioMpegDProperties(Lcom/google/android/exoplayer2/AudioParameters;)V
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public abstract setIndex(I)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
