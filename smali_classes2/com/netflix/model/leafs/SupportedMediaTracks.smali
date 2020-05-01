.class public interface abstract Lcom/netflix/model/leafs/SupportedMediaTracks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;,
        Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
    }
.end annotation


# virtual methods
.method public abstract getAudioTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubtitleTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuggestedAudioTrackIndex()I
.end method

.method public abstract getSuggestedSubtitleTrackIndex()I
.end method
