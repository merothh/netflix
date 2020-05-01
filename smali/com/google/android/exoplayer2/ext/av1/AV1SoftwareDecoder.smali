.class public Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;",
        "Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;",
        "Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DECODE_ERROR:I = 0x1

.field protected static final DRM_ERROR:I = 0x2

.field protected static final NO_ERROR:I = 0x0

.field public static final OUTPUT_MODE_NONE:I = -0x1

.field public static final OUTPUT_MODE_RGB:I = 0x1

.field public static final OUTPUT_MODE_YUV:I


# instance fields
.field protected final VoDecContext:J

.field private context:Landroid/content/Context;

.field private final exoMediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

.field private volatile outputMode:I

.field public ts:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/google/android/exoplayer2/drm/ExoMediaCrypto;)V
    .locals 2

    .line 65
    new-array p2, p2, [Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    new-array p3, p3, [Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->context:Landroid/content/Context;

    .line 67
    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->exoMediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    const p2, 0x8000

    new-array p2, p2, [B

    const/4 p3, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p5, "volicense_av1.dat"

    invoke-virtual {p1, p5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    .line 74
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-wide/16 v0, 0x0

    if-lez p3, :cond_0

    .line 79
    new-instance p1, Ljava/lang/String;

    const-string p3, "864516A05CF44F2DAC1F7FAB06BE67B1"

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoInit([BLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    goto :goto_1

    .line 82
    :cond_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    .line 84
    :goto_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 87
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->setInitialInputBufferSize(I)V

    return-void

    .line 85
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    const-string p2, "Failed to initialize decoder"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native AV1GetErrorCode(J)I
.end method

.method private native AV1GetErrorMessage(J)Ljava/lang/String;
.end method

.method private native AV1GetFrame(JLcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Ljava/lang/Long;)I
.end method

.method private native AV1SecureDecode(JLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/drm/ExoMediaCrypto;I[B[BI[I[I)J
.end method

.method private native VoClose(J)J
.end method

.method private native VoInit([BLjava/lang/String;)J
.end method


# virtual methods
.method protected native AV1Decode(JLjava/nio/ByteBuffer;IJ)J
.end method

.method public bridge synthetic createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->createInputBuffer()Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createInputBuffer()Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;
    .locals 1

    .line 107
    new-instance v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;
    .locals 1

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;-><init>(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;)V

    return-object v0
.end method

.method public decode(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;
    .locals 7

    .line 123
    iget-object v3, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 125
    iget-wide v5, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->timeUs:J

    .line 127
    iget-object p3, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 128
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v3, v4, p3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->decrypt(Ljava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/CryptoInfo;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->AV1Decode(JLjava/nio/ByteBuffer;IJ)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    const-wide/16 p1, 0x2

    cmp-long p3, v0, p1

    if-nez p3, :cond_1

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drm error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->AV1GetErrorMessage(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance p2, Lcom/google/android/exoplayer2/drm/DecryptionException;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->AV1GetErrorCode(J)I

    move-result p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/drm/DecryptionException;-><init>(ILjava/lang/String;)V

    .line 137
    new-instance p3, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3

    .line 139
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Decode error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->AV1GetErrorMessage(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 145
    :cond_2
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->ts:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->AV1GetFrame(JLcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Ljava/lang/Long;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const-string v1, "Buffer initialization failed."

    const/high16 v2, -0x80000000

    if-ne p3, v0, :cond_3

    .line 147
    :try_start_1
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->addFlag(I)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    .line 149
    new-instance p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 155
    :cond_4
    :goto_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->ts:J

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-nez p3, :cond_5

    .line 156
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->addFlag(I)V

    goto :goto_2

    :cond_5
    const-wide/16 v5, -0x2

    cmp-long p3, v3, v5

    if-nez p3, :cond_6

    .line 158
    new-instance p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 160
    :cond_6
    :goto_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object p1, p2, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 161
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->ts:J

    iput-wide v0, p2, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->timeUs:J

    .line 162
    iget p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->outputMode:I

    iput p1, p2, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->mode:I

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    new-instance p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    const-string p2, "Fail to get frame."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 33
    check-cast p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;

    check-cast p2, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->decode(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderInputBuffer;Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decrypt(Ljava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/CryptoInfo;)J
    .locals 12

    .line 167
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->exoMediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    iget v6, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iget-object v7, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    iget-object v8, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v9, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iget-object v10, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v11, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->AV1SecureDecode(JLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/drm/ExoMediaCrypto;I[B[BI[I[I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libVo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderLibrary;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 175
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoDecContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->VoClose(J)J

    return-void
.end method

.method public bridge synthetic releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    return-void
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    return-void
.end method

.method public setOutputMode(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoder;->outputMode:I

    return-void
.end method
