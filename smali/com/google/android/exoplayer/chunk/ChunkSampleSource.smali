.class public Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# instance fields
.field private final bufferSizeContribution:I

.field private final chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

.field private currentLoadStartTimeMs:J

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

.field private downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

.field private downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private downstreamPositionUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

.field private final eventSourceId:I

.field private lastPerformedBufferOperation:J

.field private lastSeekPositionUs:J

.field private final loadControl:Lcom/google/android/exoplayer/LoadControl;

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuity:Z

.field private pendingResetPositionUs:J

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field protected final sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V
    .locals 8

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->bufferSizeContribution:I

    iput-object p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    iput p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I

    iput p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->minLoadableRetryCount:I

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-interface {p2}, Lcom/google/android/exoplayer/LoadControl;->getAllocator()Lcom/google/android/exoplayer/upstream/Allocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    return-object v0
.end method

.method private clearCurrentLoadable()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadableException()V

    return-void
.end method

.method private clearCurrentLoadableException()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    return-void
.end method

.method private discardUpstreamMediaChunks(I)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v2, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyUpstreamDiscarded(JJ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doChunkOperation()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_0
.end method

.method private getNextLoadPositionUs()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartLoading()V
    .locals 11

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v10, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadStartTimeMs:J

    invoke-direct {p0, v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v10

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->init(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v3, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->type:I

    iget v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v10, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v3, v10, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    iget v4, v10, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    iget-object v5, v10, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_1
.end method

.method private notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadCanceled(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyUpstreamDiscarded(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private restartFrom(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    goto :goto_0
.end method

.method private resumeFromBackOff()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    if-ne v2, v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadableException()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method

.method private updateLoadControl()V
    .locals 12

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getNextLoadPositionUs()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v6, :cond_5

    move v7, v0

    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v7, :cond_6

    :cond_0
    move v6, v0

    :goto_1
    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastPerformedBufferOperation:J

    sub-long v0, v8, v0

    const-wide/16 v10, 0x7d0

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    :cond_2
    iput-wide v8, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastPerformedBufferOperation:J

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v1, :cond_7

    move-wide v4, v2

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    move-result v0

    if-eqz v7, :cond_8

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v0, v8, v0

    iget v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->resumeFromBackOff()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v7, v1

    goto :goto_0

    :cond_6
    move v6, v1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getNextLoadPositionUs()J

    move-result-wide v4

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_3
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSource;->continueBuffering(J)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public disable(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->disable(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    :goto_3
    throw v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_3
.end method

.method public enable(IJ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->enable(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->bufferSizeContribution:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    iput-boolean v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getBufferedPositionUs()J
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    :cond_0
    :goto_1
    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_1
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getTrackCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->maybeThrowError()V

    :cond_1
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 14

    const-wide/16 v6, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadStartTimeMs:J

    sub-long v12, v10, v0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v5

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->type:I

    iget v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget v3, v5, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    iget v4, v5, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_0
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionTimestamp:J

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    return-void
.end method

.method protected onSampleRead(Lcom/google/android/exoplayer/chunk/MediaChunk;Lcom/google/android/exoplayer/SampleHolder;)V
    .locals 0

    return-void
.end method

.method public prepare(J)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-ne v0, v5, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->prepare()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getTrackCount()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Loader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    :cond_4
    iput v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    goto :goto_1
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 10

    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v4

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    move-object v5, v0

    :goto_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v6

    if-gt v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    move-object v5, v0

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v0, v5, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, v5, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    iget-wide v8, v5, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-direct {p0, v0, v6, v8, v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    :cond_5
    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    if-nez v3, :cond_6

    iget-boolean v0, v5, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->isMediaFormatFinal:Z

    if-eqz v0, :cond_9

    :cond_6
    invoke-virtual {v5}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/MediaFormat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    invoke-static {v7, v6}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v6, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    const/4 v0, -0x4

    goto :goto_1

    :cond_8
    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamDrmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    :cond_9
    if-nez v3, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_a
    move v0, v4

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p5}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v6, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_d

    :goto_4
    iget v0, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    if-eqz v1, :cond_c

    const/high16 v2, 0x8000000

    :cond_c
    or-int/2addr v0, v2

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    invoke-virtual {p0, v5, p5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->onSampleRead(Lcom/google/android/exoplayer/chunk/MediaChunk;Lcom/google/android/exoplayer/SampleHolder;)V

    const/4 v0, -0x3

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto :goto_4

    :cond_e
    move v0, v4

    goto/16 :goto_1
.end method

.method public readDiscontinuity(I)J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    :goto_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v3

    if-gt v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    :cond_6
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    goto :goto_2
.end method

.method protected final usToMs(J)J
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
