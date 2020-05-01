.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->val$playableId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 911
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->val$playableId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    .line 915
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    .line 916
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->forceResetPlayWindow(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 917
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setPersistentStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 918
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/content/Context;)V

    .line 919
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$12;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 921
    :cond_0
    return-void
.end method
