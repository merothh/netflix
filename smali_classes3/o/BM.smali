.class public final Lo/BM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BK;


# instance fields
.field private final b:Landroidx/room/RoomDatabase;

.field private final c:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final e:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    .line 26
    new-instance v0, Lo/BM$5;

    invoke-direct {v0, p0, p1}, Lo/BM$5;-><init>(Lo/BM;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lo/BM;->e:Landroidx/room/EntityInsertionAdapter;

    .line 289
    new-instance v0, Lo/BM$3;

    invoke-direct {v0, p0, p1}, Lo/BM$3;-><init>(Lo/BM;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lo/BM;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BY;",
            ">;)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 322
    :try_start_0
    iget-object v0, p0, Lo/BM;->e:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 323
    iget-object p1, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iget-object p1, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 326
    throw p1
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BY;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 344
    :try_start_0
    iget-object v0, p0, Lo/BM;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 345
    iget-object p1, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object p1, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 348
    throw p1
.end method

.method public c(Lo/BY;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 311
    :try_start_0
    iget-object v0, p0, Lo/BM;->e:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 312
    iget-object p1, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object p1, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 315
    throw p1
.end method

.method public e()Ljava/util/List;
    .locals 79
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/BY;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM offlineFalkorPlayable"

    .line 354
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move-object/from16 v2, p0

    .line 355
    iget-object v3, v2, Lo/BM;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "videoId"

    .line 357
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "regId"

    .line 358
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "parentId"

    .line 359
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    .line 360
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "seasonLabel"

    .line 361
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "advisoriesString"

    .line 362
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "isEpisode"

    .line 363
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "isNSRE"

    .line 364
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "isAutoPlay"

    .line 365
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "isNextPlayableEpisode"

    .line 366
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "isAgeProtected"

    .line 367
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "isPinProtected"

    .line 368
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "isPreviewProtected"

    .line 369
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "isAdvisoryDisabled"

    .line 370
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "isAvailableToStream"

    .line 371
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "isSupplementalVideo"

    .line 372
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "duration"

    .line 373
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "seasonNumber"

    .line 374
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "episodeNumber"

    .line 375
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "logicalStart"

    .line 376
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "endtime"

    .line 377
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "maxAutoplay"

    .line 378
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "expTime"

    .line 379
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "watchedTime"

    .line 380
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "bookmark"

    .line 381
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "supportsPrePlay"

    .line 382
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "episodeNumberHidden"

    .line 383
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "profileId"

    .line 384
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "seasonLabels"

    .line 385
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "errorType"

    .line 386
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "videoType"

    .line 387
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    const-string v1, "year"

    .line 388
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v34, v1

    const-string v1, "maturityLevel"

    .line 389
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v35, v1

    const-string v1, "synopsis"

    .line 390
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v36, v1

    const-string v1, "quality"

    .line 391
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v37, v1

    const-string v1, "actors"

    .line 392
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v38, v1

    const-string v1, "genres"

    .line 393
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v39, v1

    const-string v1, "cert"

    .line 394
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v40, v1

    const-string v1, "supplMessage"

    .line 395
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v41, v1

    const-string v1, "defaultTrailer"

    .line 396
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v42, v1

    const-string v1, "copyright"

    .line 397
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v43, v1

    const-string v1, "hResPortBoxArtUrl"

    .line 398
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v44, v1

    const-string v1, "boxshotUrl"

    .line 399
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v45, v1

    const-string v1, "boxartImageId"

    .line 400
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v46, v1

    const-string v1, "horzDispUrl"

    .line 401
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v47, v1

    const-string v1, "horzDispSmallUrl"

    .line 402
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v48, v1

    const-string v1, "storyDispUrl"

    .line 403
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v49, v1

    const-string v1, "tvCardUrl"

    .line 404
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v50, v1

    const-string v1, "storyUrl"

    .line 405
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v51, v1

    const-string v1, "bifUrl"

    .line 406
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v52, v1

    const-string v1, "billboardArtUrl"

    .line 407
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v53, v1

    const-string v1, "evidenceType"

    .line 408
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v54, v1

    const-string v1, "evidenceTitle"

    .line 409
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v55, v1

    const-string v1, "catalogIdUrl"

    .line 410
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v56, v1

    const-string v1, "titleImgUrl"

    .line 411
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v57, v1

    const-string v1, "titleCroppedImgUrl"

    .line 412
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v58, v1

    const-string v1, "nextEpisodeId"

    .line 413
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v59, v1

    const-string v1, "isOriginal"

    .line 414
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v60, v1

    const-string v1, "isPreRelease"

    .line 415
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v61, v1

    const-string v1, "hasWatched"

    .line 416
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v62, v1

    const-string v1, "hasTrailers"

    .line 417
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v63, v1

    const-string v1, "isInQueue"

    .line 418
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v64, v1

    const-string v1, "isVideoHd"

    .line 419
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v65, v1

    const-string v1, "isVideoUhd"

    .line 420
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v66, v1

    const-string v1, "isVideo5dot1"

    .line 421
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v67, v1

    const-string v1, "isVideoHdr10"

    .line 422
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v68, v1

    const-string v1, "isVideoDolbyVision"

    .line 423
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v69, v1

    const-string v1, "interactiveFeatures"

    .line 424
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v70, v1

    const-string v1, "isNonSerializedTv"

    .line 425
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v71, v1

    const-string v1, "tags"

    .line 426
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v72, v1

    const-string v1, "timeCodes"

    .line 427
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v73, v1

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v74, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 431
    new-instance v2, Lo/BY;

    invoke-direct {v2}, Lo/BY;-><init>()V

    move-object/from16 v75, v1

    .line 432
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->a:Ljava/lang/String;

    .line 433
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/BY;->c:I

    .line 434
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->b:Ljava/lang/String;

    .line 435
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->e:Ljava/lang/String;

    .line 436
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->d:Ljava/lang/String;

    .line 437
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->f:Ljava/lang/String;

    .line 439
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v76, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 440
    :goto_1
    iput-boolean v1, v2, Lo/BY;->i:Z

    .line 442
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 443
    :goto_2
    iput-boolean v1, v2, Lo/BY;->h:Z

    .line 445
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 446
    :goto_3
    iput-boolean v1, v2, Lo/BY;->g:Z

    .line 448
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 449
    :goto_4
    iput-boolean v1, v2, Lo/BY;->j:Z

    .line 451
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 452
    :goto_5
    iput-boolean v1, v2, Lo/BY;->l:Z

    .line 454
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 455
    :goto_6
    iput-boolean v1, v2, Lo/BY;->m:Z

    .line 457
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 458
    :goto_7
    iput-boolean v1, v2, Lo/BY;->o:Z

    move/from16 v1, v74

    .line 460
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v74

    if-eqz v74, :cond_7

    move/from16 v74, v0

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move/from16 v74, v0

    const/4 v0, 0x0

    .line 461
    :goto_8
    iput-boolean v0, v2, Lo/BY;->n:Z

    move/from16 v0, v17

    .line 463
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v0

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move/from16 v17, v0

    const/4 v0, 0x0

    .line 464
    :goto_9
    iput-boolean v0, v2, Lo/BY;->k:Z

    move/from16 v0, v18

    .line 466
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v18, v0

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move/from16 v18, v0

    const/4 v0, 0x0

    .line 467
    :goto_a
    iput-boolean v0, v2, Lo/BY;->r:Z

    move/from16 v0, v19

    move/from16 v19, v1

    .line 468
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/BY;->s:I

    move/from16 v1, v20

    move/from16 v20, v0

    .line 469
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lo/BY;->p:I

    move/from16 v0, v21

    move/from16 v21, v1

    .line 470
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/BY;->q:I

    move/from16 v1, v22

    move/from16 v22, v0

    .line 471
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lo/BY;->t:I

    move/from16 v0, v23

    move/from16 v23, v1

    .line 472
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/BY;->y:I

    move/from16 v1, v24

    move/from16 v24, v0

    .line 473
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lo/BY;->x:I

    move/from16 v77, v5

    move/from16 v0, v25

    move/from16 v25, v4

    .line 474
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lo/BY;->v:J

    move v5, v1

    move/from16 v4, v26

    move/from16 v26, v0

    .line 475
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lo/BY;->w:J

    move/from16 v0, v27

    .line 476
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/BY;->u:I

    move/from16 v1, v28

    .line 478
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_a

    move/from16 v27, v0

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move/from16 v27, v0

    const/4 v0, 0x0

    .line 479
    :goto_b
    iput-boolean v0, v2, Lo/BY;->D:Z

    move/from16 v0, v29

    .line 481
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v29, v0

    if-eqz v28, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 482
    :goto_c
    iput-boolean v0, v2, Lo/BY;->C:Z

    move/from16 v28, v1

    move/from16 v0, v30

    .line 483
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->z:Ljava/lang/String;

    move/from16 v30, v0

    move/from16 v1, v31

    .line 484
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->B:Ljava/lang/String;

    move/from16 v31, v1

    move/from16 v0, v32

    .line 485
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/BY;->A:I

    move/from16 v32, v0

    move/from16 v1, v33

    .line 486
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lo/BY;->F:I

    move/from16 v33, v1

    move/from16 v0, v34

    .line 487
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lo/BY;->H:I

    move/from16 v34, v0

    move/from16 v1, v35

    .line 488
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lo/BY;->G:I

    move/from16 v35, v1

    move/from16 v0, v36

    .line 489
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->E:Ljava/lang/String;

    move/from16 v36, v0

    move/from16 v1, v37

    .line 490
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->I:Ljava/lang/String;

    move/from16 v37, v1

    move/from16 v0, v38

    .line 491
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->K:Ljava/lang/String;

    move/from16 v38, v0

    move/from16 v1, v39

    .line 492
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->N:Ljava/lang/String;

    move/from16 v39, v1

    move/from16 v0, v40

    .line 493
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->L:Ljava/lang/String;

    move/from16 v40, v0

    move/from16 v1, v41

    .line 494
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->M:Ljava/lang/String;

    move/from16 v41, v1

    move/from16 v0, v42

    .line 495
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->J:Ljava/lang/String;

    move/from16 v42, v0

    move/from16 v1, v43

    .line 496
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->O:Ljava/lang/String;

    move/from16 v43, v1

    move/from16 v0, v44

    .line 497
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->R:Ljava/lang/String;

    move/from16 v44, v0

    move/from16 v1, v45

    .line 498
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->Q:Ljava/lang/String;

    move/from16 v45, v1

    move/from16 v0, v46

    .line 499
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->S:Ljava/lang/String;

    move/from16 v46, v0

    move/from16 v1, v47

    .line 500
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->P:Ljava/lang/String;

    move/from16 v47, v1

    move/from16 v0, v48

    .line 501
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->U:Ljava/lang/String;

    move/from16 v48, v0

    move/from16 v1, v49

    .line 502
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->V:Ljava/lang/String;

    move/from16 v49, v1

    move/from16 v0, v50

    .line 503
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->T:Ljava/lang/String;

    move/from16 v50, v0

    move/from16 v1, v51

    .line 504
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->W:Ljava/lang/String;

    move/from16 v51, v1

    move/from16 v0, v52

    .line 505
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->X:Ljava/lang/String;

    move/from16 v52, v0

    move/from16 v1, v53

    .line 506
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->ab:Ljava/lang/String;

    move/from16 v53, v1

    move/from16 v0, v54

    .line 507
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->aa:Ljava/lang/String;

    move/from16 v54, v0

    move/from16 v1, v55

    .line 508
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->Y:Ljava/lang/String;

    move/from16 v55, v1

    move/from16 v0, v56

    .line 509
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->Z:Ljava/lang/String;

    move/from16 v56, v0

    move/from16 v1, v57

    .line 510
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->ac:Ljava/lang/String;

    move/from16 v57, v1

    move/from16 v0, v58

    .line 511
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->ah:Ljava/lang/String;

    move/from16 v58, v0

    move/from16 v1, v59

    .line 512
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->ae:Ljava/lang/String;

    move/from16 v0, v60

    .line 514
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v60, v0

    if-eqz v59, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 515
    :goto_d
    iput-boolean v0, v2, Lo/BY;->ag:Z

    move/from16 v0, v61

    .line 517
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v61, v0

    if-eqz v59, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 518
    :goto_e
    iput-boolean v0, v2, Lo/BY;->af:Z

    move/from16 v0, v62

    .line 520
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v62, v0

    if-eqz v59, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 521
    :goto_f
    iput-boolean v0, v2, Lo/BY;->ad:Z

    move/from16 v0, v63

    .line 523
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v63, v0

    if-eqz v59, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 524
    :goto_10
    iput-boolean v0, v2, Lo/BY;->ai:Z

    move/from16 v0, v64

    .line 526
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v64, v0

    if-eqz v59, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 527
    :goto_11
    iput-boolean v0, v2, Lo/BY;->aj:Z

    move/from16 v0, v65

    .line 529
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v65, v0

    if-eqz v59, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 530
    :goto_12
    iput-boolean v0, v2, Lo/BY;->am:Z

    move/from16 v0, v66

    .line 532
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v66, v0

    if-eqz v59, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 533
    :goto_13
    iput-boolean v0, v2, Lo/BY;->al:Z

    move/from16 v0, v67

    .line 535
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v67, v0

    if-eqz v59, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 536
    :goto_14
    iput-boolean v0, v2, Lo/BY;->ak:Z

    move/from16 v0, v68

    .line 538
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v68, v0

    if-eqz v59, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 539
    :goto_15
    iput-boolean v0, v2, Lo/BY;->an:Z

    move/from16 v0, v69

    .line 541
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v69, v0

    if-eqz v59, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 542
    :goto_16
    iput-boolean v0, v2, Lo/BY;->aq:Z

    move/from16 v59, v1

    move/from16 v0, v70

    .line 543
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->ap:Ljava/lang/String;

    move/from16 v1, v71

    .line 545
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v70

    if-eqz v70, :cond_16

    move/from16 v70, v0

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move/from16 v70, v0

    const/4 v0, 0x0

    .line 546
    :goto_17
    iput-boolean v0, v2, Lo/BY;->ar:Z

    move/from16 v71, v1

    move/from16 v0, v72

    .line 547
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lo/BY;->ao:Ljava/lang/String;

    move/from16 v72, v0

    move/from16 v1, v73

    .line 548
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/BY;->at:Ljava/lang/String;

    move-object/from16 v0, v75

    .line 549
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v73, v1

    move-object v1, v0

    move/from16 v0, v74

    move/from16 v74, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v5

    move/from16 v5, v77

    move/from16 v78, v26

    move/from16 v26, v4

    move/from16 v4, v25

    move/from16 v25, v78

    goto/16 :goto_0

    :cond_17
    move-object v0, v1

    .line 553
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 554
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_18

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 553
    :goto_18
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 554
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 555
    throw v0
.end method
