.class Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;
.super Ljava/lang/Object;
.source "DummyOfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectWidthHeight()Landroid/util/Pair;
    .locals 1
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

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getBifFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadContext()Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->access$000(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "file:///sdcard/offline/offline.mpd"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->access$100(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineKeySetId()[B
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getOxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getVideoTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method
