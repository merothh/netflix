.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

.field final synthetic val$invokedFrom:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->val$invokedFrom:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->val$invokedFrom:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1800(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$9;->val$callback:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;->onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
