.class Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;
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
.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toVideo:I

.field private final useCacheOnly:Z


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1477
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1478
    iput p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->toVideo:I

    .line 1479
    iput-boolean p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->useCacheOnly:Z

    .line 1480
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 6
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
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1489
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "nonMemberVideos"

    aput-object v1, v0, v3

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->toVideo:I

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v3

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1504
    if-eqz p1, :cond_0

    .line 1505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1507
    :cond_0
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->useCacheOnly:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1496
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1500
    :goto_0
    return-void

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informNonMemberVideosUpdated(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected shouldUseAuthorization()Z
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNonMemberVideosTask;->useCacheOnly:Z

    return v0
.end method
