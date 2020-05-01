.class public Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;
.super Ljava/lang/Object;
.source "PlaybackBookmark.java"


# instance fields
.field public final mBookmarkInSecond:I

.field public final mBookmarkUpdateTimeInUTCMs:J

.field public final mVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    .line 19
    iput-wide p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    .line 20
    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mVideoId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static fromAsset(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;
    .locals 5

    .prologue
    .line 29
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;-><init>(IJLjava/lang/String;)V

    return-object v0
.end method
