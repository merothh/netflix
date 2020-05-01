.class public interface abstract Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession;
.super Ljava/lang/Object;
.source "IPlaybackSession.java"


# virtual methods
.method public abstract getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.end method

.method public abstract getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getBifFrame(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getCurrentPlayableId()J
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getWidthHeight()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract selectAudioTrack(Lcom/netflix/mediaclient/media/AudioSource;)Z
.end method

.method public abstract selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
.end method

.method public abstract setAudioDuck(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract stop()V
.end method
