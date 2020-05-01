.class final Lo/uO$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private final c:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private d:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field public final e:Lcom/google/android/exoplayer2/source/MediaSource;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p2, p0, Lo/uO$StateListAnimator;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 507
    iput-object p3, p0, Lo/uO$StateListAnimator;->c:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 508
    iput-object p1, p0, Lo/uO$StateListAnimator;->e:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 519
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lo/uO$StateListAnimator;->e:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 512
    iget-object v0, p0, Lo/uO$StateListAnimator;->e:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lo/uO$StateListAnimator;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lo/uO$StateListAnimator;->c:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 513
    iget-object v0, p0, Lo/uO$StateListAnimator;->a:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lo/uO$StateListAnimator;->f:J

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 591
    iget-object p1, p0, Lo/uO$StateListAnimator;->a:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public continueLoading(J)Z
    .locals 1

    .line 581
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 556
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(J)J
    .locals 1

    .line 586
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 566
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 576
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 544
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    .line 535
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lo/uO$StateListAnimator;->e:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    :goto_0
    return-void
.end method

.method public synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 495
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lo/uO$StateListAnimator;->b(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 596
    iget-object p1, p0, Lo/uO$StateListAnimator;->a:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 526
    iput-object p1, p0, Lo/uO$StateListAnimator;->a:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 527
    iput-wide p2, p0, Lo/uO$StateListAnimator;->f:J

    .line 528
    iget-object p1, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 529
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 561
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public seekToUs(J)J
    .locals 1

    .line 571
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 7

    .line 550
    iget-object v0, p0, Lo/uO$StateListAnimator;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method
