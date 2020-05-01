.class Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "PlayerSuspendNotification.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$000(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$000(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
