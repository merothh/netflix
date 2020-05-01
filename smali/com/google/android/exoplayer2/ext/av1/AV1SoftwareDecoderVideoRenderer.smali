.class public Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer$ReinitializationState;
    }
.end annotation


# static fields
.field static final AV1_USE_YUV:Z = true

.field protected static final INITIAL_INPUT_BUFFER_SIZE:I = 0xc0000

.field protected static final NUM_INPUT_BUFFERS:I = 0x8

.field protected static final NUM_OUTPUT_BUFFERS:I = 0x10

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final RENDER_THRESHOLD:I = 0x29

.field static final TAG:Ljava/lang/String; = "AV1SoftwareDecoderVideoRenderer"

.field private static final WINDOW_SIZE:I = 0x10


# instance fields
.field private FRAMEDROP_MEASURE_WINDOW:I

.field private final allowedJoiningTimeMs:J

.field private bitmap:Landroid/graphics/Bitmap;

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private delayedFrameCount:I

.field private drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrameCountInMeasureWindow:I

.field private droppedFrames:I

.field private droppedFramesStats:[I

.field protected final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field protected format:Lcom/google/android/exoplayer2/Format;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private initialPositionUs:J

.field private inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastFrameRenderedTime:J

.field private lastRenderTimeUs:J

.field protected mContext:Landroid/content/Context;

.field private final maxDroppedFramesToNotify:I

.field private newVersion:Z

.field private nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

.field private outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

.field private outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private pendingFormat:Lcom/google/android/exoplayer2/Format;

.field private final playClearSamplesWithoutKeys:Z

.field private renderedFirstFrame:Z

.field private renderedFrameCountInCurrentWindow:I

.field private renderedFrameCountInMeasureWindow:I

.field private rendererStartTime:J

.field private reportedHeight:I

.field private reportedWidth:I

.field private final scaleToFit:Z

.field private surface:Landroid/view/Surface;

.field private totalDelayedFrameCount:I

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZJLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 202
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->newVersion:Z

    const/16 v0, 0x18

    .line 155
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->FRAMEDROP_MEASURE_WINDOW:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 160
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    .line 203
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->scaleToFit:Z

    .line 204
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->allowedJoiningTimeMs:J

    .line 205
    iput p7, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    .line 206
    iput-object p8, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 207
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->playClearSamplesWithoutKeys:Z

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->mContext:Landroid/content/Context;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 209
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 211
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 212
    new-instance p1, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 213
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 214
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 p1, -0x1

    .line 215
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    const/4 p1, 0x0

    .line 216
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJLcom/google/android/exoplayer2/drm/DrmSessionManager;Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZJ",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p5

    .line 177
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;-><init>(Landroid/content/Context;ZJLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    return-void
.end method

.method private clearDroppedFramesData()V
    .locals 4

    const/4 v0, 0x0

    .line 1024
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    .line 1025
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInMeasureWindow:I

    const/4 v1, 0x0

    .line 1026
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1027
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 975
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFirstFrame:Z

    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, -0x1

    .line 994
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedWidth:I

    .line 995
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedHeight:I

    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 19

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    .line 269
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    const-string v12, "AV1SoftwareDecoderVideoRenderer"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-nez v0, :cond_4

    .line 270
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->newVersion:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-eqz v0, :cond_0

    .line 272
    iput-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 273
    iput-object v14, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iput-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iput-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 280
    :goto_0
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-nez v0, :cond_2

    return v13

    .line 283
    :cond_2
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v2, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 284
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget v0, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipped output buffer count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    iget v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v1, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget v1, v1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v1

    iput v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->buffersInCodecCount:I

    .line 290
    :cond_4
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->newVersion:Z

    if-nez v0, :cond_5

    .line 291
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-nez v0, :cond_5

    .line 292
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iput-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 296
    :cond_5
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v15, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_7

    .line 297
    iget v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    if-ne v0, v15, :cond_6

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->releaseDecoder()V

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_1

    .line 302
    :cond_6
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    .line 303
    iput-object v14, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 304
    iput-boolean v7, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputStreamEnded:Z

    :goto_1
    return v13

    .line 309
    :cond_7
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->newVersion:Z

    if-nez v0, :cond_e

    .line 310
    iget v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 312
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    sub-long/2addr v0, v10

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "drainOutput buffer, buffer is late skip buffer"

    .line 313
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    .line 315
    iput-object v14, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    return v7

    :cond_8
    return v13

    .line 320
    :cond_9
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    invoke-virtual {v9, v0, v1, v10, v11}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->logOutputFrame(JJ)V

    .line 322
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-eqz v0, :cond_a

    .line 323
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    goto :goto_2

    :cond_a
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    move-wide v3, v0

    .line 325
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    iget-wide v5, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    move-object/from16 v0, p0

    move-wide/from16 v16, v5

    move-wide/from16 v5, p1

    const/16 v18, 0x1

    move-wide/from16 v7, v16

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->shouldDropOutputBuffer(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Buffer is late, drop output buffer"

    .line 327
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    .line 329
    iput-object v14, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    return v18

    .line 335
    :cond_b
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_c

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getState()I

    move-result v0

    if-ne v0, v15, :cond_d

    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    const-wide/16 v2, 0x7530

    add-long/2addr v2, v10

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    .line 337
    :cond_c
    iget-object v0, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    .line 338
    iput-object v14, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    :cond_d
    return v13

    .line 342
    :cond_e
    invoke-direct/range {p0 .. p4}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->processOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->onProcessedOutputBuffer()V

    .line 345
    iput-object v14, v9, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    :cond_f
    return v0
.end method

.method private feedInputBuffer()Z
    .locals 7

    .line 621
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    if-nez v2, :cond_1

    .line 628
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 634
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->setFlags(I)V

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 637
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    .line 638
    iput v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    return v1

    .line 643
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x4

    goto :goto_0

    .line 647
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    :goto_0
    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    return v1

    :cond_4
    const/4 v3, -0x5

    if-ne v0, v3, :cond_5

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return v4

    .line 657
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 658
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputStreamEnded:Z

    .line 659
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 660
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    return v1

    .line 663
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 664
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->shouldWaitForKeys(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->waitingForKeys:Z

    .line 665
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7

    return v1

    .line 668
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_8

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->timeUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v5, v6, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 670
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    .line 672
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->flip()V

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueInputBuffer, timestamp is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->timeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AV1SoftwareDecoderVideoRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 676
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 678
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    return v4

    :cond_9
    :goto_1
    return v1
.end method

.method private flushDecoder()V
    .locals 3

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->waitingForKeys:Z

    .line 695
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->buffersInCodecCount:I

    .line 696
    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->releaseDecoder()V

    .line 698
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 700
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    .line 701
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-eqz v2, :cond_1

    .line 702
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    .line 703
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 705
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-eqz v2, :cond_2

    .line 706
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    .line 707
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->flush()V

    .line 710
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method private static isBufferLate(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 3

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeInitDecoder()V
    .locals 10

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v0, 0x0

    .line 829
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 830
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 842
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "createVoDecoder"

    .line 843
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->createDecoder(Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    iget v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->setOutputMode(I)V

    .line 846
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 848
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->getName()Ljava/lang/String;

    move-result-object v5

    sub-long v8, v6, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 852
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 0

    return-void
.end method

.method private maybeNotifyLateFrameCount()V
    .locals 4

    .line 1032
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInCurrentWindow:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->delayedFrameCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->sendLateFrameCount(IJ)V

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of frames delayed in current window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->delayedFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AV1SoftwareDecoderVideoRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1035
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->delayedFrameCount:I

    .line 1036
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInCurrentWindow:I

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 2

    .line 979
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFirstFrame:Z

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    .line 982
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_0
    return-void
.end method

.method private maybeNotifyTooManyDroppedFrames()V
    .locals 5

    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/16 v3, 0xf

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    aget v3, v0, v4

    if-gt v3, v2, :cond_0

    const/4 v2, 0x4

    aget v0, v0, v2

    if-lez v0, :cond_1

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedTooManyFrames()V

    .line 1047
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearDroppedFramesData()V

    .line 1049
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInMeasureWindow:I

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->FRAMEDROP_MEASURE_WINDOW:I

    if-le v0, v2, :cond_2

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of dropped frame in current window: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AV1SoftwareDecoderVideoRenderer"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInMeasureWindow:I

    .line 1052
    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    :cond_2
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .locals 3

    .line 999
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedHeight:I

    if-eq v0, p2, :cond_1

    .line 1000
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedWidth:I

    .line 1001
    iput p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedHeight:I

    .line 1002
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 988
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 5

    .line 1007
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->reportedHeight:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 882
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    .line 883
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingFormat:Lcom/google/android/exoplayer2/Format;

    .line 885
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 889
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_2

    .line 890
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_1

    .line 894
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 895
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne p1, v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_1

    .line 891
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getIndex()I

    move-result v0

    .line 891
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 899
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 903
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v1, :cond_5

    .line 904
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz p1, :cond_4

    .line 906
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_2

    .line 909
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->releaseDecoder()V

    .line 910
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeInitDecoder()V

    .line 915
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private onProcessedOutputBuffer()V
    .locals 1

    .line 919
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 362
    iget-wide v3, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->initialPositionUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 363
    iput-wide v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->initialPositionUs:J

    .line 366
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->logOutputFrame(JJ)V

    .line 367
    iget-object v3, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    sub-long/2addr v3, v1

    .line 368
    iget v5, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v6, :cond_2

    .line 370
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->isBufferLate(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    .line 372
    iput-object v7, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    return v9

    :cond_1
    return v8

    .line 378
    :cond_2
    iget-object v5, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputStreamOffsetUs:J

    sub-long v13, v5, v10

    .line 379
    iget-object v5, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v5, v13, v14}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    if-eqz v5, :cond_3

    .line 381
    iput-object v5, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 384
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v10, 0x3e8

    mul-long v5, v5, v10

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    .line 386
    :goto_0
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFirstFrame:Z

    if-eqz v11, :cond_a

    if-eqz v10, :cond_5

    iget-wide v11, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v5, v11

    .line 388
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_9

    .line 397
    iget-wide v5, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->initialPositionUs:J

    cmp-long v10, v1, v5

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    move-wide/from16 v1, p3

    .line 406
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 407
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    .line 408
    iput-object v7, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    return v9

    :cond_7
    const-wide/16 v1, 0x7530

    cmp-long v5, v3, v1

    if-gez v5, :cond_9

    .line 413
    iget-object v12, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v12, :cond_8

    .line 415
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v17, v1

    .line 414
    invoke-interface/range {v12 .. v17}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;)V

    .line 417
    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    return v9

    :cond_9
    :goto_1
    return v8

    .line 389
    :cond_a
    :goto_2
    iget-object v12, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v12, :cond_b

    .line 391
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v17, v1

    .line 390
    invoke-interface/range {v12 .. v17}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;)V

    .line 393
    :cond_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    return v9
.end method

.method private releaseDecoder()V
    .locals 2

    const/4 v0, 0x0

    .line 865
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    .line 866
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 867
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->nextOutputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    const/4 v1, 0x0

    .line 868
    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReinitializationState:I

    .line 869
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 870
    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->buffersInCodecCount:I

    .line 871
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    if-eqz v1, :cond_0

    .line 872
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->release()V

    .line 873
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    .line 874
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 876
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->logOutputFrame(JJ)V

    .line 877
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearDroppedFramesData()V

    return-void
.end method

.method private renderRgbFrame(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Z)V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 607
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    if-eq v0, v1, :cond_1

    .line 608
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 611
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 613
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v2, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 614
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget p1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 613
    invoke-virtual {v0, p2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 616
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->bitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 617
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 5

    .line 970
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 971
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setOutput(Landroid/view/Surface;Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 937
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 938
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->surface:Landroid/view/Surface;

    const/4 v3, -0x1

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;

    if-eq v2, p2, :cond_2

    goto :goto_2

    .line 961
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    if-eq p1, v3, :cond_8

    .line 964
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 965
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    goto :goto_4

    .line 940
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->surface:Landroid/view/Surface;

    .line 941
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    .line 942
    :goto_3
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    .line 944
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    if-eq p1, v3, :cond_7

    .line 945
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    if-eqz p2, :cond_6

    .line 946
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->setOutputMode(I)V

    .line 949
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 951
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 952
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 953
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_4

    .line 958
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 959
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearRenderedFirstFrame()V

    :cond_8
    :goto_4
    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 686
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 688
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return v1
.end method

.method private skipOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V
    .locals 2

    const-string v0, "AV1SoftwareDecoderVideoRenderer"

    const-string v1, "Skipping buffer"

    .line 600
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 602
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    return-void
.end method


# virtual methods
.method protected createDecoder(Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;
    .locals 7

    .line 861
    new-instance v6, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    const/16 v3, 0x10

    const/high16 v4, 0xc0000

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;-><init>(Landroid/content/Context;IIILcom/google/android/exoplayer2/drm/ExoMediaCrypto;)V

    return-object v6
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V
    .locals 5

    const-string v0, "AV1SoftwareDecoderVideoRenderer"

    const-string v1, "Drop current buffer"

    .line 560
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 562
    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    .line 563
    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 564
    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    .line 565
    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 566
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    const/4 v2, 0x4

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    const/4 v4, 0x3

    if-le v1, v2, :cond_1

    .line 568
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    aget v2, v1, v4

    add-int/2addr v2, v3

    aput v2, v1, v4

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_2

    .line 570
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    const/4 v2, 0x2

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_3

    .line 572
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    aget v2, v1, v3

    add-int/2addr v2, v3

    aput v2, v1, v3

    goto :goto_0

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFramesStats:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 576
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyTooManyDroppedFrames()V

    .line 577
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    .line 579
    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-ne v1, v2, :cond_4

    .line 580
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 582
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total dropped frames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    .line 927
    instance-of p1, p2, Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 928
    check-cast p2, Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->setOutput(Landroid/view/Surface;Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;)V

    goto :goto_0

    .line 931
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 716
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 721
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->waitingForKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputMode:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 727
    :cond_2
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    return v2

    .line 729
    :cond_3
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    return v1

    .line 732
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    return v2

    .line 737
    :cond_5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    return v1
.end method

.method protected logOutputFrame(JJ)V
    .locals 0

    return-void
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 2

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 528
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 531
    iget p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->flushDecoder()V

    return v1
.end method

.method public onDisabled()V
    .locals 4

    const/4 v0, 0x0

    .line 790
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 791
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->waitingForKeys:Z

    .line 792
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 793
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 795
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 798
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 803
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 804
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 807
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    .line 807
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 811
    throw v1

    :catchall_1
    move-exception v1

    .line 803
    :try_start_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_2

    .line 804
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 807
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 812
    throw v1

    :catchall_2
    move-exception v1

    .line 807
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 811
    throw v1

    :catchall_3
    move-exception v1

    .line 798
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_3

    .line 799
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 803
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_4

    .line 804
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 807
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 813
    throw v1

    :catchall_4
    move-exception v1

    .line 807
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 811
    throw v1

    :catchall_5
    move-exception v1

    .line 803
    :try_start_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_5

    .line 804
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 807
    :cond_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 812
    throw v1

    :catchall_6
    move-exception v1

    .line 807
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 808
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 811
    throw v1
.end method

.method public onEnabled(Z)V
    .locals 1

    .line 744
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 745
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 750
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputStreamEnded:Z

    .line 751
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputStreamEnded:Z

    .line 752
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 753
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 754
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    if-eqz p1, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->flushDecoder()V

    :cond_0
    if-eqz p3, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 760
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 762
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    return-void
.end method

.method public onStarted()V
    .locals 3

    const/4 v0, 0x0

    .line 767
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    .line 768
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->delayedFrameCount:I

    .line 769
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->totalDelayedFrameCount:I

    .line 770
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInCurrentWindow:I

    .line 771
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInMeasureWindow:I

    .line 772
    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameCountInMeasureWindow:I

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->rendererStartTime:J

    .line 775
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iput v0, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 776
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->rendererStartTime:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->lastFrameRenderedTime:J

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libVoVideoRenderer start time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->rendererStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AV1SoftwareDecoderVideoRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 782
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 783
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyLateFrameCount()V

    .line 785
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->clearDroppedFramesData()V

    return-void
.end method

.method public onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    .line 818
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputStreamOffsetUs:J

    .line 819
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method public render(JJ)V
    .locals 3

    .line 227
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 240
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->inputStreamEnded:Z

    .line 241
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputStreamEnded:Z

    :cond_2
    return-void

    .line 250
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeInitDecoder()V

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "drainAndFeed"

    .line 255
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 256
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 257
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 258
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V
    .locals 10

    const-string v0, "AV1SoftwareDecoderVideoRenderer"

    const-string v1, "render buffer"

    .line 475
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->mode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 477
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 479
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iput-wide v5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->lastRenderTimeUs:J

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 481
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    goto/16 :goto_3

    .line 483
    :cond_2
    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    iget v5, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    invoke-direct {p0, v1, v5}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    if-eqz v4, :cond_3

    .line 485
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->scaleToFit:Z

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderRgbFrame(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Z)V

    .line 486
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    goto :goto_2

    .line 488
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;->setOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    .line 491
    :goto_2
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    if-lez p1, :cond_4

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropped "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frames before render"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v1, v4, v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    .line 495
    :cond_4
    iput v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 496
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 498
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInCurrentWindow:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInCurrentWindow:I

    .line 499
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInMeasureWindow:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->renderedFrameCountInMeasureWindow:I

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 502
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->lastFrameRenderedTime:J

    sub-long v4, v1, v4

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rendered number of frames "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v6, v6, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", average : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->rendererStartTime:J

    sub-long v6, v1, v6

    iget-object v8, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v8, v8, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " current frame render time : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->lastFrameRenderedTime:J

    const-wide/16 v0, 0x29

    cmp-long p1, v4, v0

    if-lez p1, :cond_5

    .line 506
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->delayedFrameCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->delayedFrameCount:I

    .line 507
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->totalDelayedFrameCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->totalDelayedFrameCount:I

    .line 509
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyLateFrameCount()V

    .line 510
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 511
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyTooManyDroppedFrames()V

    :goto_3
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 0

    .line 463
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 450
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldDropOutputBuffer(JJJJ)Z
    .locals 0

    sub-long/2addr p1, p5

    .line 437
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p7, p1

    if-nez p5, :cond_0

    cmp-long p5, p3, p1

    if-eqz p5, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 1

    .line 596
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 221
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "video/av1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected updateDroppedBufferCounters(I)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 544
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    .line 545
    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 546
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    .line 547
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    .line 548
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
