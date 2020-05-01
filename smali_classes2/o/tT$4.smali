.class Lo/tT$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/tT;


# direct methods
.method constructor <init>(Lo/tT;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lo/tT$4;->a:Lo/tT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 3

    .line 773
    iget-object v0, p0, Lo/tT$4;->a:Lo/tT;

    invoke-static {v0}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1009

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    .line 790
    iget-object p1, p0, Lo/tT$4;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x100b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 763
    iget-object p1, p0, Lo/tT$4;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x100b

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    .line 768
    iget-object p1, p0, Lo/tT$4;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1008

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
