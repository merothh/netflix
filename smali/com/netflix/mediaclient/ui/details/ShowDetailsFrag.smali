.class public Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/DetailsFrag;
.source "ShowDetailsFrag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/details/DetailsFrag",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_EPISODE_ID:Ljava/lang/String; = "extra_episode_id"

.field private static final EXTRA_VIDEO_ID:Ljava/lang/String; = "extra_video_id"

.field private static final TAG:Ljava/lang/String; = "ShowDetailsFrag"


# instance fields
.field private episodeId:Ljava/lang/String;

.field private isLoading:Z

.field private requestId:J

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->requestId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;)Z
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isLoading:Z

    return p1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo v2, "extra_video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v2, "extra_episode_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method private fetchShowData()V
    .locals 8

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "Manager is null - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isLoading:Z

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->requestId:J

    .line 107
    const-string/jumbo v1, "ShowDetailsFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching data for show ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->episodeId:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v3

    new-instance v4, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->requestId:J

    invoke-direct {v4, p0, v6, v7}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;J)V

    .line 108
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    return-object v0
.end method

.method protected bridge synthetic getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0f0390

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 79
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->episodeId:Ljava/lang/String;

    .line 48
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 62
    const v0, 0x7f0f0394

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 73
    :cond_0
    return-object v3
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 84
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->fetchShowData()V

    .line 85
    return-void
.end method

.method protected reloadData()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->fetchShowData()V

    .line 90
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setCopyright(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 96
    return-void
.end method

.method protected bridge synthetic showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    return-void
.end method
