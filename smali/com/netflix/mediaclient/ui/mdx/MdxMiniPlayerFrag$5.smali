.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;
.super Ljava/lang/Object;
.source "MdxMiniPlayerFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSeekbarUpdate(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V
    .locals 4

    .prologue
    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    if-nez v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    if-ltz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

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

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    iget v1, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    .line 717
    :cond_2
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    if-eqz v0, :cond_4

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    goto :goto_0

    .line 720
    :cond_4
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    iget v1, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1900(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;J)V

    goto :goto_0
.end method

.method private isErrorRequireDisableControl(I)Z
    .locals 1

    .prologue
    .line 759
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

    .prologue
    .line 841
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    :goto_0
    return-void

    .line 845
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const-string/jumbo v1, "cancelDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    goto :goto_0
.end method

.method public endOfPlayback()V
    .locals 2

    .prologue
    .line 764
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const-string/jumbo v1, "endOfPlayback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1502(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z

    .line 769
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 770
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxEndOfPlayback()V

    .line 772
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->reset()V

    .line 773
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1302(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 774
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 740
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

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

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1502(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z

    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$2000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$2100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->handleMdxError(ILjava/lang/String;)V

    .line 750
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->isErrorRequireDisableControl(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->enableMdxMenu()V

    .line 753
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxEndOfPlayback()V

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateMdxMenu()V

    .line 756
    return-void
.end method

.method public mdxStateChanged(Z)V
    .locals 3

    .prologue
    .line 727
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdxStateChanged, ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 736
    :cond_0
    return-void
.end method

.method public showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

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

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 833
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->newInstance(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 835
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->setCancelable(Z)V

    .line 836
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0
.end method

.method public targetListChanged()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const-string/jumbo v1, "targetListChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public updateDuration(I)V
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDuration, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 810
    if-lez p1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgressMax(I)V

    goto :goto_0

    .line 814
    :cond_1
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "We received an invalid duration - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .prologue
    .line 796
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLanguage from remote player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    .line 801
    return-void
.end method

.method public updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V
    .locals 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 782
    :cond_0
    if-nez p1, :cond_1

    .line 783
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "Capabilities is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$2200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)V

    goto :goto_0

    .line 787
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

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

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isVolumeControl()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$2200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)V

    goto :goto_0
.end method

.method public updateUi(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 695
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

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

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1502(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z

    .line 700
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->volume:I

    iput v2, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->mostRecentVolume:I

    .line 701
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    iget-boolean v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;ZZ)V

    .line 702
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v1

    iget-boolean v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 704
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->handleSeekbarUpdate(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V

    .line 705
    return-void
.end method

.method public updateVideoMetadata()V
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const-string/jumbo v1, "updateVideoMetadata"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 679
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    .line 680
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/MdxUtils;->isSameVideoPlaying(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const-string/jumbo v1, "Same video is already playing, doing nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_1
    if-nez v1, :cond_2

    .line 684
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "null video details provided by mdx agent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

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

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    goto :goto_0
.end method
