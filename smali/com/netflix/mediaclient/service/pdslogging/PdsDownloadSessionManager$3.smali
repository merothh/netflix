.class Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;->val$cb:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$200(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setManifestFetchInProgress(Z)V

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "got manifestFromCache :%d - setting links and sendng pds resume"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setLinks(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;->val$cb:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;->val$cb:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;->onManifestFetched(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDownloadContext()Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    move-result-object v4

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$400(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    goto :goto_0
.end method
