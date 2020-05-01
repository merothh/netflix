.class public Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;
.source "ProgressiveBillboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected fetchMoreData(II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "billboard lomo pager - no lomo data to use for fetch request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 29
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "fetching billboard videos for: Title: %s, Type: %s, Total Vids: %d, Id: %s, start: %d, end: %d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 30
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v7

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;

    const-string/jumbo v1, "BaseProgressiveRowAdapter"

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;Ljava/lang/String;II)V

    move-object v1, v7

    move-object v2, v6

    move v3, p1

    move v4, p2

    move v5, v8

    move v6, v8

    move v7, v8

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method public shouldOverlapPages()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
