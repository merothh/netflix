.class public Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;
.super Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;
.source "TurboExtendedDiscoveryFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TurboExtendedDiscoveryFrag"

.field private static final TOTAL_TURBO_ROWS:I = 0x2

.field private static final TURBO_TITLES_PER_PAGE:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method protected findViews(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->findViews(Landroid/view/View;)V

    .line 120
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->updateTitle()V

    .line 121
    return-void
.end method

.method protected setupLayoutManagerAndAdapter()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboItemDecoration;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboItemDecoration;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 115
    return-void
.end method

.method public updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V
    .locals 4

    .prologue
    .line 39
    invoke-super/range {p0 .. p6}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V

    .line 41
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;-><init>(JII)V

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$1;

    const-string/jumbo v3, "TurboExtendedDiscoveryFrag"

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->updateTitle()V

    .line 55
    return-void
.end method
