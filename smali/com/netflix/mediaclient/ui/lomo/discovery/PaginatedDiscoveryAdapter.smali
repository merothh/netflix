.class public Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.source "PaginatedDiscoveryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISCOVERY_TOTAL_ITEMS_PER_PAGE:I = 0x1

.field public static final DISCOVERY_VIDEOS_TO_FETCH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PaginatedDiscoveryAdapter"


# instance fields
.field private animator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->animator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;)Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->animator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    return-object v0
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v0, 0x7f0a0000

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/Coppola2Utils;->shouldHideContinueWatchingLink(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v0, v0

    const v2, 0x7f0a005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0166

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const v3, 0x7f0a0122

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    const-string/jumbo v1, "PaginatedDiscoveryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Computed view height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const-class v2, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    if-nez v2, :cond_2

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;-><init>(Landroid/content/Context;)V

    move-object v13, v2

    :goto_0
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    const-string/jumbo v2, "SPY-8068 - PaginatedDiscoveryAdapter - data is not ready to render the page"

    const-string/jumbo v3, "PaginatedDiscoveryAdapter"

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :goto_1
    return-object v13

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;

    new-instance v14, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-direct {v14, p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;

    invoke-interface {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot1CollectionId()J

    move-result-wide v4

    invoke-interface {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot1Title()Ljava/lang/String;

    move-result-object v6

    mul-int/lit8 v8, p4, 0x2

    invoke-interface {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot1TrackId()I

    move-result v9

    move-object v3, p0

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;II)V

    new-instance v4, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;

    invoke-interface {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot2CollectionId()J

    move-result-wide v6

    invoke-interface {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot2Title()Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v3, p4, 0x2

    add-int/lit8 v10, v3, 0x1

    invoke-interface {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;->getPivot2TrackId()I

    move-result v11

    move-object v5, p0

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v11}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;II)V

    move-object v5, v13

    move-object v6, v12

    move/from16 v7, p4

    move-object v8, v14

    move-object v9, v2

    move-object v10, v4

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryPage;->updatePage(Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    goto :goto_1

    :cond_2
    move-object v13, v2

    goto :goto_0
.end method

.method public restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->animator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected updateAnimatorData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->animator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->updateData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->animator:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->restorePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PaginatedDiscoveryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PaginatedDiscoveryAdapter received non-supported dialog type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; ignoring..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
