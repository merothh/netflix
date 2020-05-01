.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16$1;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayableManifestReady(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onPlayableManifestReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;

    iget-wide v2, v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;->val$movieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$16;->val$movieId:J

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onPlayableManifestReady originalCallback not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
