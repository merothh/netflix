.class Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;
.super Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.CmpTask;"
    }
.end annotation


# instance fields
.field private final fromVideo:I

.field private final taskMode:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toVideo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/falkor/CachedModelProxy$CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1661
    const/4 v0, 0x0

    invoke-direct {p0, p1, p5, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1662
    iput p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->fromVideo:I

    .line 1663
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->toVideo:I

    .line 1664
    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->taskMode:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    .line 1665
    return-void
.end method

.method private getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1680
    .line 1681
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    .line 1682
    if-eqz v1, :cond_1

    .line 1683
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    .line 1685
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1669
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->fromVideo:I

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->toVideo:I

    invoke-static {p1, v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1100(Ljava/util/List;II)V

    .line 1670
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1691
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 5

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "lolomo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "continueWatching"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->fromVideo:I

    iget v4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->toVideo:I

    invoke-static {v3, v4}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 1675
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1676
    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->onCWVideosFetched(Ljava/util/List;Ljava/lang/String;)V

    .line 1677
    return-void
.end method

.method protected shouldSkipCache()Z
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->taskMode:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    sget-object v1, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchCwVideosTask;->taskMode:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    sget-object v1, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
