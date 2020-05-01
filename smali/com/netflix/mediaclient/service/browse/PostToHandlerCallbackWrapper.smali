.class public Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;
.super Ljava/lang/Object;
.source "PostToHandlerCallbackWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    .line 43
    iput-object p2, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    return-object v0
.end method


# virtual methods
.method public onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 7
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

    .prologue
    .line 275
    iget-object v6, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$22;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
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

    .prologue
    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$36;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$36;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
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

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$5;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$35;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$35;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;ZLcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
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

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$4;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
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

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$6;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$15;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
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

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$8;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
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

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$23;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method

.method public onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$2;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
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

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$24;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method public onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$16;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$34;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$34;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$14;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$1;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method public onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$10;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
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

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$3;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$12;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$33;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
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

    .prologue
    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$37;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$37;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    return-void
.end method

.method public onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$20;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
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

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$21;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method public onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$32;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;ZLcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method

.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$31;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$31;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method public onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$26;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$26;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

.method public onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$27;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$27;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$13;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;ILcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$29;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method public onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$17;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
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

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$9;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
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

    .prologue
    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$19;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$18;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$30;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$28;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$28;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$25;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$11;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
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

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper$7;-><init>(Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
