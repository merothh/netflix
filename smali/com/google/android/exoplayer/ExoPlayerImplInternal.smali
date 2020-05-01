.class final Lcom/google/android/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private volatile bufferedPositionUs:J

.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private volatile durationUs:J

.field private elapsedRealtimeUs:J

.field private final enabledRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/TrackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private lastSeekPositionMs:J

.field private final minBufferUs:J

.field private final minRebufferUs:J

.field private final pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private playWhenReady:Z

.field private volatile positionUs:J

.field private rebuffering:Z

.field private released:Z

.field private rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

.field private rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

.field private renderers:[Lcom/google/android/exoplayer/TrackRenderer;

.field private final selectedTrackIndices:[I

.field private final standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

.field private state:I

.field private final trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[III)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    int-to-long v0, p4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minBufferUs:J

    int-to-long v0, p5

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minRebufferUs:J

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    new-instance v0, Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    array-length v0, p3

    new-array v0, v0, [[Lcom/google/android/exoplayer/MediaFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    new-instance v0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;

    const-string/jumbo v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    return-void
.end method

.method private doSomeWork()V
    .locals 15

    const-string/jumbo v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    :goto_0
    const/4 v6, 0x1

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->updatePositionUs()V

    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    move v5, v6

    move-wide v6, v0

    move v1, v14

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/android/exoplayer/TrackRenderer;->doSomeWork(JJ)V

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->maybeThrowError()V

    :cond_0
    if-eqz v4, :cond_4

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    :goto_3
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_5

    :cond_1
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->getBufferedPositionUs()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_6

    const-wide/16 v6, -0x1

    goto :goto_4

    :cond_6
    const-wide/16 v12, -0x3

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-eqz v0, :cond_7

    const-wide/16 v12, -0x2

    cmp-long v0, v8, v12

    if-eqz v0, :cond_7

    cmp-long v0, v10, v8

    if-gez v0, :cond_1

    :cond_7
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    :cond_8
    iput-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    if-eqz v5, :cond_e

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_e

    :cond_9
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    :cond_c
    const/4 v1, 0x7

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    :cond_d
    :goto_6
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    return-void

    :cond_e
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    if-eqz v4, :cond_f

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    :cond_f
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    if-nez v4, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x7

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    goto :goto_6
.end method

.method private enableRenderer(Lcom/google/android/exoplayer/TrackRenderer;IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/google/android/exoplayer/TrackRenderer;->enable(IJZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getMediaClock()Lcom/google/android/exoplayer/MediaClock;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDisabled(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->disable()V

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    if-ne p1, v0, :cond_0

    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    :cond_0
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->stop()V

    :cond_0
    return-void
.end method

.method private incrementalPrepareInternal()V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v5

    if-nez v5, :cond_0

    iget-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer/TrackRenderer;->prepare(J)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->maybeThrowError()V

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x2

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    :goto_1
    return-void

    :cond_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v6, v3, v0

    invoke-virtual {v6}, Lcom/google/android/exoplayer/TrackRenderer;->getTrackCount()I

    move-result v7

    new-array v8, v7, [Lcom/google/android/exoplayer/MediaFormat;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_3

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer/TrackRenderer;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v9

    aput-object v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v8, v3, v0

    if-lez v7, :cond_5

    const-wide/16 v10, -0x1

    cmp-long v3, v4, v10

    if-nez v3, :cond_6

    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    aget v3, v3, v0

    if-ltz v3, :cond_5

    array-length v7, v8

    if-ge v3, v7, :cond_5

    const/4 v7, 0x0

    invoke-direct {p0, v6, v3, v7}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lcom/google/android/exoplayer/TrackRenderer;IZ)V

    if-eqz v2, :cond_8

    invoke-virtual {v6}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    if-eqz v1, :cond_9

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :cond_5
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_7

    const-wide/16 v4, -0x1

    goto :goto_4

    :cond_7
    const-wide/16 v12, -0x2

    cmp-long v3, v10, v12

    if-eqz v3, :cond_4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    if-eqz v2, :cond_d

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    cmp-long v0, v4, v2

    if-gtz v0, :cond_d

    :cond_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    :goto_7
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_d
    if-eqz v1, :cond_e

    const/4 v0, 0x4

    :goto_8
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    goto :goto_7

    :cond_e
    const/4 v0, 0x3

    goto :goto_8
.end method

.method private prepareInternal([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->incrementalPrepareInternal()V

    return-void
.end method

.method private release(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->release()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releaseInternal()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getBufferedPositionUs()J

    move-result-wide v6

    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minRebufferUs:J

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    cmp-long v8, v6, v10

    if-eqz v8, :cond_3

    const-wide/16 v8, -0x3

    cmp-long v8, v6, v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gez v2, :cond_3

    cmp-long v2, v4, v10

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    cmp-long v2, v6, v4

    if-ltz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minBufferUs:J

    goto :goto_1
.end method

.method private resetInternal()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->stop()V

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopAndDisable(Lcom/google/android/exoplayer/TrackRenderer;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->release(Lcom/google/android/exoplayer/TrackRenderer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private scheduleNextOperation(IJJ)V
    .locals 4

    add-long v0, p2, p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(J)V
    .locals 9

    const-wide/16 v6, 0x3e8

    const/4 v0, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    mul-long v2, p1, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->stop()V

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/StandaloneMediaClock;->setPositionUs(J)V

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/TrackRenderer;->seekTo(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method private sendMessageInternal(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    check-cast p2, Landroid/util/Pair;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->updatePositionUs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setRendererSelectedTrackInternal(II)V
    .locals 8

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->selectedTrackIndices:[I

    aput p2, v2, p1

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v4, v2, p1

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->getTrackCount()I

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v5, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    :cond_2
    move v3, v0

    :goto_1
    if-ltz p2, :cond_7

    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->trackFormats:[[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge p2, v2, :cond_7

    move v2, v0

    :goto_2
    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-object v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-interface {v6}, Lcom/google/android/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer/StandaloneMediaClock;->setPositionUs(J)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureDisabled(Lcom/google/android/exoplayer/TrackRenderer;)V

    iget-object v5, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_8

    move v2, v0

    :goto_3
    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    :goto_4
    invoke-direct {p0, v4, p2, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lcom/google/android/exoplayer/TrackRenderer;IZ)V

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->start()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method private setState(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->start()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->start()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopAndDisable(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureDisabled(Lcom/google/android/exoplayer/TrackRenderer;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopInternal()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;->stop()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePositionUs()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/StandaloneMediaClock;->setPositionUs(J)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    goto :goto_0
.end method


# virtual methods
.method public getBufferedPosition()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->lastSeekPositionMs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->prepareInternal([Lcom/google/android/exoplayer/TrackRenderer;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->incrementalPrepareInternal()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->doSomeWork()V

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/Util;->getLong(II)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->seekToInternal(J)V

    move v0, v1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->releaseInternal()V

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->sendMessageInternal(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setRendererSelectedTrackInternal(II)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Internal track renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Internal runtime error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public varargs prepare([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 5

    iput-wide p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->lastSeekPositionMs:J

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->pendingSeekCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Lcom/google/android/exoplayer/util/Util;->getTopInt(J)I

    move-result v2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer/util/Util;->getBottomInt(J)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setRendererSelectedTrack(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
