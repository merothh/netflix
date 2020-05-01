.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;
.super Ljava/lang/Object;
.source "OfflineErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 681
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "DeleteAndTryAgainHelper retrying"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_0

    .line 684
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$900(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$1000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->cleanUp()V

    .line 689
    :goto_0
    return-void

    .line 687
    :cond_0
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "RetryHelper agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
