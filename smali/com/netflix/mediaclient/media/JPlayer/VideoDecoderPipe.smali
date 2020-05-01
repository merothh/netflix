.class public Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
.source "VideoDecoderPipe.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEFAULT_LOOPING_TIME:I = 0x1e

.field private static final FAST_LOOPING_TIME:I = 0xa

.field private static final MAX_LOOPING_TIME:I = 0x32

.field private static final MSG_RENDER_FRAME:I = 0x1

.field private static final RENDER_SKIP:I = 0x1e

.field private static final RENDER_WHIGH:I = 0x14

.field private static final SCHEDULE_OFFSET:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaPipeVideo"

.field private static final renderThreadPriority:Ljava/lang/String; = "RenderThreadPriority"


# instance fields
.field private volatile mDecoderStopped:Z

.field private mFirstFrameRendered:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;

.field private mLastFrameRendered:Z

.field private mPaused:Z

.field private mRendererStarted:Z

.field private mTag:Ljava/lang/String;

.field private nFrameRendered:J

.field private nFrameSkipped:J

.field private previousPts:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameRendered:J

    .line 35
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameSkipped:J

    .line 36
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mRendererStarted:Z

    .line 37
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mLastFrameRendered:Z

    .line 38
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mFirstFrameRendered:Z

    .line 39
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mPaused:Z

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->previousPts:J

    .line 43
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mDecoderStopped:Z

    .line 263
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;-><init>(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$RenderHeartbeat;

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->makeHandler()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaPipeVideo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mTag:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->previousPts:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->previousPts:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mLastFrameRendered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mLastFrameRendered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mFirstFrameRendered:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mFirstFrameRendered:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameRendered:J

    return-wide p1
.end method

.method static synthetic access$508(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J
    .locals 4

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameRendered:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameSkipped:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->nFrameSkipped:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mDecoderStopped:Z

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private makeHandler()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->isJPlayerThreadConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RenderThread"

    const-string/jumbo v2, "RenderThreadPriority"

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->getThreadPriority(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread priority updated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "RenderThreadPriority"

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->getThreadPriority(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandler:Landroid/os/Handler;

    .line 213
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandlerThread:Landroid/os/HandlerThread;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic flush()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->flush()V

    return-void
.end method

.method public bridge synthetic getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDecoderCreated()Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isDecoderCreated()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPauseded()Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isPauseded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStopped()Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isStopped()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mPaused:Z

    .line 251
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->pause()V

    .line 252
    return-void
.end method

.method renderOutput(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 221
    if-nez p1, :cond_2

    .line 222
    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mDecoderStopped:Z

    .line 223
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 241
    :cond_1
    :goto_0
    return v0

    .line 232
    :cond_2
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mDecoderStopped:Z

    .line 233
    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mLastFrameRendered:Z

    if-nez v2, :cond_1

    .line 236
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mRendererStarted:Z

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "start rendering"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mRendererStarted:Z

    :cond_3
    move v0, v1

    .line 241
    goto :goto_0
.end method

.method public bridge synthetic setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;)V

    return-void
.end method

.method public bridge synthetic setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->stop()V

    return-void
.end method

.method public unpause()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;->mPaused:Z

    .line 261
    invoke-super {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->unpause()V

    .line 262
    return-void
.end method
