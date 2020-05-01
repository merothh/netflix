.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;
.super Ljava/lang/Object;
.source "WPCardLayout.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackError(II)V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, p1, p2}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoVideoPlaybackEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V

    .line 611
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "Video completed (or failed) - hiding TextureView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->clearCallbacks()V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->hideVideo()V

    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 601
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 586
    return-void
.end method

.method public onPlaybackSuccessfullyCompleted()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2, v2}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoVideoPlaybackEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V

    .line 606
    return-void
.end method
