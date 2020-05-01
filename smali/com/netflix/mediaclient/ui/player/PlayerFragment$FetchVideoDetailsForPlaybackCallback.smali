.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PlayerFragment.java"


# instance fields
.field private final playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 1

    .prologue
    .line 3810
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 3811
    const-string/jumbo v0, "PlayerFragment"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 3812
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 3813
    return-void
.end method

.method private handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$3500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 3836
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 3830
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3831
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3832
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 3817
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3818
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3819
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 3823
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3824
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;->handleResponse(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 3825
    return-void
.end method
