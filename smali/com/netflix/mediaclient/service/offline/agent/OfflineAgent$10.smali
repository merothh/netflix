.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$requires:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;->val$requires:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$10;->val$requires:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->setRequiresUnmeteredNetwork(Z)V

    .line 840
    return-void
.end method
