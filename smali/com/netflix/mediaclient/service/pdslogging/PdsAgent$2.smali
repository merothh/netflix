.class Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$2;
.super Ljava/lang/Object;
.source "PdsAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$2;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$2;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$2;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->access$000(Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 62
    return-void
.end method
