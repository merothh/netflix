.class Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;
.super Ljava/lang/Object;
.source "FalkorAccess.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;


# instance fields
.field private final clientId:I

.field private final requestId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    iput p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    return-void
.end method


# virtual methods
.method public onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 6
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onActorDetailsAndRelatedFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onActorDetailsAndRelatedFetched(ILjava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onAdvisoriesFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onAdvisoriesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for oBBVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onBBVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-8604 - No client callback found for onBrowsePlaySessionEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FalkorAccess"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onCWVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onCWVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onDiscoveryVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onDiscoveryVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onEpisodeDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onEpisodeDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onEpisodesFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onEpisodesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onGenreListsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onGenreListsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for client onGenreLoLoMoPrefetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onGenreLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onGenresFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onGenresFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onInteractiveVideoMomentsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onInteractiveMomentsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIrisNotificationsMarkedAsRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onKidsCharacterDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onKidsCharacterDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for client onLoLoMoPrefetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onLoLoMoSummaryFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoLoMoSummaryFetched(ILcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onLoMosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoMosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onMovieDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onMovieDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onIrisNotificationsListFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onIrisNotificationsListFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No client callback found for onOfflineGeoPlayabilityReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FalkorAccess"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onActorDetailsAndRelatedFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPersonDetailFetched(ILcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onPersonRelatedFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPersonRelatedFetched(ILcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onPostPlayImpressionLogged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPostPlayImpressionLogged(IZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onPostPlayVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPostPlayVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onQueueAdd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onQueueAdd(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onQueueRemove"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onQueueRemove(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onScenePositionFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onScenePositionFetched(IILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSearchResultsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSearchResultsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSeasonDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSeasonDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSeasonsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSeasonsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onShowDetailsAndSeasonsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onShowDetailsAndSeasonsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onShowDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onShowDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSimilarVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSimilarVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideoHide"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideoHide(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideoRatingSet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideoRatingSet(ILcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideoSummaryFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideoSummaryFetched(ILcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
