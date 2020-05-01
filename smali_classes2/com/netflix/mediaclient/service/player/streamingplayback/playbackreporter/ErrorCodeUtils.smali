.class public Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;,
        Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;
    }
.end annotation


# static fields
.field private static final e:[Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    .line 47
    new-instance v7, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v2, Ljava/lang/IllegalStateException;

    const-class v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    const-string v4, "queueInputBuffer"

    const-string v5, "5.13.1"

    const-string v6, "DevicePlaybackError.QueueInputBuffer"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v9, Ljava/lang/IllegalStateException;

    const-class v10, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    const-string v11, "processOutputBuffer"

    const-string v12, "5.13.2"

    const-string v13, "DevicePlaybackError.ProcessOutputBuffer"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Ljava/lang/IllegalStateException;

    const-class v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    const-string v6, "releaseCodec"

    const-string v7, "5.13.3"

    const-string v8, "DevicePlaybackError.ReleaseCodec"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Landroid/media/MediaCodec$CodecException;

    const-class v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    const-string v6, "releaseCodec"

    const-string v7, "5.13.4"

    const-string v8, "DevicePlaybackError.ReleaseCodec"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Landroid/media/MediaCodec$CodecException;

    const-class v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    const-string v6, "flushCodec"

    const-string v7, "5.13.5"

    const-string v8, "DevicePlaybackError.FlushCodec"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-class v5, Lcom/google/android/exoplayer2/source/SampleQueue;

    const-string v6, "readData"

    const-string v7, "5.13.6"

    const-string v8, "DevicePlaybackError.SampleQueue"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-class v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    const-string v6, "getInputIndex"

    const-string v7, "5.13.7"

    const-string v8, "DevicePlaybackError.InputIndex"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Ljava/lang/IllegalStateException;

    const-class v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const-string v6, "ensureSpaceForWrite"

    const-string v7, "5.13.8"

    const-string v8, "DevicePlaybackError.DecoderBufferTooSmall"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Ljava/lang/IllegalStateException;

    const-class v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    const-string v6, "getInputIndex"

    const-string v7, "5.13.9"

    const-string v8, "DevicePlaybackError.DequeueInputBuffer"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Ljava/lang/IllegalStateException;

    const-class v5, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    const-string v6, "processOutputBuffer"

    const-string v7, "5.13.10"

    const-string v8, "DevicePlaybackError.ProcessAudioBuffer"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    const-class v4, Landroid/media/MediaCodec$CryptoException;

    const-class v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    const-string v6, "drainOutputBuffer"

    const-string v7, "5.7.0"

    const-string v8, "DevicePlaybackError.Crypto.DrainOutputBuffer"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->e:[Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lorg/chromium/net/NetworkException;)Ljava/lang/String;
    .locals 2

    .line 557
    invoke-virtual {p0}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/net/NetworkException;->getCronetInternalErrorCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 579
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTHER."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/net/NetworkException;->getCronetInternalErrorCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "QUIC_PROTOCOL_FAILED"

    return-object p0

    :pswitch_2
    const-string p0, "ADDRESS_UNREACHABLE"

    return-object p0

    :pswitch_3
    const-string p0, "CONNECTION_RESET"

    return-object p0

    :pswitch_4
    const-string p0, "CONNECTION_REFUSED"

    return-object p0

    :pswitch_5
    const-string p0, "CONNECTION_TIMED_OUT"

    return-object p0

    :pswitch_6
    const-string p0, "CONNECTION_CLOSED"

    return-object p0

    :pswitch_7
    const-string p0, "TIMED_OUT"

    return-object p0

    :pswitch_8
    const-string p0, "NETWORK_CHANGED"

    return-object p0

    :pswitch_9
    const-string p0, "INTERNET_DISCONNECTED"

    return-object p0

    :pswitch_a
    const-string p0, "HOSTNAME_NOT_RESOLVED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;Lo/xD;)Lo/xD;
    .locals 2

    .line 386
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->d:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    if-ne p1, v0, :cond_0

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo/xD;->a:Ljava/lang/String;

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Network"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo/xD;->a:Ljava/lang/String;

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Http"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo/xD;->c:Ljava/lang/String;

    .line 394
    :goto_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object p0

    .line 395
    instance-of p1, p0, Lorg/chromium/net/NetworkException;

    const-string v0, "."

    if-eqz p1, :cond_1

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lorg/chromium/net/NetworkException;

    invoke-virtual {p0}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo/xD;->a:Ljava/lang/String;

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->a(Lorg/chromium/net/NetworkException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lo/xD;->c:Ljava/lang/String;

    goto :goto_1

    .line 398
    :cond_1
    instance-of p1, p0, Lcom/android/volley/ServerError;

    if-eqz p1, :cond_2

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/android/volley/ServerError;

    iget-object v1, p0, Lcom/android/volley/ServerError;->e:Lo/ExitTransitionCoordinator;

    iget v1, v1, Lo/ExitTransitionCoordinator;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo/xD;->a:Ljava/lang/String;

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/volley/ServerError;->e:Lo/ExitTransitionCoordinator;

    iget v0, v0, Lo/ExitTransitionCoordinator;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo/xD;->c:Ljava/lang/String;

    .line 401
    iget-object p0, p0, Lcom/android/volley/ServerError;->e:Lo/ExitTransitionCoordinator;

    iget-object p0, p0, Lo/ExitTransitionCoordinator;->c:[B

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lo/xD;->g:Ljava/lang/String;

    :cond_2
    :goto_1
    return-object p2
.end method

.method private static a(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;
    .locals 2

    .line 409
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$1;->b:[I

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 443
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".119"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.RestoreFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 439
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".118"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.CDMException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 435
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".117"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.CDMNotProvisioned"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 431
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".116"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.CDMLicenseEmpty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 427
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".115"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.CDMResourceBusy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 423
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".114"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.CDMKeySetEmpty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 419
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".113"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.CDMGenericError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    .line 415
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".112"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.GetKeyRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    .line 411
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".111"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmError.ProvideKeyResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    .line 450
    :goto_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, p1, Lo/xD;->g:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "READING_RESPONSE"

    return-object p0

    :pswitch_1
    const-string p0, "WAITING_FOR_RESPONSE"

    return-object p0

    :pswitch_2
    const-string p0, "SENDING_REQUEST"

    return-object p0

    :pswitch_3
    const-string p0, "SSL_HANDSHAKE"

    return-object p0

    :pswitch_4
    const-string p0, "CONNECTING"

    return-object p0

    :pswitch_5
    const-string p0, "RESOLVING_HOST"

    return-object p0

    :pswitch_6
    const-string p0, "ESTABLISHING_PROXY_TUNNEL"

    return-object p0

    :pswitch_7
    const-string p0, "RESOLVING_HOST_IN_PROXY_SCRIPT"

    return-object p0

    :pswitch_8
    const-string p0, "RESOLVING_PROXY_FOR_URL"

    return-object p0

    :pswitch_9
    const-string p0, "DOWNLOADING_PROXY_SCRIPT"

    return-object p0

    :pswitch_a
    const-string p0, "WAITING_FOR_CACHE"

    return-object p0

    :pswitch_b
    const-string p0, "WAITING_FOR_DELEGATE"

    return-object p0

    :pswitch_c
    const-string p0, "WAITING_FOR_AVAILABLE_SOCKET"

    return-object p0

    :pswitch_d
    const-string p0, "WAITING_FOR_STALLED_SOCKET_POOL"

    return-object p0

    :pswitch_e
    const-string p0, "IDLE"

    return-object p0

    :pswitch_f
    const-string p0, "INVALID"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;
    .locals 2

    .line 466
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmException;

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "102"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DrmSessionException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".UnknownError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    .line 473
    :goto_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, p1, Lo/xD;->g:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;Lcom/netflix/mediaclient/android/app/Status;)Lo/xD;
    .locals 3

    .line 519
    new-instance v0, Lo/xD;

    invoke-direct {v0}, Lo/xD;-><init>()V

    .line 520
    iput-object p1, v0, Lo/xD;->j:Lcom/netflix/mediaclient/android/app/Status;

    .line 521
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;Lo/xD;)Lo/xD;

    .line 522
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->g:Ljava/lang/String;

    .line 524
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->i()Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 526
    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$1;->c:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p0, 0x4

    if-eq v1, p0, :cond_1

    const/4 p0, 0x5

    if-eq v1, p0, :cond_0

    .line 545
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->e(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;

    goto :goto_0

    .line 541
    :cond_0
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->c(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;

    goto :goto_0

    .line 533
    :cond_2
    invoke-static {p1, p0, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->a(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;Lo/xD;)Lo/xD;

    goto :goto_0

    .line 528
    :cond_3
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->d(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;

    goto :goto_0

    .line 549
    :cond_4
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->b(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;

    :goto_0
    return-object v0
.end method

.method private static c(Ljava/lang/Exception;)Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;
    .locals 5

    .line 615
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->e:[Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 616
    invoke-static {v3, p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lo/xD;
    .locals 7

    .line 73
    new-instance v0, Lo/xD;

    invoke-direct {v0}, Lo/xD;-><init>()V

    .line 74
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const/4 v3, 0x2

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v1

    .line 260
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lo/xD;->e:Ljava/lang/String;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lo/xD;->g:Ljava/lang/String;

    .line 262
    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->c(Ljava/lang/Exception;)Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;

    move-result-object v1

    .line 267
    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->trackType:I

    if-ne v4, v2, :cond_1

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5.11."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "DevicePlaybackError.AudioState"

    .line 269
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 270
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->trackType:I

    if-ne v2, v3, :cond_2

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5.12."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "DevicePlaybackError.VideoState"

    .line 272
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2
    if-eqz v1, :cond_3

    .line 274
    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;->a(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    .line 275
    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$Activity;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3
    const-string p0, "6.0"

    .line 277
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "Other.UnknownError"

    .line 278
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v1

    .line 78
    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->trackType:I

    const/4 v5, 0x3

    const-string v6, "unknown"

    if-ne v4, v5, :cond_7

    .line 79
    instance-of p0, v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    if-eqz p0, :cond_5

    const-string p0, "7.2"

    .line 80
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "SubtitleFailed.ParsingFailed"

    .line 81
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p0, "7.10"

    .line 83
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "SubtitleFailed.Unknown"

    .line 84
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    :goto_0
    if-nez v1, :cond_6

    goto :goto_1

    .line 86
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, v0, Lo/xD;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 87
    :cond_7
    instance-of v4, v1, Landroid/media/MediaCodec$CryptoException;

    if-eqz v4, :cond_8

    .line 88
    move-object p0, v1

    check-cast p0, Landroid/media/MediaCodec$CryptoException;

    .line 89
    invoke-virtual {p0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p0

    .line 90
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lo/xD;->e:Ljava/lang/String;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xD;->g:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5.7."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xD;->a:Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    const-string p0, "DevicePlaybackError.Crypto.Unknown"

    .line 113
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_0
    const-string p0, "DevicePlaybackError.Crypto.Unsupported"

    .line 110
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_1
    const-string p0, "DevicePlaybackError.Crypto.NotOpened"

    .line 107
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_2
    const-string p0, "DevicePlaybackError.Crypto.InsufficientProtection"

    .line 104
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_3
    const-string p0, "DevicePlaybackError.Crypto.ResourceBusy"

    .line 101
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_4
    const-string p0, "DevicePlaybackError.Crypto.KeyExpired"

    .line 98
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_5
    const-string p0, "DevicePlaybackError.Crypto.NoKey"

    .line 95
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 116
    :cond_8
    instance-of v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v4, :cond_9

    .line 117
    move-object p0, v1

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 118
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xD;->e:Ljava/lang/String;

    .line 119
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    iput-object p0, v0, Lo/xD;->g:Ljava/lang/String;

    const-string p0, "5.8"

    .line 120
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "DevicePlaybackError.DecoderInitError"

    .line 121
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 122
    :cond_9
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_c

    .line 123
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lo/xD;->e:Ljava/lang/String;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xD;->g:Ljava/lang/String;

    .line 128
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->trackType:I

    if-ne v1, v2, :cond_a

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5.9."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "DevicePlaybackError.AudioRender"

    .line 130
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 131
    :cond_a
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->trackType:I

    if-ne v1, v3, :cond_b

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5.10."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "DevicePlaybackError.VideoRender"

    .line 133
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :cond_b
    const-string p0, "5.0.1"

    .line 135
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "DevicePlaybackError.UnknownRender"

    .line 136
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 138
    :cond_c
    instance-of p0, v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;

    if-eqz p0, :cond_d

    .line 139
    sget-object p0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;

    check-cast v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;

    .line 140
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 139
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;Lcom/netflix/mediaclient/android/app/Status;)Lo/xD;

    move-result-object v0

    goto/16 :goto_4

    .line 141
    :cond_d
    instance-of p0, v1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    if-eqz p0, :cond_f

    .line 142
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->e:Ljava/lang/String;

    if-nez v1, :cond_e

    goto :goto_2

    .line 143
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v0, Lo/xD;->g:Ljava/lang/String;

    const-string p0, "2.0"

    .line 144
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "NccpLicenseFailed.UnknownError"

    .line 145
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 147
    :cond_f
    invoke-static {v1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->e:Ljava/lang/String;

    if-nez v1, :cond_10

    goto :goto_3

    .line 148
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    iput-object v6, v0, Lo/xD;->g:Ljava/lang/String;

    const-string p0, "5.0"

    .line 149
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "DevicePlaybackError.UnknownError"

    .line 150
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 154
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xD;->e:Ljava/lang/String;

    .line 156
    instance-of v1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_1a

    .line 157
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 158
    instance-of v3, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource$OpenException;

    xor-int/2addr v2, v3

    .line 159
    instance-of v3, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource$CronetDataSourceException;

    if-eqz v3, :cond_12

    .line 160
    move-object v3, p0

    check-cast v3, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource$CronetDataSourceException;

    iget v3, v3, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/cronetdatasource/CronetDataSource$CronetDataSourceException;->b:I

    .line 161
    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->b(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lo/xD;->e:Ljava/lang/String;

    .line 164
    :cond_12
    instance-of v3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_13

    .line 165
    check-cast p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3.2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xD;->a:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StreamingFailure.Http."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 168
    :cond_13
    instance-of v3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    if-eqz v3, :cond_14

    const-string v1, "3.2.-1"

    .line 169
    iput-object v1, v0, Lo/xD;->a:Ljava/lang/String;

    const-string v1, "StreamingFailure.Http.badcontent"

    .line 170
    iput-object v1, v0, Lo/xD;->c:Ljava/lang/String;

    .line 171
    invoke-static {p0}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->e:Ljava/lang/String;

    goto/16 :goto_4

    .line 172
    :cond_14
    instance-of v3, v1, Ljava/net/UnknownHostException;

    const-string v4, "StreamingFailure.Network.dnsfailure"

    const-string v5, "3.1.-70"

    if-eqz v3, :cond_15

    .line 173
    iput-object v5, v0, Lo/xD;->a:Ljava/lang/String;

    .line 174
    iput-object v4, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 175
    :cond_15
    instance-of v3, v1, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_17

    if-eqz v2, :cond_16

    const-string p0, "3.1.-57"

    .line 177
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.sockettimeout"

    .line 178
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :cond_16
    const-string p0, "3.1.-171"

    .line 180
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.connectiontimeout"

    .line 181
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 183
    :cond_17
    instance-of v3, v1, Lorg/chromium/net/NetworkException;

    if-eqz v3, :cond_19

    .line 184
    check-cast v1, Lorg/chromium/net/NetworkException;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    const-string p0, "3.1.-1"

    .line 235
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.unknown"

    .line 236
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_6
    const-string p0, "3.1.-801"

    .line 231
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.other"

    .line 232
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_7
    const-string p0, "3.1.-800"

    .line 227
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.quic"

    .line 228
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_8
    const-string p0, "3.1.-100"

    .line 223
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.noroutetohost"

    .line 224
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_9
    const-string p0, "3.1.-60"

    .line 219
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.connectionreset"

    .line 220
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_a
    const-string p0, "3.1.-58"

    .line 215
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.connectionrefused"

    .line 216
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_b
    const-string p0, "3.1.-82"

    .line 211
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.httpconnectiontimeout"

    .line 212
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_c
    const-string p0, "3.1.-61"

    .line 207
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.connectionclosed"

    .line 208
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_d
    const-string p0, "3.1.-13"

    .line 203
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.datatimeout"

    .line 204
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto :goto_4

    :pswitch_e
    const-string p0, "3.1.-50"

    .line 199
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.socketerror"

    .line 200
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto :goto_4

    :pswitch_f
    if-eqz v2, :cond_18

    const-string p0, "3.1.-104"

    .line 191
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.networkdownreset"

    .line 192
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto :goto_4

    :cond_18
    const-string p0, "3.1.-101"

    .line 194
    iput-object p0, v0, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "StreamingFailure.Network.networkdown"

    .line 195
    iput-object p0, v0, Lo/xD;->c:Ljava/lang/String;

    goto :goto_4

    .line 186
    :pswitch_10
    iput-object v5, v0, Lo/xD;->a:Ljava/lang/String;

    .line 187
    iput-object v4, v0, Lo/xD;->c:Ljava/lang/String;

    goto :goto_4

    :cond_19
    const-string v1, "3.1"

    .line 240
    iput-object v1, v0, Lo/xD;->a:Ljava/lang/String;

    const-string v1, "StreamingFailure.Network"

    .line 241
    iput-object v1, v0, Lo/xD;->c:Ljava/lang/String;

    .line 242
    invoke-static {p0}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->e:Ljava/lang/String;

    goto :goto_4

    .line 244
    :cond_1a
    instance-of v1, p0, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v1, :cond_1b

    const-string v1, "4.2"

    .line 245
    iput-object v1, v0, Lo/xD;->a:Ljava/lang/String;

    const-string v1, "EncodingError.ParseError"

    .line 246
    iput-object v1, v0, Lo/xD;->c:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xD;->g:Ljava/lang/String;

    .line 248
    invoke-static {p0}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->e:Ljava/lang/String;

    goto :goto_4

    .line 249
    :cond_1b
    instance-of v1, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/mediasource/ManifestLoadException;

    if-eqz v1, :cond_1c

    .line 250
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;

    check-cast p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/mediasource/ManifestLoadException;

    .line 251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/mediasource/ManifestLoadException;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p0

    .line 250
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;Lcom/netflix/mediaclient/android/app/Status;)Lo/xD;

    move-result-object v0

    goto :goto_4

    :cond_1c
    const-string v1, "3.3"

    .line 253
    iput-object v1, v0, Lo/xD;->a:Ljava/lang/String;

    const-string v1, "StreamingFailure.Other"

    .line 254
    iput-object v1, v0, Lo/xD;->c:Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/xD;->e:Ljava/lang/String;

    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private static c(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;
    .locals 2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".MslError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    .line 459
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, p1, Lo/xD;->g:Ljava/lang/String;

    return-object p1
.end method

.method private static c(Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;Lo/xD;)Lo/xD;
    .locals 1

    .line 488
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$1;->e:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils$TransactionType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "2"

    .line 494
    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "NccpLicenseFailed"

    .line 495
    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "1"

    .line 490
    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    const-string p0, "NccpAuthorizationFailed"

    .line 491
    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public static c(Lo/xD;)Z
    .locals 1

    .line 69
    iget-object p0, p0, Lo/xD;->c:Ljava/lang/String;

    const-string v0, "DevicePlaybackError.Crypto.Unsupported"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static d(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;
    .locals 5

    .line 326
    instance-of v0, p0, Lo/qo;

    if-eqz v0, :cond_9

    .line 327
    check-cast p0, Lo/qo;

    .line 328
    invoke-interface {p0}, Lo/qo;->n()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->h:Lorg/json/JSONObject;

    .line 330
    invoke-interface {p0}, Lo/qo;->s()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-interface {p0}, Lo/qo;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-interface {p0}, Lo/qo;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->f:Ljava/lang/String;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".50."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lo/qo;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lo/qo;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lo/qo;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    .line 335
    invoke-interface {p0}, Lo/qo;->p()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 337
    :cond_0
    invoke-interface {p0}, Lo/qo;->t()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    const-string v3, ".RetryExceeded."

    const-string v4, ".9."

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 p0, 0x5

    if-eq v1, p0, :cond_4

    const/16 p0, 0xe

    if-eq v1, p0, :cond_3

    const/16 p0, 0x8

    if-eq v1, p0, :cond_2

    const/16 p0, 0x9

    if-eq v1, p0, :cond_1

    .line 374
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".3."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Nccp."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 366
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".12."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".UnsupportedSoftwareVersion."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 362
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".11."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".InvalidDeviceCredentials."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 370
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".17"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".RegistrationRequired"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 358
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 353
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".10."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ErrorMessage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    .line 355
    invoke-interface {p0}, Lo/qo;->p()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 349
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string p0, "1009"

    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".5."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ProtocolVersionIncorrect."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    goto :goto_0

    .line 344
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".8"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".NoAction"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    :cond_9
    :goto_0
    return-object p1
.end method

.method private static e(Lcom/netflix/mediaclient/android/app/Status;Lo/xD;)Lo/xD;
    .locals 1

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lo/xD;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".200"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->a:Ljava/lang/String;

    .line 481
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lo/xD;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".MissingStatus"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lo/xD;->c:Ljava/lang/String;

    return-object p1
.end method
