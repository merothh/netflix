.class abstract Lo/TypeReference$TaskDescription;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/LegacyFaceDetectMapper;",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/InputManagerInternal;

.field private final b:Lo/HdmiTimerRecordSources;

.field private final c:Lo/CryptoObject;

.field private final d:Ljava/lang/String;

.field final synthetic e:Lo/TypeReference;

.field private f:Z

.field private final j:Lcom/facebook/imagepipeline/producers/JobScheduler;


# direct methods
.method public constructor <init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/HdmiTimerRecordSources;",
            "ZI)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lo/TypeReference$TaskDescription;->e:Lo/TypeReference;

    .line 148
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    const-string p2, "ProgressiveDecoder"

    .line 131
    iput-object p2, p0, Lo/TypeReference$TaskDescription;->d:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    .line 150
    invoke-interface {p3}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object p2

    iput-object p2, p0, Lo/TypeReference$TaskDescription;->a:Lo/InputManagerInternal;

    .line 151
    invoke-interface {p3}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lo/CryptoObject;

    move-result-object p2

    iput-object p2, p0, Lo/TypeReference$TaskDescription;->c:Lo/CryptoObject;

    const/4 p2, 0x0

    .line 152
    iput-boolean p2, p0, Lo/TypeReference$TaskDescription;->f:Z

    .line 153
    new-instance p2, Lo/TypeReference$TaskDescription$5;

    invoke-direct {p2, p0, p1, p3, p5}, Lo/TypeReference$TaskDescription$5;-><init>(Lo/TypeReference$TaskDescription;Lo/TypeReference;Lo/HdmiTimerRecordSources;I)V

    .line 174
    new-instance p3, Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {p1}, Lo/TypeReference;->d(Lo/TypeReference;)Ljava/util/concurrent/Executor;

    move-result-object p5

    iget-object v0, p0, Lo/TypeReference$TaskDescription;->c:Lo/CryptoObject;

    iget v0, v0, Lo/CryptoObject;->c:I

    invoke-direct {p3, p5, p2, v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;I)V

    iput-object p3, p0, Lo/TypeReference$TaskDescription;->j:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 175
    iget-object p2, p0, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    new-instance p3, Lo/TypeReference$TaskDescription$4;

    invoke-direct {p3, p0, p1, p4}, Lo/TypeReference$TaskDescription$4;-><init>(Lo/TypeReference$TaskDescription;Lo/TypeReference;Z)V

    invoke-interface {p2, p3}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method static synthetic a(Lo/TypeReference$TaskDescription;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/TypeReference$TaskDescription;->j:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object p0
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 376
    :try_start_0
    iget-boolean v0, p0, Lo/TypeReference$TaskDescription;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Z)V
    .locals 1

    .line 384
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 385
    :try_start_0
    iget-boolean p1, p0, Lo/TypeReference$TaskDescription;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lo/TypeReference$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lo/BrightnessChangeEvent;->c(F)V

    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Lo/TypeReference$TaskDescription;->f:Z

    .line 390
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object p1, p0, Lo/TypeReference$TaskDescription;->j:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a()V

    return-void

    .line 386
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 390
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 412
    invoke-direct {p0, v0}, Lo/TypeReference$TaskDescription;->b(Z)V

    .line 413
    invoke-virtual {p0}, Lo/TypeReference$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lo/LegacyFaceDetectMapper;I)V
    .locals 18

    move-object/from16 v11, p0

    move/from16 v0, p2

    const-string v12, "DecodeProducer"

    .line 241
    invoke-virtual/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v1

    sget-object v2, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    if-eq v1, v2, :cond_0

    invoke-static/range {p2 .. p2}, Lo/TypeReference$TaskDescription;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-direct/range {p0 .. p0}, Lo/TypeReference$TaskDescription;->a()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 249
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v1

    const-string v2, "unknown"

    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {v1}, Lo/GestureLibraries;->d()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_2
    move-object v7, v2

    .line 255
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->g()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-virtual/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 257
    invoke-static/range {p2 .. p2}, Lo/TypeReference$TaskDescription;->e(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v5, 0x8

    .line 258
    invoke-static {v0, v5}, Lo/TypeReference$TaskDescription;->b(II)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x4

    .line 259
    invoke-static {v0, v9}, Lo/TypeReference$TaskDescription;->b(II)Z

    move-result v13

    .line 261
    iget-object v14, v11, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    invoke-interface {v14}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v14, Lo/CameraConstrainedHighSpeedCaptureSession;->c:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lo/CameraConstrainedHighSpeedCaptureSession;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v14, v2

    .line 268
    :try_start_0
    iget-object v2, v11, Lo/TypeReference$TaskDescription;->j:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->e()J

    move-result-wide v15

    .line 269
    iget-object v2, v11, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    invoke-interface {v2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_6

    if-eqz v13, :cond_5

    goto :goto_2

    .line 272
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lo/TypeReference$TaskDescription;->d(Lo/LegacyFaceDetectMapper;)I

    move-result v3

    goto :goto_3

    .line 271
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v3

    :goto_3
    if-nez v5, :cond_8

    if-eqz v13, :cond_7

    goto :goto_4

    .line 275
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lo/TypeReference$TaskDescription;->b()Lo/LegacyResultMapper;

    move-result-object v5

    goto :goto_5

    .line 273
    :cond_8
    :goto_4
    sget-object v5, Lo/RequestHolder;->a:Lo/LegacyResultMapper;

    .line 277
    :goto_5
    iget-object v13, v11, Lo/TypeReference$TaskDescription;->a:Lo/InputManagerInternal;

    iget-object v1, v11, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    invoke-interface {v1}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v12}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :try_start_1
    iget-object v13, v11, Lo/TypeReference$TaskDescription;->e:Lo/TypeReference;

    invoke-static {v13}, Lo/TypeReference;->c(Lo/TypeReference;)Lo/SyntheticKey;

    move-result-object v13

    iget-object v1, v11, Lo/TypeReference$TaskDescription;->c:Lo/CryptoObject;

    move-object/from16 v4, p1

    invoke-interface {v13, v4, v3, v5, v1}, Lo/SyntheticKey;->b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object v13
    :try_end_1
    .catch Lcom/facebook/imagepipeline/decoder/DecodeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->n()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    or-int/lit8 v0, v0, 0x10

    :cond_9
    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v15

    move-object v9, v14

    .line 312
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lo/TypeReference$TaskDescription;->e(Lo/LegacyRequestMapper;JLo/LegacyResultMapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 321
    iget-object v2, v11, Lo/TypeReference$TaskDescription;->a:Lo/InputManagerInternal;

    iget-object v3, v11, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    .line 322
    invoke-interface {v3}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12, v1}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 323
    invoke-direct {v11, v13, v0}, Lo/TypeReference$TaskDescription;->e(Lo/LegacyRequestMapper;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    invoke-static/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v13

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 283
    :try_start_4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/DecodeException;->d()Lo/LegacyFaceDetectMapper;

    move-result-object v1

    const-string v3, "ProgressiveDecoder"

    const-string v4, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    new-array v9, v9, [Ljava/lang/Object;

    .line 287
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/DecodeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v9, v17

    const/4 v13, 0x1

    aput-object v2, v9, v13

    const/4 v2, 0x2

    const/16 v13, 0xa

    .line 289
    invoke-virtual {v1, v13}, Lo/LegacyFaceDetectMapper;->i(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v2

    const/4 v2, 0x3

    .line 291
    invoke-virtual {v1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    .line 284
    invoke-static {v3, v4, v9}, Lo/DexMetadataHelper;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    move-object/from16 v1, p0

    move-wide v3, v15

    move-object v9, v14

    .line 298
    :try_start_5
    invoke-direct/range {v1 .. v10}, Lo/TypeReference$TaskDescription;->e(Lo/LegacyRequestMapper;JLo/LegacyResultMapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 307
    iget-object v2, v11, Lo/TypeReference$TaskDescription;->a:Lo/InputManagerInternal;

    iget-object v3, v11, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    .line 308
    invoke-interface {v3}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12, v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 309
    invoke-direct {v11, v0}, Lo/TypeReference$TaskDescription;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    invoke-static/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {p1 .. p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    throw v0

    :cond_a
    :goto_7
    return-void
.end method

.method static synthetic c(Lo/TypeReference$TaskDescription;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lo/TypeReference$TaskDescription;->j()V

    return-void
.end method

.method static synthetic d(Lo/TypeReference$TaskDescription;)Lo/HdmiTimerRecordSources;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    return-object p0
.end method

.method private e(Lo/LegacyRequestMapper;JLo/LegacyResultMapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LegacyRequestMapper;",
            "J",
            "Lo/LegacyResultMapper;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 338
    iget-object v6, v0, Lo/TypeReference$TaskDescription;->a:Lo/InputManagerInternal;

    iget-object v7, v0, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    invoke-interface {v7}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 341
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 342
    invoke-interface/range {p4 .. p4}, Lo/LegacyResultMapper;->d()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 343
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 344
    instance-of v9, v1, Lo/LegacyMetadataMapper;

    const-string v10, "sampleSize"

    const-string v11, "requestedImageSize"

    const-string v12, "imageFormat"

    const-string v13, "encodedImageSize"

    const-string v14, "isFinal"

    const-string v15, "hasGoodQuality"

    const-string v0, "queueTime"

    if-eqz v9, :cond_1

    .line 345
    check-cast v1, Lo/LegacyMetadataMapper;

    invoke-virtual {v1}, Lo/LegacyMetadataMapper;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    new-instance v5, Ljava/util/HashMap;

    const/16 v9, 0x8

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    const-string v9, "bitmapSize"

    .line 350
    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p9

    .line 357
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {v5}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v5

    .line 360
    new-instance v5, Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 361
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {v5}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private e(Lo/LegacyRequestMapper;I)V
    .locals 1

    .line 398
    iget-object v0, p0, Lo/TypeReference$TaskDescription;->e:Lo/TypeReference;

    .line 399
    invoke-static {v0}, Lo/TypeReference;->a(Lo/TypeReference;)Lo/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/CameraManager;->e(Ljava/io/Closeable;)Lo/CompatibilityInfo;

    move-result-object p1

    .line 401
    :try_start_0
    invoke-static {p2}, Lo/TypeReference$TaskDescription;->e(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lo/TypeReference$TaskDescription;->b(Z)V

    .line 402
    invoke-virtual {p0}, Lo/TypeReference$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p2
.end method

.method static synthetic e(Lo/TypeReference$TaskDescription;Lo/LegacyFaceDetectMapper;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lo/TypeReference$TaskDescription;->c(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x1

    .line 420
    invoke-direct {p0, v0}, Lo/TypeReference$TaskDescription;->b(Z)V

    .line 421
    invoke-virtual {p0}, Lo/TypeReference$TaskDescription;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    return-void
.end method


# virtual methods
.method public a(Lo/LegacyFaceDetectMapper;I)V
    .locals 2

    .line 196
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecodeProducer#onNewResultImpl"

    .line 197
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-static {p2}, Lo/TypeReference$TaskDescription;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is not valid."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/TypeReference$TaskDescription;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 213
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    .line 204
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lo/TypeReference$TaskDescription;->d(Lo/LegacyFaceDetectMapper;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 212
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 213
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-void

    :cond_4
    const/4 p1, 0x4

    .line 207
    :try_start_2
    invoke-static {p2, p1}, Lo/TypeReference$TaskDescription;->b(II)Z

    move-result p1

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 208
    iget-object p1, p0, Lo/TypeReference$TaskDescription;->b:Lo/HdmiTimerRecordSources;

    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 209
    :cond_5
    iget-object p1, p0, Lo/TypeReference$TaskDescription;->j:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :cond_6
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 213
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 212
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 213
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    throw p1
.end method

.method protected abstract b()Lo/LegacyResultMapper;
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lo/TypeReference$TaskDescription;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 128
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/TypeReference$TaskDescription;->a(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method protected abstract d(Lo/LegacyFaceDetectMapper;)I
.end method

.method protected d(Lo/LegacyFaceDetectMapper;I)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lo/TypeReference$TaskDescription;->j:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a(Lo/LegacyFaceDetectMapper;I)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 0

    .line 230
    invoke-direct {p0}, Lo/TypeReference$TaskDescription;->j()V

    return-void
.end method

.method protected e(F)V
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    mul-float p1, p1, v0

    .line 220
    invoke-super {p0, p1}, Lo/TaskSingleDrainer;->e(F)V

    return-void
.end method
