.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;
.super Ljava/lang/Object;
.source "MdxMiniPlayerFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;


# instance fields
.field private startTrackingTouchTime:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEpisodeReady()Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->isEpisodeReady:Z

    return v0
.end method

.method public isLanguageReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->isLanguageSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isPanelExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result v0

    return v0
.end method

.method public isPlayingRemotely()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isPlayingRemotely()Z

    move-result v0

    return v0
.end method

.method public isRemotePlayerReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyControlsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    return-void
.end method

.method public onPauseClicked()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onResumeClicked()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resume()V

    :cond_0
    return-void
.end method

.method public onShowLanguageSelectorDialog()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Displaying language dialog, language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$2300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->display(Lcom/netflix/mediaclient/media/Language;)V

    :cond_0
    return-void
.end method

.method public onSkipBackClicked()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->skipBackThirtySeconds()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$302(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->startTrackingTouchTime:J

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    return-void
.end method

.method public onStopClicked()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->stop(Z)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;Z)V
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v0, "MdxMiniPlayerFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopTrackingTouch, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$302(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->startTrackingTouchTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MdxMiniPlayerFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Seconds elapsed during seek (back to snap position): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", new time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1900(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;J)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "Seeking..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/MdxUtils;->setProgressByBif(Landroid/widget/SeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->seek(I)V

    goto :goto_0
.end method
