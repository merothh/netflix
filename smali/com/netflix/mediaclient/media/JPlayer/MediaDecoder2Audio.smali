.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;
.source "MediaDecoder2Audio.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final AUDIO_CLOCK_OFFSET_SAMPLES:I = 0x12c0

.field private static final MSG_RENDER_FLUSH:I = 0x2

.field private static final MSG_RENDER_FLUSHED:I = 0x4

.field private static final MSG_RENDER_FRAME:I = 0x1

.field private static final MSG_RENDER_PAUSE:I = 0x3

.field private static final MSG_RENDER_STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaDecoder2Audio"


# instance fields
.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mChannelConfig:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

.field private mSampleCnt:J

.field private mSampleRate:I

.field private mSampleSize:I

.field private nFrameRendered:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 29
    const v0, 0xbb80

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    .line 50
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 52
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 53
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getAudioHeaderPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->renderOneFrame(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createAudioTrack()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->releaseAudioTrack()V

    return-void
.end method

.method private canAssumeRenderingStarted()Z
    .locals 4

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAudioTrack()V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const v2, 0x8000

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_2

    .line 311
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "create audiotrack ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    invoke-static {v0, v1, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    .line 315
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    if-ge v0, v2, :cond_0

    .line 316
    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    .line 319
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 321
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 323
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 328
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 329
    invoke-virtual {v2, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    .line 330
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    .line 344
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    const-string/jumbo v0, "MediaDecoder2Audio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBufferSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    .line 349
    :cond_2
    return-void

    .line 336
    :cond_3
    new-instance v5, Landroid/media/AudioTrack;

    iget v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    iget v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    iget v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method private getAudioHeaderPosition()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c0

    .line 203
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->USE_ANDROID_L_API:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioUseGetTimestampAPI:Z

    if-eqz v0, :cond_2

    .line 204
    :cond_0
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget-wide v2, v0, Landroid/media/AudioTimestamp;->framePosition:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->framePosition:J

    sub-long/2addr v0, v4

    .line 215
    :goto_0
    return-wide v0

    .line 210
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private getAudioPresentationLatencyMs()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 218
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->USE_ANDROID_L_API:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioUseGetTimestampAPI:Z

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 224
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x14

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    .line 229
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private getRenderingTimeGeneric(J)J
    .locals 9

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getAudioHeaderPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 355
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getAudioPresentationLatencyMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 356
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 357
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    const-string/jumbo v4, "MediaDecoder2Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioClock: predicted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms, update to = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms, delta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    .line 359
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", pending in ms = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-wide v2
.end method

.method private getRenderingTimeWithHiddenApi(J)J
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 364
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 365
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    int-to-long v2, v2

    div-long v4, v0, v2

    .line 366
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sub-long v2, v0, v4

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 369
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0x1388

    if-lt v1, v6, :cond_0

    move-wide v0, v2

    .line 383
    :goto_0
    return-wide v0

    .line 372
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    mul-int/lit16 v7, v7, 0x3e8

    iget v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    iget v9, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    mul-int/2addr v8, v9

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v6, v1

    .line 373
    sub-long/2addr v2, v6

    .line 374
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    const-string/jumbo v1, "MediaDecoder2Audio"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "latency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", adjustedlatency = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string/jumbo v0, "MediaDecoder2Audio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioClock: predicted "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " ms, update to = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " ms, delta = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    .line 377
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", pending in ms = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-wide v0, v2

    .line 382
    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 380
    const-string/jumbo v2, "MediaDecoder2Audio"

    const-string/jumbo v3, "can\'t getLatency"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_0
.end method

.method private releaseAudioTrack()V
    .locals 2

    .prologue
    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "AudioTrack.stop() has  IllegalStateException"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private renderOneFrame(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;J)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    .line 234
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_3

    .line 235
    const-wide/16 v0, 0x1388

    cmp-long v0, p4, v0

    if-gez v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 242
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->USE_ANDROID_L_API:Z

    if-eqz v0, :cond_6

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, p3, v1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->shouldUpdate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-string/jumbo v0, "MediaDecoder2Audio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms, total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 267
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getRenderingTimeWithHiddenApi(J)J

    move-result-wide v0

    .line 271
    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->canAssumeRenderingStarted()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 272
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->update(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_2
    :goto_3
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onSampleRendered(ZJJ)V

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 293
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 295
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    :goto_4
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 302
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    const-string/jumbo v0, "MediaDecoder2Audio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReleaseOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms,flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_4
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    .line 307
    return-void

    .line 238
    :cond_5
    const-wide/16 v0, 0x3a98

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto/16 :goto_0

    .line 245
    :cond_6
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 246
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 249
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 254
    :goto_5
    if-eqz v0, :cond_8

    .line 255
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v0, v3, v2}, Landroid/media/AudioTrack;->write([BII)I

    goto/16 :goto_1

    .line 251
    :cond_7
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 252
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p3, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 257
    :cond_8
    iput v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_1

    .line 269
    :cond_9
    :try_start_3
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getRenderingTimeGeneric(J)J

    move-result-wide v0

    goto/16 :goto_2

    .line 274
    :cond_a
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->updateAndPause(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string/jumbo v1, "MediaDecoder2Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update clock has Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 295
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 298
    :catch_1
    move-exception v0

    .line 299
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method


# virtual methods
.method addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    aput-object p2, v0, p1

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createRenderer()V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createAudioTrack()V

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->onPaused()V

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RenderThreadAudeo"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    .line 200
    return-void
.end method

.method flushRenderer()V
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 442
    :cond_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    :try_start_3
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "flushRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method pauseRenderer()V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->onPausing()V

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 414
    :cond_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "pauseRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setAudioDuck(Z)V
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    const/high16 v0, 0x3f800000    # 1.0f

    .line 497
    if-eqz p1, :cond_0

    .line 498
    const v0, 0x3e99999a    # 0.3f

    .line 500
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 501
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 506
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_0
.end method

.method declared-synchronized startRenderer()V
    .locals 2

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    .line 388
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "start audiotrack ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 395
    :try_start_2
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "mAudioTrack already stopped/uninitialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopRenderer()V
    .locals 2

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->releaseAudioTrack()V

    .line 454
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method terminateRenderer()V
    .locals 3

    .prologue
    .line 470
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "terminateRenderer ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;->onStopping()V

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->releaseAudioTrack()V

    .line 484
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v1, "terminateRenderer ... done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    :try_start_3
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "terminateRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method unpauseRenderer()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 428
    :cond_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string/jumbo v0, "MediaDecoder2Audio"

    const-string/jumbo v2, "unpauseRenderer interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
