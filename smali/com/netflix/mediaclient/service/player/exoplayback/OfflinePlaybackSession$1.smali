.class Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;
.super Ljava/lang/Object;
.source "OfflinePlaybackSession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 132
    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManifestResponse movieId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " offlineManifest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v0, p3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$000(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManifestResponse error ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_FETCH:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OfflinePlayback.ManifestRequestFailure"

    .line 138
    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$100(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$200(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->MANIFEST_FAILURE:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onManifestResponse failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_FETCH:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    .line 143
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;)V

    goto :goto_0
.end method
