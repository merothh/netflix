.class Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "NetflixComWatchHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

.field private final trackId:Ljava/lang/String;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$targetDialUuid:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 127
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->resolveSceneAndPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 131
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 119
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->resolveSceneAndPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 123
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 135
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$targetDialUuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->trackId:Ljava/lang/String;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->resolveSceneAndPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1FetchPlayableCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 139
    return-void
.end method
