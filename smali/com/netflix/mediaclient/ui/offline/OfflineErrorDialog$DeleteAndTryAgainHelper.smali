.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;
.source "OfflineErrorDialog.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    :cond_0
    return-void
.end method

.method public isListenerDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$1200(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;->onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "offlineErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DeleteAndTryAgainHelper onOfflinePlayableDeleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$800(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->cleanUp()V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$1100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "onOfflinePlayableDeleted ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public retry()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "offlineErrorDialog"

    const-string/jumbo v1, "retry offlineAgent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
