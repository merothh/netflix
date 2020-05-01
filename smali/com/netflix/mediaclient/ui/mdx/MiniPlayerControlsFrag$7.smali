.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;
.super Ljava/lang/Object;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSeekbarUpdate(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$900(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update video seekbar - pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    iget v1, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    :cond_2
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    iget v1, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2400(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;J)V

    goto :goto_0
.end method

.method private isErrorRequireDisableControl(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "cancelDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    goto :goto_0
.end method

.method public endOfPlayback()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "endOfPlayback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2002(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->getPostplayState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRDP()Z

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->reset()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1802(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxEndOfPlayback()V

    goto :goto_0
.end method

.method public error(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error - code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", descrip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2002(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->handleMdxError(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->isErrorRequireDisableControl(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableMdxMenu()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxEndOfPlayback()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateMdxMenu()V

    return-void
.end method

.method public mdxStateChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdxStateChanged, ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->newInstance(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->setCancelable(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0
.end method

.method public targetListChanged()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "targetListChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    return-void
.end method

.method public updateDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDuration, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgressMax(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "We received an invalid duration - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLanguage from remote player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    return-void
.end method

.method public updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "Capabilities is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2700(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTargetCapabilities, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isVolumeControl()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2700(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)V

    goto :goto_0
.end method

.method public updateUi(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUi, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2002(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)Z

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->volume:I

    iput v2, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->mostRecentVolume:I

    iget-boolean v1, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    iget-boolean v3, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2200(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;ZZZ)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v1

    iget-boolean v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->handleSeekbarUpdate(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V

    return-void
.end method

.method public updateVideoMetadata()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "updateVideoMetadata"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1700(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/MdxUtils;->isSameVideoPlaying(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "Same video is already playing, doing nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "null video details provided by mdx agent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Different video, updating to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1900(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    goto :goto_0
.end method
