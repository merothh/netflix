.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/EpisodesFrag;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/details/IHandleBackPress;
.implements Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;
.implements Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$MdxMiniPlayerDialog;


# static fields
.field protected static final ANIMATE_IN_DURATION_MS:I = 0x1f4

.field private static final SAVED_STATE_SHOW_RELATED:Ljava/lang/String; = "saved_state_show_related"

.field private static final SYNOPSIS_LINES_LANDSCAPE:I = 0x5

.field private static final SYNOPSIS_LINES_MAX:I = 0xa

.field private static final SYNOPSIS_LINES_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BarkerShowDetailsFrag"


# instance fields
.field protected barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

.field private copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

.field private currentEpisodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private fragBackground:Landroid/view/View;

.field private fromSameActivityType:Z

.field private hasBookmark:Z

.field protected heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

.field private innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

.field private isFromRelated:Z

.field protected parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

.field private relatedTitlesHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;",
            ">;"
        }
    .end annotation
.end field

.field private rootContainer:Landroid/view/View;

.field private seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;

.field protected seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private showRecyclerBackground:Z

.field private showRelated:Z

.field private supressAnimateIn:Z

.field protected viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

.field viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fetchShowDetailsAndSeasons()V

    return-void
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->isFromRelated:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    return v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$5200(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$5300(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->hasBookmark:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->hasBookmark:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    return-object v0
.end method

.method private addCopyrightAsFooter()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->create(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)Lcom/netflix/mediaclient/ui/details/CopyrightView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setGravityAsCenter()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;-><init>()V

    const/4 v1, 0x1

    const v2, 0x7f0b0089

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method public static create(Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;-><init>()V

    const/4 v1, 0x1

    const v2, 0x7f0b0089

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    const/4 v1, 0x0

    invoke-static {v0, v3, v3, p0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method private invalidateRecyclerView()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setupRecyclerViewLayoutManager()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setupRecyclerViewItemDecoration()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private restorePreviousRelatedTitle()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;->titleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;->seasonSelectIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fetchShowDetailsAndSeasons()V

    return-void
.end method

.method private setSameActivity()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_same_activity_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fromSameActivityType:Z

    :cond_0
    return-void
.end method

.method private setupBackground(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_same_activity_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setupRecyclerShadow()V

    goto :goto_0
.end method

.method private setupRecyclerShadow()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRecyclerBackground:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getRecyclerViewShadowWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method private setupSpinnerScroller()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setOnItemTouchListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private updateTrackId()V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->updateTrackId(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;Ljava/util/Stack;Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEpisodeArguments(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected animateIn()V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fromSameActivityType:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRecyclerBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    const/16 v1, 0x1f4

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlphaWithAnimation(FI)V

    return-void
.end method

.method protected calculateSpinnerLeftPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->calculateSpinnerLeftPosition()I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getSeasonSpinner()Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setupSpinnerScroller()V

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$3;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1
.end method

.method protected findViews(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0f01a9

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->findViews(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getBackgroundResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_1

    const v0, 0x7f0f01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0f01b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    goto :goto_0
.end method

.method protected getBackgroundResource()I
    .locals 1

    const v0, 0x7f0e00e8

    return v0
.end method

.method protected getNumColumns()I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getNumberOfSims()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getlayoutId()I
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0300ed

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030073

    goto :goto_0
.end method

.method public handleBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->restorePreviousRelatedTitle()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->supressAnimateIn:Z

    if-eqz p1, :cond_2

    const-string/jumbo v0, "saved_state_show_related"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState$RestoreInstanceState;->invoke(Landroid/os/Bundle;Ljava/util/Stack;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;->titleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->supressAnimateIn:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setSameActivity()V

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setupBackground(Landroid/view/View;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "saved_state_show_related"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "extra_episode_id"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;-><init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState$SaveInstanceState;->invoke(Landroid/os/Bundle;Ljava/util/Stack;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onStart()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method protected setScrollPosition()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->isFromRelated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->isFromRelated:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/kubrick/details/RelatedTitleState;

    :cond_1
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    goto :goto_0
.end method

.method protected setupDismissClick()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setupRecyclerView()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerView()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->addCopyrightAsFooter()V

    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNumColumns()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNumColumns()I

    move-result v0

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$2;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method protected setupSeasonsSpinnerGroup()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->addSpinnerToDetailsGroup()V

    return-void
.end method

.method public showCurrentSeason()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->invalidateRecyclerView()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1, v3, v2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setSpinnerSelection()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItemContentType(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearData()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->postSetSpinnerSelectionRunnable()V

    goto :goto_0
.end method

.method public showRelatedTitles()V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->invalidateRecyclerView()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1, v3, v2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected showStandardViews()V
    .locals 2

    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "showStandardViews()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->postSetSpinnerSelectionRunnable()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->performClickOnRelatedTitles()V

    :cond_0
    return-void
.end method

.method protected showViews()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "animateIn()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->supressAnimateIn:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fromSameActivityType:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRecyclerBackground:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlpha(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->animateIn()V

    goto :goto_0
.end method

.method protected updateSeasonData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateSeasonData(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentSeasonNumber()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;->updateSeasonData(Ljava/util/List;I)I

    goto :goto_0
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setVideoAndEpisodeIds(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelated:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showCurrentSeason()V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCopyright()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->updateTrackId()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setScrollPosition()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->setupDismissClick()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelatedTitles()V

    goto :goto_1
.end method
