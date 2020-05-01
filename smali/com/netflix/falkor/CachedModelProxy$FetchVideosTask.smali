.class Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;
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
.field private final fetchByLomoType:Z

.field private final fromVideo:I

.field private final includeKubrick:Z

.field private final lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toVideo:I

.field private final useCacheOnly:Z


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1419
    const/4 v0, 0x0

    invoke-direct {p0, p1, p8, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1420
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 1421
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->fromVideo:I

    .line 1422
    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->toVideo:I

    .line 1423
    iput-boolean p5, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->useCacheOnly:Z

    .line 1424
    iput-boolean p6, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->includeKubrick:Z

    .line 1425
    iput-boolean p7, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->fetchByLomoType:Z

    .line 1426
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

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1435
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1436
    iget-boolean v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->fetchByLomoType:Z

    if-eqz v1, :cond_1

    .line 1437
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to fetch videos for lomo by type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$1500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;

    move-result-object v1

    .line 1441
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1442
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1444
    const-string/jumbo v1, "CachedModelProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " lomo id as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "flatGenre"

    .line 1450
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->fromVideo:I

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->toVideo:I

    invoke-static {v0, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v2, v6

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->includeKubrick:Z

    if-eqz v0, :cond_3

    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v4

    const-string/jumbo v1, "kubrick"

    aput-object v1, v0, v5

    const-string/jumbo v1, "rating"

    aput-object v1, v0, v6

    .line 1451
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v7

    .line 1450
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    return-void

    .line 1449
    :cond_2
    const-string/jumbo v1, "lists"

    goto :goto_0

    .line 1451
    :cond_3
    const-string/jumbo v0, "summary"

    goto :goto_1
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1463
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1457
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1458
    return-void
.end method

.method protected shouldCollapseMissingPql()Z
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 1467
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchVideosTask;->useCacheOnly:Z

    return v0
.end method
