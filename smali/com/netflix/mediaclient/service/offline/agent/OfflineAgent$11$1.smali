.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;
.super Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;
.source "OfflineAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;

.field final synthetic val$offlinePlayable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;->val$offlinePlayable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$PlayableRefreshLicenseCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;->val$offlinePlayable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$11$1;->val$offlinePlayable:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
