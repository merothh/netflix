.class public Lo/qM;
.super Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/qM$TaskDescription;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z

.field protected c:Landroid/os/Handler;

.field protected d:Landroid/os/HandlerThread;

.field protected e:Ljava/lang/RuntimeException;

.field protected i:Z


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

    .line 54
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/qM;->a:Ljava/util/LinkedList;

    return-void
.end method

.method private synthetic c(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic e(Lo/qM;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/qM;->c(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lo/qM;->e:Ljava/lang/RuntimeException;

    .line 220
    iput-object p1, p0, Lo/qM;->e:Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected b()V
    .locals 4

    .line 177
    iget-object v0, p0, Lo/qM;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 181
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getInputIndex()I

    move-result v1

    if-ltz v1, :cond_1

    .line 183
    iget-object v2, p0, Lo/qM;->a:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-gez v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 189
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void

    .line 189
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearInput(Z)V
    .locals 4

    .line 197
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 201
    iget-object v1, p0, Lo/qM;->c:Landroid/os/Handler;

    new-instance v2, Lo/qU;

    invoke-direct {v2, p0, v0}, Lo/qU;-><init>(Lo/qM;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1

    .line 207
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NetflixMediaCodecVideoRenderer"

    const-string v3, "interrupted waiting for clearInput"

    .line 209
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/qM;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 213
    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearInput(Z)V

    .line 214
    iget-object p1, p0, Lo/qM;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 215
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 1

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 64
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/qM;->b:Z

    .line 66
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    return-void
.end method

.method protected d(Lo/qM$TaskDescription;)V
    .locals 8

    .line 165
    :try_start_0
    iget v1, p1, Lo/qM$TaskDescription;->d:I

    iget v2, p1, Lo/qM$TaskDescription;->b:I

    iget-object v3, p1, Lo/qM$TaskDescription;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v4, p1, Lo/qM$TaskDescription;->g:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;

    iget-wide v5, p1, Lo/qM$TaskDescription;->c:J

    iget v7, p1, Lo/qM$TaskDescription;->e:I

    move-object v0, p0

    invoke-super/range {v0 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;JI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p0, p1}, Lo/qM;->a(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catch_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ignore IllegalStateException on queueSecureInputBuffer."

    .line 169
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public disableWhenPeriodChanges()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lo/qM;->i:Z

    .line 115
    invoke-super {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->disable()V

    return-void
.end method

.method protected e(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    .line 243
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method

.method public getInputIndex()I
    .locals 2

    .line 120
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 121
    invoke-super {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getInputIndex()I

    move-result v0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lo/qM;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lo/qM;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lo/qM;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 127
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    .line 127
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMaxAheadTimedReleasUs()J
    .locals 2

    .line 72
    iget-boolean v0, p0, Lo/qM;->b:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x6ddd0

    goto :goto_0

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxAheadTimedReleasUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lo/qM;->b()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/qM$TaskDescription;

    .line 152
    invoke-virtual {p0, p1}, Lo/qM;->d(Lo/qM$TaskDescription;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDisabled()V
    .locals 5

    const-string v0, "NetflixMediaCodecVideoRenderer"

    .line 97
    iget-boolean v1, p0, Lo/qM;->i:Z

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lo/qM;->c:Landroid/os/Handler;

    .line 101
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " finishing..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/os/HandlerThread;->join(J)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " should finished."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fails to join."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    iput-object v1, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    .line 108
    invoke-super {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onDisabled()V

    :cond_0
    return-void
.end method

.method public onEnabled(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lo/qM;->i:Z

    .line 82
    iget-object v0, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetflixMediaCodecVideoRenderer#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    .line 85
    iget-object v0, p0, Lo/qM;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 86
    iget-object v0, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    :cond_0
    iget-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lo/qM;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/qM;->c:Landroid/os/Handler;

    .line 91
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onEnabled(Z)V

    return-void
.end method

.method public queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;JI)V
    .locals 12

    move-object v0, p0

    .line 136
    iget-object v1, v0, Lo/qM;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 137
    invoke-super/range {p0 .. p7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;JI)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 139
    new-instance v11, Lo/qM$TaskDescription;

    move-object v3, v11

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lo/qM$TaskDescription;-><init>(IILandroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;JI)V

    invoke-virtual {v1, v2, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0, v1}, Lo/qM;->a(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    .line 141
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 142
    :cond_1
    throw v1
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 227
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    if-eqz p2, :cond_2

    .line 228
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    sget-object v0, Lo/sU;->b:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object p2

    if-eqz p2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x2

    :cond_2
    :goto_0
    return p1
.end method
