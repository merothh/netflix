.class public Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;
.super Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;
.source "CachedModelProxy.java"


# instance fields
.field private final fromVideo:I

.field private final pql:Lcom/netflix/falkor/PQL;

.field private final toVideo:I

.field private final turboCollectionId:J


# direct methods
.method public constructor <init>(JII)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2007
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2008
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->fromVideo:I

    .line 2009
    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->toVideo:I

    .line 2010
    iput-wide p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->turboCollectionId:J

    .line 2011
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "turboCollection"

    aput-object v1, v0, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p3, p4}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

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

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->pql:Lcom/netflix/falkor/PQL;

    .line 2012
    return-void
.end method


# virtual methods
.method public buildPqlList(Ljava/util/List;)V
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

    .line 2016
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->pql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2017
    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$2300()Lcom/netflix/falkor/PQL;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "turboCollection"

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->turboCollectionId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->fromVideo:I

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->toVideo:I

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2018
    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$1600()Lcom/netflix/falkor/PQL;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "turboCollection"

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->turboCollectionId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->fromVideo:I

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->toVideo:I

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    return-void
.end method

.method public callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 2029
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2030
    return-void
.end method

.method public bridge synthetic customHandleResponse(Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 2002
    invoke-super {p0, p1}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->customHandleResponse(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public fetchResultsAndCallbackForSuccess(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;->pql:Lcom/netflix/falkor/PQL;

    invoke-virtual {p1, v0}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 2024
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2025
    return-void
.end method

.method public bridge synthetic getOptionalRequestParams()Ljava/util/List;
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->getOptionalRequestParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shouldCollapseMissingPql()Z
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->shouldCollapseMissingPql()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldCustomHandleResponse()Z
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->shouldCustomHandleResponse()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldSkipCache()Z
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->shouldSkipCache()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldUseAuthorization()Z
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->shouldUseAuthorization()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldUseCacheOnly()Z
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->shouldUseCacheOnly()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/netflix/falkor/CachedModelProxy$BaseCmpTask;->shouldUseCallMethod()Z

    move-result v0

    return v0
.end method
