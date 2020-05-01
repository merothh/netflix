.class public Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;
.source "PreReleaseDetailsFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreReleaseDetailsFrag"


# instance fields
.field private isMovie:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isMovie:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_is_movie"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected fetchMovieData()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isMovie:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->fetchMovieData()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->fetchShowData()V

    goto :goto_0
.end method

.method protected fetchShowData()V
    .locals 8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isLoading:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->requestId:J

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->videoId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->requestId:J

    invoke-direct {v4, p0, v6, v7}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;J)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;-><init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showRelatedTitle()V

    return-void
.end method

.method isSupplementalMessageAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->getVideoDetails()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_is_movie"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isMovie:Z

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hideRelatedTitle()V

    return-void
.end method
