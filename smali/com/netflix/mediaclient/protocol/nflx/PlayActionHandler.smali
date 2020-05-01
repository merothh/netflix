.class Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
.source "PlayActionHandler.java"


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
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handlePlayAction starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "targetid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->extractJustUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->getVideoInfo()Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handlePlayAction fails, no video info found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->handleWithDelay()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "handlePlayAction ends, handling with delay."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_6

    const-string/jumbo v2, "NflxHandler"

    const-string/jumbo v3, "handlePlayAction, handling."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTrackId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getEpisodeId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no episode id"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTrackId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t play video of type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto/16 :goto_0
.end method

.method protected handleEpisodeFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Play episode for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

.method protected handleMovieFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling movie from tiny URL. Extracted video id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Video ID not found, return to LOLOMO"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->handleHomeAction()V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method

.method protected handleMovieFromTinyUrl(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

.method protected play(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Starting local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote play required on target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "MDX is null, go local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "MDX exist, check if target is available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setDialUuidAsCurrentTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->handleHomeAction()V

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackForceRemote(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "MDX does not know target dial UUID, go local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Playing video: %s, videoType: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;

    invoke-direct {v1, p0, p4, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v4, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;

    invoke-direct {v1, p0, p4, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v4, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v1

    new-instance v2, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;

    invoke-direct {v2, p0, p4, p3}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v4, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
