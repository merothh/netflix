.class final Lo/qD;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/media/MediaCodec$CryptoInfo;)Z
    .locals 3

    .line 30
    iget p0, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported crypto mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)[B"
        }
    .end annotation

    .line 64
    instance-of v0, p0, Lo/ul;

    if-eqz v0, :cond_0

    .line 66
    check-cast p0, Lo/ul;

    .line 67
    invoke-virtual {p0}, Lo/ul;->a()Lo/rn;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Lo/rn;->h()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NetflixEmbeddedDrmUtils"

    const-string v0, "Error:: should not happen!"

    .line 71
    invoke-static {p0, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static d(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 0

    .line 211
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/4 p2, 0x4

    .line 212
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Landroid/media/MediaCodec$CryptoInfo;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    .line 82
    iget v1, v9, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const-string v10, "NetflixEmbeddedDrmUtils"

    if-nez v1, :cond_0

    const-string v0, "Unencrypted content, noop"

    .line 83
    invoke-static {v10, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "Using embedded Widevine to decrypt content"

    .line 87
    invoke-static {v10, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static/range {p2 .. p2}, Lo/qD;->e(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    move-result-object v11

    .line 89
    invoke-static/range {p2 .. p2}, Lo/qD;->c(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[B

    move-result-object v1

    const/4 v12, 0x1

    new-array v2, v12, [Ljava/lang/Object;

    .line 90
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v13, 0x0

    aput-object v3, v2, v13

    const-string v1, "sessionID: %s"

    invoke-static {v10, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    invoke-static/range {p1 .. p1}, Lo/qD;->a(Landroid/media/MediaCodec$CryptoInfo;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 99
    invoke-static {}, Lcom/netflix/mediaclient/media/CryptoModeDescriptorFactory;->createAesCtrCryptoModeDescriptor()Lcom/netflix/mediaclient/media/CryptoModeDescriptor;

    move-result-object v0

    :goto_0
    move-object v15, v0

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 104
    iget v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;->encryptedBlocks:I

    .line 105
    iget v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;->clearBlocks:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/media/CryptoModeDescriptorFactory;->createAesCbcCryptoModeDescriptor(II)Lcom/netflix/mediaclient/media/CryptoModeDescriptor;

    move-result-object v0

    goto :goto_0

    :goto_2
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    .line 112
    :goto_3
    iget v1, v9, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-ge v8, v1, :cond_a

    .line 113
    iget-object v1, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v1, v1, v8

    .line 114
    iget-object v2, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    aget v2, v2, v8

    if-gez v1, :cond_3

    new-array v3, v12, [Ljava/lang/Object;

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v13

    const-string v1, "Clear bytes can not be less than 0 > %d"

    invoke-static {v10, v1, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    :cond_3
    if-gez v2, :cond_4

    new-array v3, v12, [Ljava/lang/Object;

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v13

    const-string v2, "Encrypted bytes can not be less than 0 > %d"

    invoke-static {v10, v2, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v17, 0x0

    goto :goto_4

    :cond_4
    move/from16 v17, v2

    :goto_4
    if-nez v8, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    .line 128
    :goto_5
    iget v2, v9, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    sub-int/2addr v2, v12

    if-ne v8, v2, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v2, 0x8

    if-lez v1, :cond_7

    new-array v3, v2, [Ljava/lang/Object;

    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v12

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v19

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v18

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v5

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v21, 0x6

    aput-object v20, v3, v21

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v21, 0x7

    aput-object v20, v3, v21

    const-string v4, "decryptUsingEmbeddedWidevine:: subsample %d, getClear %d, buffer [size: %d, position: %d, limit: %d, remaining: %d, direct %b, read only %b]"

    invoke-static {v10, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/2addr v0, v1

    goto :goto_7

    :cond_7
    new-array v1, v12, [Ljava/lang/Object;

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v13

    const-string v3, "Completely encrypted subsample %d"

    invoke-static {v10, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_7
    move/from16 v21, v0

    if-lez v17, :cond_9

    new-array v0, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v19

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v18

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "decryptUsingEmbeddedWidevine:: subsample %d, getEnc %d, buffer [size: %d, position: %d, limit: %d, remaining: %d, direct %b, read only %b]"

    invoke-static {v10, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v14, :cond_8

    move/from16 v18, v16

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    :goto_8
    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v4, v21

    move/from16 v5, v17

    move/from16 v19, v8

    move/from16 v8, v18

    .line 139
    invoke-static/range {v0 .. v8}, Lo/qD;->e(Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;Lcom/netflix/mediaclient/media/CryptoModeDescriptor;Landroid/media/MediaCodec$CryptoInfo;Ljava/nio/ByteBuffer;IIZZI)V

    add-int v21, v21, v17

    goto :goto_9

    :cond_9
    move/from16 v19, v8

    new-array v0, v12, [Ljava/lang/Object;

    .line 145
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    const-string v1, "Unencrypted subsample %d"

    invoke-static {v10, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_9
    move/from16 v0, v21

    add-int v16, v16, v17

    add-int/lit8 v8, v19, 0x1

    goto/16 :goto_3

    :cond_a
    return-void
.end method

.method private static e(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;"
        }
    .end annotation

    .line 44
    instance-of v0, p0, Lo/ul;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lo/ul;

    .line 47
    invoke-virtual {p0}, Lo/ul;->a()Lo/rn;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Lo/rn;->p()Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    goto :goto_0

    :cond_0
    const-string p0, "NetflixEmbeddedDrmUtils"

    const-string v0, "Error:: should not happen!"

    .line 51
    invoke-static {p0, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static e(Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;Lcom/netflix/mediaclient/media/CryptoModeDescriptor;Landroid/media/MediaCodec$CryptoInfo;Ljava/nio/ByteBuffer;IIZZI)V
    .locals 12

    move-object v0, p2

    move-object v2, p1

    move/from16 v1, p8

    .line 177
    instance-of v3, v2, Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "NetflixEmbeddedDrmUtils"

    if-eqz v3, :cond_0

    const-string v3, "Not \'cenc\' decryption: IV does not shift"

    .line 178
    invoke-static {v6, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const-string v3, "Blockoffset 0, no change in IV"

    .line 183
    invoke-static {v6, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    goto :goto_0

    :cond_1
    new-array v3, v5, [Ljava/lang/Object;

    .line 186
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "Byte offset %d, shift IV"

    invoke-static {v6, v7, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 187
    new-instance v3, Ljava/math/BigInteger;

    iget-object v7, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-direct {v3, v5, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    int-to-long v7, v1

    .line 188
    invoke-static {v3, v7, v8}, Lo/qD;->e(Ljava/math/BigInteger;J)[B

    move-result-object v3

    goto :goto_0

    .line 192
    :goto_1
    iget-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-nez v3, :cond_2

    const-string v3, "keyID: is null!"

    .line 194
    invoke-static {v6, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-array v5, v5, [Ljava/lang/Object;

    .line 196
    invoke-static {v3}, Lo/adm;->e([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "keyID: %s"

    invoke-static {v6, v3, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    :goto_2
    iget-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    const/4 v8, 0x1

    int-to-long v10, v1

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v7

    move v7, v8

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v11}, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;->decryptSubsample([BLcom/netflix/mediaclient/media/CryptoModeDescriptor;Ljava/nio/ByteBuffer;II[BZZZJ)V

    return-void
.end method

.method private static e(Ljava/math/BigInteger;J)[B
    .locals 2

    .line 217
    invoke-static {p0, p1, p2}, Lo/qD;->d(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 220
    array-length p1, p0

    const/16 p2, 0x10

    if-ge p1, p2, :cond_0

    new-array p1, p2, [B

    const/4 v0, 0x0

    .line 222
    array-length v1, p0

    sub-int/2addr p2, v1

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 224
    :cond_0
    array-length p1, p0

    if-ne p1, p2, :cond_1

    return-object p0

    .line 227
    :cond_1
    array-length p1, p0

    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Lo/adm;->c([BI)[B

    move-result-object p0

    return-object p0
.end method
