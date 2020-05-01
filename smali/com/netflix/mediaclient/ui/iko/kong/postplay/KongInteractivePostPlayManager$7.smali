.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$7;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$7;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackError(II)V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 2

    .prologue
    .line 821
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string/jumbo v0, "KongInteractivePostPlayManager"

    const-string/jumbo v1, "Media player completed (or failed)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public onPlaybackSuccessfullyCompleted()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method
