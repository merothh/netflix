.class Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;
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

.field maxItems:I

.field relatedPQL:Lcom/netflix/falkor/PQL;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->maxItems:I

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->actorId:Ljava/lang/String;

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

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "people"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->actorId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "detail"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->detailPQL:Lcom/netflix/falkor/PQL;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "people"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->actorId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "videoListForPerson"

    aput-object v1, v0, v2

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->maxItems:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v4, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v4

    const-string/jumbo v3, "detail"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->relatedPQL:Lcom/netflix/falkor/PQL;

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->relatedPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->detailPQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorPerson;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/netflix/model/branches/FalkorPerson;->videos:Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    iget-object v1, v1, Lcom/netflix/model/branches/FalkorPerson$PersonVideos;->videoIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "shows"

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netflix/falkor/CachedModelProxy;->access$1800(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v2, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchPersonRelated;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "movies"

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1800(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    if-eqz v1, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v3, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected shouldSkipCache()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
