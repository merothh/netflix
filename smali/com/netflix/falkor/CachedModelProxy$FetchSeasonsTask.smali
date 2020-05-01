.class Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;
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
.field private final fromSeason:I

.field private final showId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toSeason:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 2573
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2574
    const/4 v0, 0x0

    invoke-direct {p0, p1, p5, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2575
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->showId:Ljava/lang/String;

    .line 2576
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->fromSeason:I

    .line 2577
    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->toSeason:I

    .line 2578
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 4
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
    .line 2582
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "shows"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->showId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "seasons"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->fromSeason:I

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->toSeason:I

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "detail"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2583
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 2593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2594
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSeasonsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2588
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2589
    return-void
.end method
