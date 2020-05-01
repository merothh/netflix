.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;
.super Ljava/lang/Object;
.source "IPlayer.java"


# virtual methods
.method public abstract isListening()Z
.end method

.method public abstract onAudioChange(I)V
.end method

.method public abstract onBandwidthChange(I)V
.end method

.method public abstract onBufferingUpdate(I)V
.end method

.method public abstract onCompletion()V
.end method

.method public abstract onMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)V
.end method

.method public abstract onNccpError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
.end method

.method public abstract onNrdFatalError()V
.end method

.method public abstract onPlaybackError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
.end method

.method public abstract onPlaying()V
.end method

.method public abstract onPrepared(Lcom/netflix/mediaclient/media/Watermark;)V
.end method

.method public abstract onSeekComplete()V
.end method

.method public abstract onStalled()V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
.end method

.method public abstract onSubtitleFailed()V
.end method

.method public abstract onUpdatePts(I)V
.end method

.method public abstract onVideoSizeChanged(II)V
.end method

.method public abstract playbackClosed()V
.end method

.method public abstract restartPlayback(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
.end method

.method public abstract setLanguage(Lcom/netflix/mediaclient/media/Language;)V
.end method
