.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer;
.super Ljava/lang/Object;
.source "JPlayer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field static final INIT_AUDIO_ERROR:I = -0x1

.field static final INIT_VIDEO_ERROR:I = -0x2

.field static final MAX_INPUT_SIZE:I = 0x28000

.field static final RUNTIME_ERROR:I = -0x3

.field static final SD_HEIGHT:I = 0x1e0

.field static final SD_WIDTH:I = 0x2d0

.field static final STATE_INIT:I = -0x1

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x1

.field static final STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NF_JPlayer"


# instance fields
.field private mAudioErrStack:Ljava/lang/String;

.field private mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

.field private mEnablePlatformDrs:Z

.field private mFlushed:Z

.field private mInitialAudioInit:Z

.field private mInitialVideoInit:Z

.field private mJPlayerConfig:Lorg/json/JSONObject;

.field private mJplayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

.field mListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;

.field private mNativePlayer:J

.field private volatile mState:I

.field private mSurface1:Landroid/view/Surface;

.field private mSurface2:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSwitchingPending:Z

.field private mVideoConfigureThread:Ljava/lang/Thread;

.field private mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

.field private mVideoPipe1:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

.field private mVideoPipe2:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mEnablePlatformDrs:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mFlushed:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialVideoInit:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialAudioInit:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioErrStack:Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJPlayerConfig:Lorg/json/JSONObject;

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJPlayerConfig:Lorg/json/JSONObject;

    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v2, "audio/mp4a-latm"

    const-string/jumbo v0, "mime"

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "max-input-size"

    const/16 v1, 0x600

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "channel-count"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "sample-rate"

    const v1, 0xbb80

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    const/4 v4, 0x0

    const-string/jumbo v5, "1"

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialAudioInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mSurface1:Landroid/view/Surface;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioErrStack:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mEnablePlatformDrs:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mFlushed:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialVideoInit:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialAudioInit:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioErrStack:Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJPlayerConfig:Lorg/json/JSONObject;

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJPlayerConfig:Lorg/json/JSONObject;

    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v2, "audio/mp4a-latm"

    const-string/jumbo v0, "mime"

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "max-input-size"

    const/16 v1, 0x600

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "channel-count"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "sample-rate"

    const v1, 0xbb80

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$AudioDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    const/4 v4, 0x0

    const-string/jumbo v5, "1"

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/AudioDecoderPipe;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialAudioInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioErrStack:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->nativeGetBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;[BZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->nativeGetBuffer([BZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mSurface1:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJPlayerConfig:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialVideoInit:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialVideoInit:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->nativeNotifyError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mSurface2:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mSurface2:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mEnablePlatformDrs:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->configureVideoPipe()V

    return-void
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mSwitchingPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe1:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe1:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJplayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe2:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    return-object v0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe2:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    return-object v0
.end method

.method private configureVideoPipe()V
    .locals 3

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "start video pipe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->makeSureConfigureThreadStopped()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    const-string/jumbo v2, "configure video pipe"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoConfigureThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoConfigureThread:Ljava/lang/Thread;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoConfigureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private makeSureConfigureThreadStopped()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoConfigureThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoConfigureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoConfigureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoConfigureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "configureVideoPipe is interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native nativeGetBuffer([BZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I
.end method

.method private native nativeGetBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;)I
.end method

.method private native nativeGetPlayer()J
.end method

.method private native nativeNotifyError(ILjava/lang/String;)V
.end method

.method private native nativeReleasePlayer(J)V
.end method

.method private setVideoCsd([BLandroid/media/MediaFormat;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x1

    new-instance v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v3, p1

    iput v3, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    iget v3, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mFlags:I

    if-ne v1, v3, :cond_2

    iget v3, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v0, v1

    :goto_0
    iget v4, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    add-int/lit8 v4, v4, -0x3

    if-ge v0, v4, :cond_0

    aget-byte v4, v3, v0

    if-nez v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v3, v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v3, v4

    if-ne v4, v1, :cond_3

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-static {v3, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$InputBufInfo;->mDataSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string/jumbo v2, "csd-0"

    invoke-virtual {p2, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string/jumbo v2, "NF_JPlayer"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "NF_JPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "csd-0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "csd-1"

    invoke-virtual {p2, v1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string/jumbo v1, "NF_JPlayer"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "NF_JPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csd-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public Flush()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe1:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe1:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe1:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->flush()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->flush()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mFlushed:Z

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "Flush called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe2:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe2:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe2:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->flush()V

    goto :goto_0
.end method

.method public GetPTS()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;->get()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public Pause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->pause()V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "Pause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Play()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mFlushed:Z

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "Play called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mFlushed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->unpause()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->unpause()V

    :cond_1
    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->start()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->pause()V

    :goto_1
    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->configureVideoPipe()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "mAudioPipe is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Start()V
    .locals 2

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "Start called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mInitialAudioInit:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioErrStack:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->nativeNotifyError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->stop()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    iput v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mState:I

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mFlushed:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->makeSureConfigureThreadStopped()V

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "Stop called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getNativePlayer()J
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->nativeGetPlayer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mNativePlayer:J

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mNativePlayer:J

    return-wide v0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mNativePlayer:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->nativeReleasePlayer(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJplayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    return-void
.end method

.method public setEnablePlatformDrs(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mEnablePlatformDrs:Z

    const-string/jumbo v0, "NF_JPlayer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NF_JPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnablePlatformDrs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setJplayerListener(Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJplayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJplayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "setJplayerListener mJplayerListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "setJplayerListener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mJplayerListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;->onSurface2Visibility(Z)V

    goto :goto_0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "setSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mSurface2:Landroid/view/Surface;

    return-void
.end method
