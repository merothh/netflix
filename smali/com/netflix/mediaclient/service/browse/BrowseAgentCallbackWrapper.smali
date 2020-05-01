.class public Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;
.super Ljava/lang/Object;
.source "BrowseAgentCallbackWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimingBrowseAgentCallback"


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

.field private final start:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->start:J

    return-void
.end method

.method private handleResultTiming(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->start:J

    sub-long/2addr v0, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TimingBrowseAgentCallback"

    const-string/jumbo v3, "%s took %d ms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 2
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

    const-string/jumbo v0, "onActorDetailsAndRelatedFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    return-void
.end method

.method public onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onAdvisoriesFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onBBVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onBrowsePlaySessionEnd"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onCWVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onDiscoveryVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onDiscoveryVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onDiscoveryVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onEpisodeDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onEpisodesFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onGenreListsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onGenreLoLoMoPrefetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onGenresFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onInteractiveMomentsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onIrisNotificationsMarkedAsRead"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onKidsCharacterDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onLoLoMoPrefetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onLoLoMoSummaryFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onLoMosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onMovieDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onIrisNotificationsListFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onOfflineGeoPlayabilityReceived"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onPersonDetailFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onPersonRelatedFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onPostPlayVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onPostPlayVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onQueueAdd"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onQueueRemove"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onScenePositionFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onSearchResultsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onSeasonDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onSeasonsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onShowDetailsAndSeasonsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onShowDetailsFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onSimilarVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onVideoHide"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onVideoRatingSet"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "onVideoSummaryFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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

    const-string/jumbo v0, "onVideosFetched"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->handleResultTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallbackWrapper;->wrapStatus(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
