.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$DownloadCompleteAndActivateCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleteAndActivateDone(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1500(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v4, v2, v4}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportDownloadEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1700(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1500(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$8;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v3

    invoke-static {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportDownloadEnded(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlinePlayable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDownloadComplete failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
