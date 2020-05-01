.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;
.source "MediaDecoder2Video.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEFAULT_LOOPING_TIME:I = 0x1e

.field private static final FAST_LOOPING_TIME:I = 0xa

.field private static final MAX_AHEAD_TIMED_RELEASE_MS:J = 0x1f4L

.field private static final MAX_LOOPING_TIME:I = 0x32

.field private static final MSG_RENDER_FLUSH:I = 0x2

.field private static final MSG_RENDER_FRAME:I = 0x1

.field private static final RENDER_SKIP:I = 0x1e

.field private static final RENDER_WHIGH:I = 0x14

.field private static final SCHEDULE_OFFSET:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaDecoder2Video"


# instance fields
.field private volatile mDecoderStopped:Z

.field private mFirstFrameRendered:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;

.field private mLastFrameRendered:Z

.field private mPaused:Z

.field private mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

.field private mRendererStarted:Z

.field private nFrameRendered:J

.field private nFrameSkipped:J

.field private previousPts:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 22
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    .line 23
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    .line 24
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    .line 25
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    .line 26
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mFirstFrameRendered:Z

    .line 27
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->previousPts:J

    .line 31
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoderStopped:Z

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    .line 288
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->tryToReleaseBuffers()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mFirstFrameRendered:Z

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mFirstFrameRendered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->previousPts:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->previousPts:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    return-wide p1
.end method

.method static synthetic access$508(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J
    .locals 4

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;J)J
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoderStopped:Z

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    return-object v0
.end method

.method private removeFrameFromQ(I)V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 310
    monitor-exit v1

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tryToReleaseBuffers()V
    .locals 12

    .prologue
    .line 314
    .line 316
    :goto_0
    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v6

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aget-object v1, v1, v0

    .line 324
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v2, :cond_3

    .line 325
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 326
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v4

    .line 327
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    :cond_0
    monitor-exit v6

    .line 370
    :goto_1
    return-void

    .line 321
    :cond_1
    monitor-exit v6

    goto :goto_1

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 333
    :cond_2
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 334
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 335
    sub-long/2addr v2, v8

    .line 336
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 337
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gez v1, :cond_4

    .line 340
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    :goto_2
    :try_start_3
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    .line 346
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    .line 347
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->removeFrameFromQ(I)V

    .line 368
    :cond_3
    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    const-string/jumbo v1, "MediaDecoder2Video"

    const-string/jumbo v2, "get exception as skip frame with releaseOutputBuffer()"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    goto :goto_2

    .line 348
    :cond_4
    const-wide/16 v10, 0x1f4

    cmp-long v1, v8, v10

    if-lez v1, :cond_6

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    sub-long v2, v8, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 353
    :cond_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 356
    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long/2addr v2, v8

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 361
    :goto_4
    :try_start_5
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    .line 362
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->removeFrameFromQ(I)V

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onSampleRendered(ZJJ)V

    goto :goto_3

    .line 357
    :catch_1
    move-exception v1

    .line 358
    const-string/jumbo v1, "MediaDecoder2Video"

    const-string/jumbo v2, "get exception as a result of timed releaseOutputBuffer()"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aput-object p2, v0, p1

    .line 376
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->USE_ANDROID_L_API:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$RenderHeartbeat;->ShowHearbeat()V

    .line 380
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->tryToReleaseBuffers()V

    .line 382
    :cond_0
    return-void

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method createRenderer()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RenderThreadVideo"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    .line 231
    return-void
.end method

.method flushRenderer()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 271
    :cond_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string/jumbo v0, "MediaDecoder2Video"

    const-string/jumbo v2, "flushRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method pauseRenderer()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 250
    return-void
.end method

.method startRenderer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoderStopped:Z

    .line 236
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, "MediaDecoder2Video"

    const-string/jumbo v1, "start rendering"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    .line 243
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mFirstFrameRendered:Z

    goto :goto_0
.end method

.method stopRenderer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 274
    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoderStopped:Z

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 281
    :cond_1
    return-void
.end method

.method terminateRenderer()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method unpauseRenderer()V
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->USE_ANDROID_L_API:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    :cond_0
    return-void
.end method
