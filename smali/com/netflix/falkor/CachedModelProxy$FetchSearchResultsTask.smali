.class Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;
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
.field private final profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

.field private final query:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 2643
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2644
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2645
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->sanitizeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    .line 2647
    invoke-virtual {p1}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 2648
    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    :goto_0
    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    .line 2649
    return-void

    .line 2648
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v0

    goto :goto_0
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
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2653
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "search"

    aput-object v1, v0, v3

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$2700()Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v1, v0, v6

    const/16 v1, 0x13

    .line 2654
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$2800()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2653
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2655
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "search"

    aput-object v1, v0, v3

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->access$2700()Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v1, v0, v6

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2656
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 2697
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 2698
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2699
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2660
    new-instance v1, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v1}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 2662
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "videos"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v3, v2, v8

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v9

    .line 2663
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 2664
    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->setVideoListSummary(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V

    .line 2666
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "people"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v3, v2, v8

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v9

    .line 2667
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 2668
    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->setPeopleListSummary(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V

    .line 2670
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "suggestions"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v3, v2, v8

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v9

    .line 2671
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 2672
    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->setSuggestionsListSummary(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)V

    .line 2674
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "videos"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v3, v2, v8

    const/16 v3, 0x13

    .line 2675
    invoke-static {v3}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "searchTitle"

    aput-object v4, v2, v3

    .line 2674
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 2676
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2677
    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideos(Ljava/util/Collection;)V

    .line 2680
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "people"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v3, v2, v8

    const/16 v3, 0x13

    .line 2681
    invoke-static {v3}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "searchTitle"

    aput-object v4, v2, v3

    .line 2680
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 2682
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2683
    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->addPeople(Ljava/util/Collection;)V

    .line 2686
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "suggestions"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->query:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchSearchResultsTask;->profileType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    aput-object v3, v2, v8

    const/16 v3, 0x13

    .line 2687
    invoke-static {v3}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "searchTitle"

    aput-object v4, v2, v3

    .line 2686
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 2688
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2689
    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->addSuggestions(Ljava/util/Collection;)V

    .line 2692
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2693
    return-void
.end method
