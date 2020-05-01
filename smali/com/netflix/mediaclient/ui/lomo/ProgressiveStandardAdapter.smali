.class public Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;
.source "ProgressiveStandardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<TV;>;",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    return-void
.end method


# virtual methods
.method protected fetchMoreData(II)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "standard lomo pager - no lomo data to use for fetch request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "fetching videos for Lomo: %s, Type: %s, Total Vids: %d, Id: %s, start: %d, end: %d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x1

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

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

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->shouldFetchByLomoType(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Z

    move-result v7

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;

    const-string/jumbo v1, "BaseProgressiveRowAdapter"

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v6

    move-object v2, v8

    move v3, p1

    move v4, p2

    move v5, v9

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
