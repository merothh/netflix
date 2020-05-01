.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$playableId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f03b0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasCellular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$playableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$playableId:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoWifiDialog(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->ResumeDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->resumeDownloadButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v4, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$playableId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->resumeDownload(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$playableId:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoInternetDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f03b1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$playableId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$playableId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0f03b2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
