.class Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;
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
.field private final actorId:Ljava/lang/String;

.field detailPQL:Lcom/netflix/falkor/PQL;

.field private final maxItems:I

.field private final maxStills:I

.field performerStillsPQL:Lcom/netflix/falkor/PQL;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->maxItems:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->maxStills:I

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->actorId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->videoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "videos"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->videoId:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "castStills"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    invoke-static {v3, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->performerStillsPQL:Lcom/netflix/falkor/PQL;

    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "people"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->actorId:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "detail"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->detailPQL:Lcom/netflix/falkor/PQL;

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->detailPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->performerStillsPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->detailPQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorPerson;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->performerStillsPQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/branches/FalkorActorStill;

    iget-object v4, v1, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v4, v4, Lcom/netflix/model/branches/FalkorActorStill$Summary;->videoId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->videoId:Ljava/lang/String;

    iget-object v5, v1, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v5, v5, Lcom/netflix/model/branches/FalkorActorStill$Summary;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonDetail;->actorId:Ljava/lang/String;

    iget-object v5, v1, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v5, v5, Lcom/netflix/model/branches/FalkorActorStill$Summary;->personId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method
