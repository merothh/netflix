.class Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;
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
.field private final currentEpisodeId:Ljava/lang/String;

.field private final includeKubrick:Z

.field private final includeSeasonEpisodes:Z

.field private final includeSeasons:Z

.field private seasonsPql:Lcom/netflix/falkor/PQL;

.field private final showId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 2078
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2079
    const/4 v0, 0x0

    invoke-direct {p0, p1, p7, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2080
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->showId:Ljava/lang/String;

    .line 2081
    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->currentEpisodeId:Ljava/lang/String;

    .line 2082
    iput-boolean p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeSeasons:Z

    .line 2083
    iput-boolean p5, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeKubrick:Z

    .line 2084
    iput-boolean p6, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeSeasonEpisodes:Z

    .line 2085
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
    .line 2089
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->showId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->latchToPendingRequestsIfExists(Ljava/lang/String;)V

    .line 2090
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->showId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2091
    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->currentEpisodeId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeSeasons:Z

    iget-boolean v4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeKubrick:Z

    iget-boolean v5, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeSeasonEpisodes:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->access$2000(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V

    .line 2092
    invoke-static {v1}, Lcom/netflix/falkor/CachedModelProxy;->access$2400(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->seasonsPql:Lcom/netflix/falkor/PQL;

    .line 2093
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2109
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeSeasons:Z

    if-eqz v0, :cond_0

    .line 2110
    invoke-interface {p1, v1, v1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2115
    :goto_0
    return-void

    .line 2113
    :cond_0
    invoke-interface {p1, v1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 5

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "shows"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->showId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->access$1800(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 2098
    iget-boolean v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->includeSeasons:Z

    if-eqz v1, :cond_0

    .line 2099
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->seasonsPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    .line 2100
    new-instance v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->isAllDataLocalToCache()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2105
    :goto_0
    return-void

    .line 2103
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$FetchShowDetailsTask;->isAllDataLocalToCache()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
