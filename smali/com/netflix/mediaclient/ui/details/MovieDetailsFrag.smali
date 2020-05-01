.class public Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/DetailsFrag;
.source "MovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/ILayoutManager;
.implements Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/details/DetailsFrag",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;",
        ">;",
        "Lcom/netflix/mediaclient/ui/details/ILayoutManager;",
        "Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;"
    }
.end annotation


# static fields
.field private static final EXTRA_LAYOUT_MANAGER_STATE:Ljava/lang/String; = "layout_manager_state"

.field protected static final EXTRA_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final TAG:Ljava/lang/String; = "MovieDetailsFrag"


# instance fields
.field protected adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field protected isLoading:Z

.field private layoutManagerSavedState:Landroid/os/Parcelable;

.field protected numColumns:I

.field protected parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected requestId:J

.field private rootContainer:Landroid/view/View;

.field protected videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method private addFooter(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->create(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)Lcom/netflix/mediaclient/ui/details/CopyrightView;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setGravityAsCenter()V

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    .line 265
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method

.method private restoreLayoutManagerState()V
    .locals 5

    .prologue
    .line 430
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "can\'t restore layout manager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/DataUtil;->areAnyNull(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    const-string/jumbo v0, "MovieDetailsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restoring layout manager state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    .line 441
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Posting message to reset parallax views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->rootContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    :cond_0
    return-void
.end method

.method private updateDownloadButtonIfExists()V
    .locals 3

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 527
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetails()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    .line 528
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v2

    .line 532
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 534
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 535
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method


# virtual methods
.method protected fetchMovieData()V
    .locals 6

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    :cond_0
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    .line 347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->requestId:J

    .line 348
    const-string/jumbo v1, "MovieDetailsFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching data for movie ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->requestId:J

    invoke-direct {v3, p0, v4, v5}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;J)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->primaryView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 101
    const v0, 0x7f0f01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->rootContainer:Landroid/view/View;

    .line 102
    return-void
.end method

.method protected getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    return-object v0
.end method

.method protected bridge synthetic getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f0300ed

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNumColumns()I
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeStandardNumVideosPerPage(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    goto :goto_0
.end method

.method protected getPrimaryViewId()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x102000a

    return v0
.end method

.method protected getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method protected handlePrefetchDPData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPForSimilars(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V

    .line 427
    return-void
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showRelatedTitle()V

    .line 125
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 96
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->findViews(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNumColumns()I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    .line 133
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->initDetailsViewGroup(Landroid/view/View;)V

    .line 135
    if-eqz p3, :cond_0

    .line 136
    const-string/jumbo v1, "layout_manager_state"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setLayoutManagerSavedState(Landroid/os/Parcelable;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerView()V

    .line 144
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    return-object v0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 310
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->fetchMovieData()V

    .line 311
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onResume()V

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->refreshImagesIfNecessary(Landroid/support/v7/widget/RecyclerView;)V

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyDataSetChanged()V

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->updateDownloadButtonIfExists()V

    .line 325
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v0, "layout_manager_state"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    :cond_0
    return-void
.end method

.method protected reloadData()V
    .locals 0

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->fetchMovieData()V

    .line 338
    return-void
.end method

.method public scrollTop()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->setExitTransition(Landroid/transition/Transition;)V

    .line 157
    const v0, 0x7f0e00fd

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setBackgroundResource(I)V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 171
    :cond_0
    return-void
.end method

.method public setLayoutManagerSavedState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    .line 333
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 194
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Attaching parallax scroll listener to recyclerView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 196
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 195
    invoke-static {v4, v0, v1, v4, v4}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method protected setupRecyclerView()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerViewItemDecoration()V

    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerViewLayoutManager()V

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerViewAdapter()V

    goto :goto_0
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 4

    .prologue
    .line 214
    new-instance v0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    new-instance v3, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 253
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    .line 275
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 278
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 301
    return-void
.end method

.method public setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    .line 464
    if-nez v0, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f0f0147

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 467
    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->buildDownloadButtonTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    goto :goto_0
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 4

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 394
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;

    .line 395
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilarsRequestId()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilarsTrackId()I

    move-result v2

    .line 397
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilarsListPos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;-><init>(Ljava/lang/String;II)V

    .line 399
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setTrackable(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 400
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 404
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->showTutorialForVideoWithScroll(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 407
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->addFooter(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 409
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->restoreLayoutManagerState()V

    .line 411
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 412
    return-void
.end method

.method protected bridge synthetic showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    return-void
.end method

.method protected showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 2

    .prologue
    .line 415
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;)V

    .line 417
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->handlePrefetchDPData(Ljava/util/List;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hideRelatedTitle()V

    goto :goto_0
.end method
