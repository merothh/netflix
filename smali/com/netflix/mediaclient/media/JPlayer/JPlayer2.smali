.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
.super Ljava/lang/Object;
.source "JPlayer2.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field static final INIT_ERROR:I = -0x1

.field static final STATE_FLUSHED:I = 0x3

.field static final STATE_INIT:I = -0x1

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x1

.field static final STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NF_JPlayer2"


# instance fields
.field private mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

.field private mCrypto:Landroid/media/MediaCrypto;

.field private mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

.field private mDolbyDigitalPlusDecoderPresent:Z

.field private mErrorReported:Z

.field private mMaxVideoRes:Lcom/netflix/mediaclient/media/VideoResolutionRange;

.field private mNativePlayer:J

.field private volatile mState:I

.field private mSurface:Landroid/view/Surface;

.field private mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->isEAC3supported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDolbyDigitalPlusDecoderPresent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mErrorReported:Z

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;-><init>(Landroid/view/Surface;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;[BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->notifyEndOfStream(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isAudioPipeNeedReconfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->reconfigureAudioPipe(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->notifyReady()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mErrorReported:Z

    return v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mErrorReported:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeNotifyError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->updatePosition(ZJ)V

    return-void
.end method

.method private configureAudioPipe()V
    .locals 2

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "configureAudioPipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createAACDecoder()V

    return-void
.end method

.method private configureVideoPipe()V
    .locals 9

    const/4 v4, 0x0

    const/16 v1, 0x780

    const/16 v5, 0x438

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v2, "configureVideoPipe"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->isWidevineDrmAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    :cond_0
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v2, "video/avc"

    const-string/jumbo v0, "mime"

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v6, 0x12

    if-le v0, v6, :cond_4

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mMaxVideoRes:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v6, v0}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->getRequiredMaximumResolution(Lcom/netflix/mediaclient/media/VideoResolutionRange;Z)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_6

    :goto_1
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_1

    move v0, v5

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "NF_JPlayer2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video max resolution is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "NF_JPlayer2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "video real resolution is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v5, "max-width"

    invoke-virtual {v3, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v5, "max-height"

    invoke-virtual {v3, v5, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v5, "width"

    invoke-virtual {v3, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-nez v0, :cond_5

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    invoke-direct {v1, p0, v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "video pipe is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_3
    move v0, v4

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "max-input-size"

    const/high16 v6, 0x100000

    invoke-virtual {v3, v0, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "video pipe is not ready, wait..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method private createAACDecoder()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "createAACDecoder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v1, "audio/mp4a-latm"

    const-string/jumbo v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "max-input-size"

    const/16 v3, 0x600

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "channel-count"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "sample-rate"

    const v3, 0xbb80

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "is-adts"

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    new-instance v3, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    invoke-direct {v3, p0, v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "createAACDecoder done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createDDPlusDecoder()V
    .locals 5

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "createDDPlusDecoder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->getMediaFormatEAC3()Landroid/media/MediaFormat;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    new-instance v2, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    const-string/jumbo v3, "audio/eac3"

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "createDDPlusDecoder done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createDDPlusPassthrough()V
    .locals 2

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "createDDPlusPassthrought"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "createDDPlusPassthrough, not supported"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized getBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeGetBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeGetBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAudioPipeNeedReconfig(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "ec-3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "audio/eac3"

    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getMime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "audio/mp4a-latm"

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getMime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPlocal()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    if-nez v3, :cond_0

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method private isDDPlocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDolbyDigitalPlusDecoderPresent:Z

    return v0
.end method

.method private isDDPpassthrough()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private native nativeGetBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
.end method

.method private native nativeGetBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
.end method

.method private native nativeGetPlayer()J
.end method

.method private native nativeNotifyEndOfStream(Z)V
.end method

.method private native nativeNotifyError(ILjava/lang/String;)V
.end method

.method private native nativeNotifyReady()V
.end method

.method private native nativeReleasePlayer(J)V
.end method

.method private native nativeUpdatePosition(ZJ)V
.end method

.method private declared-synchronized notifyEndOfStream(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeNotifyEndOfStream(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyReady()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeNotifyReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reconfigureAudioPipe(Z)Z
    .locals 2

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "reconfigureAudioPipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPpassthrough()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createDDPlusPassthrough()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPlocal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createDDPlusDecoder()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createAACDecoder()V

    goto :goto_0
.end method

.method private declared-synchronized updatePosition(ZJ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeUpdatePosition(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private videoToBackground()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->pause()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    return-void
.end method

.method private videoToForeground()V
    .locals 4

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "new surface, reconfigure decoder "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->renewMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->configureVideoPipe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->isDecoderCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->onError(ZILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VideoDecoder initialization failed at PAUSED, exiting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    goto :goto_1
.end method


# virtual methods
.method public Flush()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->flush()V

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->isAvcDecoderSupportsAdaptivePlayback()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->videoToBackground()V

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "Video pipe cleared"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "Flush called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Pause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->pause()V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "Pause called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Play()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "can not call Play "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "Play called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    :goto_1
    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->videoToForeground()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->isDecoderCreated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    :goto_3
    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "mAudioPipe is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "VideoDecoder initialization failed, exiting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "mVideoPipe is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->restart()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->restart()V

    :goto_4
    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->videoToForeground()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public Start()V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-ne v0, v3, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->configureAudioPipe()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->configureVideoPipe()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->enableAudioUseGetTimestampAPI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "Start called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->onError(ZILjava/lang/String;)V

    goto :goto_0
.end method

.method public Stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->stop()V

    :cond_1
    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseMediaCrypto()V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "Stop called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getNativePlayer()J
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeGetPlayer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mNativePlayer:J

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mNativePlayer:J

    return-wide v0
.end method

.method public isDDPsupported()Z
    .locals 4

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPpassthrough()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPlocal()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NF_JPlayer2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dd+ support is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mNativePlayer:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeReleasePlayer(J)V

    return-void
.end method

.method public setAudioDuck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    instance-of v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    check-cast v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->setAudioDuck(Z)V

    :cond_0
    return-void
.end method

.method public setMaxVideoHeight(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mMaxVideoRes:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    return-void
.end method

.method public updateSurface(Landroid/view/Surface;)V
    .locals 2

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "updateSurface"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->videoToBackground()V

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "surface becomes null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "updateSurface done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
