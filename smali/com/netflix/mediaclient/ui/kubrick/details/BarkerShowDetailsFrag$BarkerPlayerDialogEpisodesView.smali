.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field protected nowPlaying:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1011
    const v0, 0x7f030072

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V

    .line 1012
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    .line 1015
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V

    .line 1016
    return-void
.end method


# virtual methods
.method protected adjustEpisodeImageHeight()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 1052
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;->findViews()V

    .line 1053
    const v0, 0x7f0f011e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    .line 1054
    return-void
.end method

.method protected setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->isCurrentEpisode:Z

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->disablePlay()V

    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1033
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;->setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 1031
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V
    .locals 2

    .prologue
    .line 1020
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$3100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1021
    invoke-super {p0, p1, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V

    .line 1022
    return-void
.end method

.method protected updateProgressBar()V
    .locals 2

    .prologue
    .line 1037
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateProgressBar()V

    .line 1039
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->isCurrentEpisode:Z

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->progressBarBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    :cond_0
    return-void
.end method
