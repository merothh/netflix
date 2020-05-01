.class public Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;
.super Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;
.source "CWExtendedDiscoveryFrag.java"


# static fields
.field private static final CW_COLLECTION_ID:I = -0x1

.field private static final CW_VIDEOS_PER_PAGE:I = 0x9

.field private static final NUM_DISCOVERY_ROWS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CWExtendedDiscoveryFrag"


# instance fields
.field private collectionData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->collectionData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->collectionData:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method protected findViews(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->findViews(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->titleView:Landroid/widget/TextView;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected setupLayoutManagerAndAdapter()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CollectionAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CollectionAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$DiscoveryItemDecoration;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$DiscoveryItemDecoration;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V
    .locals 4

    invoke-super/range {p0 .. p6}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;-><init>(JII)V

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;

    const-string/jumbo v3, "CWExtendedDiscoveryFrag"

    invoke-direct {v2, p0, v3, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    return-void
.end method

.method public updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V
    .locals 7

    const-wide/16 v2, -0x1

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V

    return-void
.end method
