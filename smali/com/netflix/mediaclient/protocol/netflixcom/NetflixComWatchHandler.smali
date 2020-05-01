.class public Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;
.super Ljava/lang/Object;
.source "NetflixComWatchHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetflixComWatchHandler"


# instance fields
.field private scene:Ljava/lang/String;

.field private startTimeSeconds:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->startTimeSeconds:I

    .line 38
    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->scene:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->scene:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->startTimeSeconds:I

    return p1
.end method

.method private handle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 7

    .prologue
    .line 78
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;-><init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, p1, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 90
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method


# virtual methods
.method public canHandle(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected play(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "NetflixComWatchHandler"

    const-string/jumbo v1, "Starting local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p2, p4, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->startTimeSeconds:I

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackForceLocal(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    .line 208
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const-string/jumbo v0, "NetflixComWatchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote play required on target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 192
    if-nez v0, :cond_2

    .line 193
    const-string/jumbo v0, "NetflixComWatchHandler"

    const-string/jumbo v1, "MDX is null, go local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_1
    invoke-static {p2, p4, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->startTimeSeconds:I

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackForceLocal(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    goto :goto_0

    .line 196
    :cond_2
    const-string/jumbo v1, "NetflixComWatchHandler"

    const-string/jumbo v2, "MDX exist, check if target is available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setDialUuidAsCurrentTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->startHomeActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 199
    invoke-static {p2, p4, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackForceRemote(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    .line 202
    :cond_3
    const-string/jumbo v0, "NetflixComWatchHandler"

    const-string/jumbo v1, "MDX does not know target dial UUID, go local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 105
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "NetflixComWatchHandler"

    const-string/jumbo v1, "Playing video: %s, videoType: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->scene:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    invoke-interface {v6, p3, v7, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->scene:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    invoke-interface {v6, p3, v7, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 146
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 148
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v8

    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;-><init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    invoke-interface {v6, p3, v7, v8, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected resolveSceneAndPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 10

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->scene:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v7

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->scene:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;-><init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v7, p2, v8, v9, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->play(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method

.method public tryHandle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 57
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    const/4 v1, 0x0

    .line 61
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 62
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    :cond_0
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->handle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 66
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
