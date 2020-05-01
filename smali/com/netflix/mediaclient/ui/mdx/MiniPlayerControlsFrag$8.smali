.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;
.super Ljava/lang/Object;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;


# instance fields
.field private startTrackingTouchTime:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    return-object v0
.end method

.method public isEpisodeReady()Z
    .locals 1

    .prologue
    .line 1202
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->isEpisodeReady:Z

    return v0
.end method

.method public isLanguageReady()Z
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1212
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->isLanguageSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    goto :goto_0

    .line 1212
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isPanelExpanded()Z
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result v0

    return v0
.end method

.method public isPlayingRemotely()Z
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isPlayingRemotely()Z

    move-result v0

    return v0
.end method

.method public isRemotePlayerReady()Z
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

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
    .line 1260
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    .line 1261
    return-void
.end method

.method public onPauseClicked()V
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->pause()V

    .line 1268
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 1256
    return-void
.end method

.method public onResumeClicked()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resume()V

    .line 1275
    :cond_0
    return-void
.end method

.method public onShowLanguageSelectorDialog()V
    .locals 4

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    .line 1300
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Displaying language dialog, language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->display(Lcom/netflix/mediaclient/media/Language;)V

    .line 1303
    :cond_0
    return-void
.end method

.method public onSkipBackClicked()V
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->skipBackThirtySeconds()V

    .line 1281
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    .line 1283
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 1222
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$902(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)Z

    .line 1224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->startTrackingTouchTime:J

    .line 1225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    .line 1226
    return-void
.end method

.method public onStopClicked()V
    .locals 2

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->stop(Z)V

    .line 1290
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1230
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

    .line 1231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$902(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)Z

    .line 1237
    if-eqz p2, :cond_1

    .line 1238
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->startTrackingTouchTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1239
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    .line 1240
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1241
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

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    .line 1244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2400(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;J)V

    .line 1251
    :goto_0
    return-void

    .line 1247
    :cond_1
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "Seeking..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 1249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/MdxUtils;->setProgressByBif(Landroid/widget/SeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->seek(I)V

    goto :goto_0
.end method
