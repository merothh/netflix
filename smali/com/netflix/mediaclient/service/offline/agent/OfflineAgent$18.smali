.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

.field final synthetic val$movieId:J

.field final synthetic val$offlineManifest:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;

.field final synthetic val$status:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    iput-wide p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$movieId:J

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1543
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mainThread offlineManifest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$movieId:J

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$18;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;->onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1547
    return-void
.end method
