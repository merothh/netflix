.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;
.super Ljava/lang/Object;
.source "BillboardView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackError(II)V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 2

    .prologue
    .line 773
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Video completed (or failed) - hiding TextureView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$300(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    .line 777
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 0

    .prologue
    .line 769
    return-void
.end method

.method public onPlaybackSuccessfullyCompleted()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method
