.class Lo/qK;
.super Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;
.source ""


# instance fields
.field private final a:I

.field private b:J

.field private final c:[J

.field private d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private q:Lo/qL;

.field private r:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IIILcom/google/android/exoplayer2/drm/ExoMediaCrypto;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;III",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;-><init>(Landroid/content/Context;IIILcom/google/android/exoplayer2/drm/ExoMediaCrypto;)V

    const-wide/16 p5, 0x28

    .line 22
    iput-wide p5, p0, Lo/qK;->b:J

    .line 51
    iput-object p2, p0, Lo/qK;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 52
    iput p4, p0, Lo/qK;->a:I

    .line 53
    iget p1, p0, Lo/qK;->a:I

    new-array p1, p1, [J

    iput-object p1, p0, Lo/qK;->c:[J

    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/decoder/CryptoInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;
    .locals 2

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    iget p1, p1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 133
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v1, 0x41b80000    # 23.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 134
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lo/qK;->b:J

    .line 135
    iget-object v0, p0, Lo/qK;->q:Lo/qL;

    if-eqz v0, :cond_0

    .line 136
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    float-to-int p1, p1

    iput p1, v0, Lo/qL;->a:I

    :cond_0
    return-void
.end method

.method public d(Lo/qL;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lo/qK;->q:Lo/qL;

    return-void
.end method

.method public decode(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;
    .locals 7

    .line 64
    iget v0, p0, Lo/qK;->h:I

    iget v1, p0, Lo/qK;->a:I

    rem-int v1, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 65
    iput v0, p0, Lo/qK;->h:I

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 67
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v4

    iget-object v5, p0, Lo/qK;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v6, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-direct {p0, v6}, Lo/qK;->e(Lcom/google/android/exoplayer2/decoder/CryptoInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lo/qD;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->clearFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    const-string p3, ""

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2

    .line 75
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->decode(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    move-result-object p1

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v2

    .line 77
    iget-wide v2, p0, Lo/qK;->g:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lo/qK;->g:J

    .line 80
    iget-wide v2, p0, Lo/qK;->e:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lo/qK;->e:J

    .line 81
    iget-wide v2, p0, Lo/qK;->e:J

    iget-object v0, p0, Lo/qK;->c:[J

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/qK;->e:J

    .line 82
    aput-wide p2, v0, v1

    .line 83
    iget-wide v0, p0, Lo/qK;->o:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lo/qK;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/qK;->o:J

    .line 84
    iget v0, p0, Lo/qK;->h:I

    iget v1, p0, Lo/qK;->a:I

    if-lt v0, v1, :cond_5

    .line 85
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 86
    iget-wide v4, p0, Lo/qK;->e:J

    int-to-long v0, v0

    div-long/2addr v4, v0

    .line 87
    iget-wide v0, p0, Lo/qK;->f:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 88
    iput-wide v4, p0, Lo/qK;->f:J

    .line 89
    iget v0, p0, Lo/qK;->h:I

    iput v0, p0, Lo/qK;->k:I

    .line 91
    :cond_1
    iget-wide v0, p0, Lo/qK;->b:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_2

    .line 92
    iget v0, p0, Lo/qK;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/qK;->n:I

    .line 94
    :cond_2
    iget-wide v0, p0, Lo/qK;->j:J

    cmp-long v4, p2, v0

    if-lez v4, :cond_3

    .line 95
    iput-wide p2, p0, Lo/qK;->j:J

    .line 96
    iget v0, p0, Lo/qK;->h:I

    iput v0, p0, Lo/qK;->i:I

    .line 98
    :cond_3
    iget-wide v0, p0, Lo/qK;->b:J

    cmp-long v4, p2, v0

    if-ltz v4, :cond_4

    .line 99
    iget p2, p0, Lo/qK;->m:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lo/qK;->m:I

    .line 101
    :cond_4
    iget-wide p2, p0, Lo/qK;->o:J

    cmp-long v0, p2, v2

    if-lez v0, :cond_5

    .line 102
    iget v0, p0, Lo/qK;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/qK;->l:I

    .line 103
    iget v0, p0, Lo/qK;->r:I

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    long-to-int p3, p2

    .line 104
    iput p3, p0, Lo/qK;->r:I

    .line 109
    :cond_5
    iget-object p2, p0, Lo/qK;->q:Lo/qL;

    if-eqz p2, :cond_6

    .line 110
    iget-wide v0, p0, Lo/qK;->g:J

    iget p3, p0, Lo/qK;->h:I

    int-to-long v2, p3

    div-long/2addr v0, v2

    long-to-int p3, v0

    iput p3, p2, Lo/qL;->i:I

    .line 111
    iget-wide v0, p0, Lo/qK;->f:J

    long-to-int p3, v0

    iput p3, p2, Lo/qL;->b:I

    .line 112
    iget p3, p0, Lo/qK;->k:I

    iput p3, p2, Lo/qL;->e:I

    .line 113
    iget-wide v0, p0, Lo/qK;->j:J

    long-to-int p3, v0

    iput p3, p2, Lo/qL;->d:I

    .line 114
    iget p3, p0, Lo/qK;->i:I

    iput p3, p2, Lo/qL;->c:I

    .line 115
    iget p3, p0, Lo/qK;->n:I

    iput p3, p2, Lo/qL;->j:I

    .line 116
    iget p3, p0, Lo/qK;->m:I

    iput p3, p2, Lo/qL;->g:I

    .line 117
    iget p3, p0, Lo/qK;->l:I

    iput p3, p2, Lo/qL;->h:I

    .line 118
    iget p3, p0, Lo/qK;->r:I

    iput p3, p2, Lo/qL;->f:I

    .line 119
    invoke-virtual {p2}, Lo/qL;->ensureUpdated()V

    :cond_6
    return-object p1
.end method

.method public bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 19
    check-cast p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    check-cast p2, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lo/qK;->decode(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixEmbedded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 5

    .line 143
    invoke-super {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->release()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    iget v1, p0, Lo/qK;->h:I

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/qK;->g:J

    iget v3, p0, Lo/qK;->h:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/qK;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lo/qK;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/qK;->j:J

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lo/qK;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lo/qK;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lo/qK;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, " total frame %d \n average %d\n maxAverageSlidingWindowProcessTime %d @%d\n maxProcessTime %d @%d\n highAverageTimeOccurrence %d, highProcessTimeOccurrence %d"

    .line 144
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
