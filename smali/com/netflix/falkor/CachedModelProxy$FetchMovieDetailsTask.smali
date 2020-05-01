.class Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;
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
.field private final movieId:Ljava/lang/String;

.field private final scene:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 1968
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1969
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->movieId:Ljava/lang/String;

    .line 1970
    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->scene:Ljava/lang/String;

    .line 1971
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 3
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
    .line 1975
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->movieId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->latchToPendingRequestsIfExists(Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->movieId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/falkor/CachedModelProxy;->access$1900(Ljava/util/List;Ljava/util/List;)V

    .line 1977
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->scene:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->movieId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->scene:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$2100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    :cond_0
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1998
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1999
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "movies"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->movieId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1800(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    .line 1986
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1987
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-7519: FetchMovieDetailsTask got weird movie id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1988
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 1989
    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1994
    :goto_1
    return-void

    .line 1987
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1992
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$FetchMovieDetailsTask;->isAllDataLocalToCache()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1
.end method
