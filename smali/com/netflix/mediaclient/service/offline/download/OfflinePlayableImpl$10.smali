.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

.field final synthetic val$offlineManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineLicenseRequestDone(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1339
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_FETCH_NEW:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1900(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    .line 1345
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$10;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-static {v0, p2, p3, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$2000(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    goto :goto_0
.end method
