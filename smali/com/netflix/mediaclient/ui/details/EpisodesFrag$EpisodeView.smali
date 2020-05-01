.class public Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;
.super Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;
.source "EpisodesFrag.java"


# instance fields
.field playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 212
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;-><init>(Landroid/content/Context;I)V

    .line 213
    return-void
.end method


# virtual methods
.method protected setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 263
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V

    .line 265
    const v0, 0x7f0f001e

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->setTag(ILjava/lang/Object;)V

    .line 266
    const v0, 0x7f0f001f

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->setTag(ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    return-void
.end method

.method protected updateDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_2

    .line 249
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$100(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 250
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->isFullyDownloadedAndNotWatchable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    goto :goto_0
.end method
