.class Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;
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
.field private final maxItemsDetails:I

.field private final maxItemsSwatches:I

.field private mementoSwatchPQL:Lcom/netflix/falkor/PQL;

.field private performerStillsPQL:Lcom/netflix/falkor/PQL;

.field private performersPQL:Lcom/netflix/falkor/PQL;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2121
    const/4 v0, 0x7

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->maxItemsDetails:I

    .line 2122
    const/4 v0, 0x5

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->maxItemsSwatches:I

    .line 2130
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->videoId:Ljava/lang/String;

    .line 2131
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

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2136
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "videos"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->videoId:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "castStills"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    invoke-static {v2, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->performerStillsPQL:Lcom/netflix/falkor/PQL;

    .line 2137
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "videos"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->videoId:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "cast"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    invoke-static {v2, v1}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "detail"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->performersPQL:Lcom/netflix/falkor/PQL;

    .line 2138
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "videos"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->videoId:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "mementoVideoSwatches"

    aput-object v1, v0, v5

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->mementoSwatchPQL:Lcom/netflix/falkor/PQL;

    .line 2140
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->performerStillsPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2141
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->performersPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2142
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->mementoSwatchPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2143
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2159
    invoke-interface {p1, v0, v0, p2, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    .line 2160
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->performerStillsPQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 2149
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->performersPQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    .line 2150
    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchActorDetailsAndRelatedForTitle;->mementoSwatchPQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v2, v3}, Lcom/netflix/falkor/CachedModelProxy;->getMementoAsSwatchAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v2

    .line 2152
    if-eqz p1, :cond_0

    .line 2153
    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    .line 2155
    :cond_0
    return-void
.end method
