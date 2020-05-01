.class public Lo/qQ;
.super Lo/qM;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .line 29
    invoke-direct/range {p0 .. p9}, Lo/qM;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method


# virtual methods
.method public configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 4

    const-string v0, "NetflixEmbeddedMediaCodecVideoRenderer"

    const-string v1, "configureCodec:: secure decoder is NOT required"

    .line 35
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    iget-object v3, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "configureCodec:: secure decoder is NOT required, but was %b"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    :cond_0
    iput-boolean v1, p0, Lo/qQ;->b:Z

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lo/qM;->configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    return-void
.end method

.method protected d(Lo/qM$TaskDescription;)V
    .locals 13

    const-string v0, "NetflixEmbeddedMediaCodecVideoRenderer"

    const/4 v1, 0x0

    .line 51
    :try_start_0
    iget-object v2, p0, Lo/qQ;->inputBuffers:[Ljava/nio/ByteBuffer;

    iget v3, p1, Lo/qM$TaskDescription;->d:I

    aget-object v2, v2, v3

    .line 57
    iget-object v3, p1, Lo/qM$TaskDescription;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v4, p0, Lo/qQ;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v5, p1, Lo/qM$TaskDescription;->g:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;

    invoke-static {v2, v3, v4, v5}, Lo/qD;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;)V

    .line 60
    iget v7, p1, Lo/qM$TaskDescription;->d:I

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    iget-wide v10, p1, Lo/qM$TaskDescription;->c:J

    const/4 v12, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lo/qQ;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Runtime exception!"

    .line 79
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    invoke-virtual {p0, p1}, Lo/qQ;->a(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catch_1
    move-exception p1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to decrypt!"

    .line 76
    invoke-static {v0, p1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ignore failure to decode using embedded Widevine."

    .line 77
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 66
    instance-of v2, p1, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm$MediaDrmStateException;

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Decryption failure"

    .line 67
    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    invoke-virtual {p0, p1}, Lo/qQ;->a(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ignore IllegalStateException on queueSecureInputBuffer."

    .line 72
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 95
    invoke-virtual {p0, p1, p2}, Lo/qQ;->e(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    if-eqz p2, :cond_3

    .line 96
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    sget-object v1, Lo/sU;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_1

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v0, 0x500

    if-lt p2, v0, :cond_1

    const/4 p1, 0x3

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x2

    :cond_3
    :goto_0
    return p1
.end method
