.class public interface abstract Lcom/netflix/mediaclient/media/PlaybackMetadata;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getPlaybackPreCacheData()Lcom/netflix/mediaclient/media/PlaybackPreCacheData;
.end method

.method public abstract getPlayerName()Ljava/lang/String;
.end method

.method public abstract getSubtitleProfile()Ljava/lang/String;
.end method

.method public abstract getVideoBitrate()I
.end method

.method public abstract getVideoDecoderStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoFlavor()Ljava/lang/String;
.end method

.method public abstract getVideoProfile()Ljava/lang/String;
.end method

.method public abstract toDisplayableString(Lo/zJ;Ljava/lang/String;)Ljava/lang/String;
.end method
