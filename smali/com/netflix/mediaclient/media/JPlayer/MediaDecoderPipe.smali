.class abstract Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
.super Ljava/lang/Object;
.source "MediaDecoderPipe.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final COMMAND_FLUSH:I = 0x3

.field static final COMMAND_NONE:I = 0x0

.field static final COMMAND_PAUSE:I = 0x1

.field static final COMMAND_STOP:I = 0x4

.field static final COMMAND_UNPAUSE:I = 0x2

.field static final STATE_INIT:I = -0x1

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x1

.field static final STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaPipe"

.field private static final mediaThreadPriority:Ljava/lang/String; = "MediaThreadPriority"


# instance fields
.field protected mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

.field private volatile mCommand:I

.field final mCommandDone:Ljava/util/concurrent/locks/Condition;

.field private mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;

.field protected mDecoder:Landroid/media/MediaCodec;

.field private mDecoderCreadted:Z

.field protected mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;

.field mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;

.field private mInputBufferCnt:I

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputBuffersQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAudio:Z

.field private mJPlayerConfig:Lorg/json/JSONObject;

.field final mLock:Ljava/util/concurrent/locks/Lock;

.field private mMainThread:Ljava/lang/Thread;

.field private mOutputBufferCnt:I

.field protected mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

.field protected mOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected mOutputBuffersQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

.field private volatile mRunningMainThread:Z

.field private mSleepMs:I

.field private volatile mState:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommandDone:Ljava/util/concurrent/locks/Condition;

    const/16 v0, 0xa

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mSleepMs:I

    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mJPlayerConfig:Lorg/json/JSONObject;

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$DecoderHeartbeat;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaPipe"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mJPlayerConfig:Lorg/json/JSONObject;

    const-string/jumbo v1, "audio/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mIsAudio:Z

    const-string/jumbo v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "creating ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoderCreadted:Z

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;

    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const-string/jumbo v1, "video/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mIsAudio:Z

    const-string/jumbo v1, "Video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "configuring with input format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p3, p4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBufferCnt:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBufferCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " input buffers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBufferCnt:I

    if-gtz v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBuffersQ:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->configureOutputBuffers()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    iput-boolean v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoderCreadted:Z

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->configureOutputBuffers()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBufferCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mIsAudio:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBuffersQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mSleepMs:I

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBufferCnt:I

    return v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)[Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private configureOutputBuffers()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBufferCnt:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBufferCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " output buffers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBufferCnt:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBufferCnt:I

    new-array v0, v0, [Landroid/media/MediaCodec$BufferInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "to flush"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "no action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "no action 2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommandDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "flush done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v0, "MediaPipe"

    const-string/jumbo v1, "command is interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    return-object v0
.end method

.method protected getThreadPriority(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mJPlayerConfig:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mJPlayerConfig:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/16 v2, -0x13

    if-lt v0, v2, :cond_0

    const/16 v2, 0x13

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ThreadPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaPipe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to extract JPlayerThreadPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isDecoderCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoderCreadted:Z

    return v0
.end method

.method protected isJPlayerThreadConfigured()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mJPlayerConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mJPlayerConfig:Lorg/json/JSONObject;

    const-string/jumbo v2, "JPlayerThreadConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JPlayerThreadConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MediaPipe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to extract JPlayerThreadConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPauseded()Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "to pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    if-ne v2, v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "no action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "no action 2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    :goto_1
    const/4 v0, 0x2

    :try_start_0
    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommandDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v0, "MediaPipe"

    const-string/jumbo v1, "command is interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "pause done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method abstract renderOutput(Z)Z
.end method

.method public setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;

    return-void
.end method

.method public setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    iput v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$MainThread;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$1;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mMainThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "released"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "MainThread is interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "get un-documented exception as a result of releas() "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unpause()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "to unpause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    if-eq v2, v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "no action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "no action 2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommand:I

    :goto_1
    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mState:I

    if-eq v2, v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mRunningMainThread:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mCommandDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v0, "MediaPipe"

    const-string/jumbo v1, "command is interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "unpause done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
