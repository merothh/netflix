.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field final synthetic val$playableId:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$playableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f03ad

    if-ne v0, v1, :cond_2

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->StartCachedPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->offlineShows:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->finish()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$playableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->startOfflinePlayback(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f03af

    if-ne v0, v1, :cond_3

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->removeCachedVideoButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$playableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$playableId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f03b2

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
