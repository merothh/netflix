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

    .prologue
    .line 853
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    .line 869
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 868
    :goto_0
    return-object v0

    .line 869
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEpisodeReady()Z
    .locals 1

    .prologue
    .line 874
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->isEpisodeReady:Z

    return v0
.end method

.method public isLanguageReady()Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 884
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->isLanguageSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    goto :goto_0

    .line 884
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isPanelExpanded()Z
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result v0

    return v0
.end method

.method public isPlayingRemotely()Z
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isPlayingRemotely()Z

    move-result v0

    return v0
.end method

.method public isRemotePlayerReady()Z
    .locals 1

    .prologue
    .line 889
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

    .prologue
    .line 932
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    .line 933
    return-void
.end method

.method public onPauseClicked()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->pause()V

    .line 940
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method public onResumeClicked()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resume()V

    .line 947
    :cond_0
    return-void
.end method

.method public onShowLanguageSelectorDialog()V
    .locals 4

    .prologue
    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    .line 972
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

    .line 973
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$2300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->display(Lcom/netflix/mediaclient/media/Language;)V

    .line 975
    :cond_0
    return-void
.end method

.method public onSkipBackClicked()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->skipBackThirtySeconds()V

    .line 953
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    .line 955
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 894
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$302(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z

    .line 896
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->startTrackingTouchTime:J

    .line 897
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    .line 898
    return-void
.end method

.method public onStopClicked()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->stop(Z)V

    .line 962
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 902
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

    .line 903
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$302(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z

    .line 909
    if-eqz p2, :cond_1

    .line 910
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->startTrackingTouchTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 911
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    .line 912
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
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

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    .line 916
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1900(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;J)V

    .line 923
    :goto_0
    return-void

    .line 919
    :cond_1
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "Seeking..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 921
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/MdxUtils;->setProgressByBif(Landroid/widget/SeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->seek(I)V

    goto :goto_0
.end method
