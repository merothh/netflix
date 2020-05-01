.class Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
.source "ViewDetailsActionHandler.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 14

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handleViewDetailsAction starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->getVideoInfo()Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handleViewDetailsAction fails, no video info found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->handleWithDelay()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handleViewDetailsAction ends, handling with delay."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTrackId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->getActionToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NflxHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Action: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", actionToken: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v7, v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NflxHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Showing details for episode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getShowId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showEpisodeDetails(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Showing details for: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", type: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v9, ""

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":mov"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v8, v2

    move-object v11, v4

    move-object v12, v5

    invoke-static/range {v6 .. v13}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected handleEpisodeFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 8

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v3, ""

    invoke-static {p3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->getActionToken()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ":tinyUrlEp"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

.method protected handleMovieFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 8

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v3, ""

    invoke-static {p3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;->getActionToken()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ":tinyUrlMov"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
