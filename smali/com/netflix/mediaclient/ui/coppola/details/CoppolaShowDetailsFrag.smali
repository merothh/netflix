.class public Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;
.source "CoppolaShowDetailsFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoppolaShowDetailsFrag"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-object p1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected animateIn()V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CoppolaShowDetailsFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected getNumColumns()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    return-void
.end method

.method public setCurrentEpisodeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-void
.end method

.method protected setScrollPosition()V
    .locals 0

    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 0

    return-void
.end method

.method protected updateSeasonData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->updateSeasonData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->showViews()V

    return-void
.end method
