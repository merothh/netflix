.class public interface abstract Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
.super Ljava/lang/Object;
.source "BrowseAgentCallback.java"


# virtual methods
.method public abstract onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDiscoveryVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/branches/FalkorPerson;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method
