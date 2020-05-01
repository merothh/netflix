.class Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;
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

.field private final listId:Ljava/lang/String;

.field private pqlDiscovery:Lcom/netflix/falkor/PQL;

.field private pqlVideos:Lcom/netflix/falkor/PQL;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toVideo:I

.field private final useCacheOnly:Z


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p6, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->listId:Ljava/lang/String;

    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->fromVideo:I

    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->toVideo:I

    iput-boolean p5, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->useCacheOnly:Z

    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cwDiscovery"

    aput-object v1, v0, v5

    const-string/jumbo v1, "videoEvidence"

    aput-object v1, v0, v4

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->fromVideo:I

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->toVideo:I

    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v3

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v5

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v4

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v6

    const-string/jumbo v2, "vertStoryArt"

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->pqlVideos:Lcom/netflix/falkor/PQL;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cwDiscovery"

    aput-object v1, v0, v5

    const-string/jumbo v1, "discoveryEvidence"

    aput-object v1, v0, v4

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->fromVideo:I

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->toVideo:I

    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v3, v4}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->pqlDiscovery:Lcom/netflix/falkor/PQL;

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->pqlVideos:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->pqlDiscovery:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$1600()Lcom/netflix/falkor/PQL;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cwDiscovery"

    aput-object v2, v1, v5

    const-string/jumbo v2, "videoEvidence"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->fromVideo:I

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->toVideo:I

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 8

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->pqlVideos:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->pqlDiscovery:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getAllItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    new-instance v7, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/DiscoverySummary;

    invoke-direct {v7, v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/DiscoveryRecord;-><init>(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/model/leafs/DiscoverySummary;Lcom/netflix/model/leafs/DiscoverySummary;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-8068 - FetchDiscoveryVideosTask didn\'t get data for pivot #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " even though we received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got discovery videos size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ; and discovery collections list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-10074 - Coppola2 user cell "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola2ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " received 0 videos inside cwDiscovery row"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v6, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onDiscoveryVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchDiscoveryVideosTask;->useCacheOnly:Z

    return v0
.end method
