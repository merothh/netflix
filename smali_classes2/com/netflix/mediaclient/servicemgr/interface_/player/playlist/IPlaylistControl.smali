.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;
    }
.end annotation


# virtual methods
.method public abstract b(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z
.end method

.method public abstract e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
.end method

.method public abstract m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
.end method

.method public abstract o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
.end method

.method public abstract setTransitionBeginListener(Lo/Bu;J)V
.end method

.method public abstract setTransitionEndListener(Lo/Bq;)V
.end method
