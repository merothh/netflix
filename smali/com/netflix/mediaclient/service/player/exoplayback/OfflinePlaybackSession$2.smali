.class Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;
.super Ljava/lang/Object;
.source "OfflinePlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v0

    .line 521
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 523
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$400(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    move-result-object v4

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->updatePlayTime(I)V

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$302(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;J)J

    .line 527
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$200(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;

    move-result-object v2

    long-to-int v3, v0

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/IPlaybackSession$PlaybackSessionCallback;->handleUpdatePts(I)V

    .line 528
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    long-to-int v3, v0

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$500(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;I)V

    .line 529
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$700(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$600(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPlayProgress(JJ)V

    .line 530
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    const-string/jumbo v2, "OfflinePlayback_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TotalTime: updatePts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mMovieTotal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$400(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getMovieTotalInMs()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$800(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;->notifyPlayProgress(J)V

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$900(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 537
    :cond_2
    return-void
.end method
