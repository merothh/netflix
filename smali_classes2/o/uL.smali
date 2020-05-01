.class public Lo/uL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uL$TaskDescription;,
        Lo/uL$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final b:I

.field protected final c:[Lo/uL$TaskDescription;

.field private final d:[I

.field private final e:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private f:I

.field private final g:J

.field private h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private i:J

.field private final j:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private k:Z

.field private l:Ljava/io/IOException;

.field private final m:Lo/tD;

.field private final n:Lo/tK;

.field private o:I

.field private final r:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

.field private final s:Lo/tX;

.field private final t:Lo/td;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;ILcom/google/android/exoplayer2/upstream/DataSource;JLo/tK;Lo/tD;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/tX;ZZLo/td;)V
    .locals 9

    move-object v0, p0

    move-object v1, p5

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 114
    iput-wide v2, v0, Lo/uL;->i:J

    move-object v2, p1

    .line 158
    iput-object v2, v0, Lo/uL;->e:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object v2, p2

    .line 159
    iput-object v2, v0, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object v3, p4

    .line 160
    iput-object v3, v0, Lo/uL;->d:[I

    .line 161
    iput-object v1, v0, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move v3, p6

    .line 162
    iput v3, v0, Lo/uL;->b:I

    move-object/from16 v3, p7

    .line 163
    iput-object v3, v0, Lo/uL;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    move v3, p3

    .line 164
    iput v3, v0, Lo/uL;->o:I

    move-wide/from16 v4, p8

    .line 165
    iput-wide v4, v0, Lo/uL;->g:J

    move-object/from16 v4, p11

    .line 166
    iput-object v4, v0, Lo/uL;->m:Lo/tD;

    move-object/from16 v4, p12

    .line 167
    iput-object v4, v0, Lo/uL;->r:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    move-object/from16 v4, p13

    .line 168
    iput-object v4, v0, Lo/uL;->s:Lo/tX;

    const/4 v4, 0x0

    .line 169
    iput v4, v0, Lo/uL;->f:I

    move-object/from16 v5, p16

    .line 170
    iput-object v5, v0, Lo/uL;->t:Lo/td;

    move-object/from16 v5, p10

    .line 171
    iput-object v5, v0, Lo/uL;->n:Lo/tK;

    .line 172
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v2

    .line 173
    invoke-direct {p0}, Lo/uL;->c()Ljava/util/ArrayList;

    move-result-object v5

    .line 174
    invoke-interface {p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v6

    new-array v6, v6, [Lo/uL$TaskDescription;

    iput-object v6, v0, Lo/uL;->c:[Lo/uL$TaskDescription;

    .line 175
    :goto_0
    iget-object v6, v0, Lo/uL;->c:[Lo/uL$TaskDescription;

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 176
    invoke-interface {p5, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 177
    iget-object v7, v0, Lo/uL;->c:[Lo/uL$TaskDescription;

    new-instance v8, Lo/uL$TaskDescription;

    move-object p6, v8

    move-wide/from16 p7, v2

    move-object/from16 p9, v6

    move/from16 p10, p14

    move/from16 p11, p15

    invoke-direct/range {p6 .. p11}, Lo/uL$TaskDescription;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZ)V

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lo/uL$TaskDescription;Lcom/google/android/exoplayer2/trackselection/TrackSelection;IIJ)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v12, p3

    const-string v2, "e"

    .line 406
    iget-object v3, v0, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 407
    invoke-interface/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    .line 408
    invoke-interface/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v6

    .line 409
    invoke-interface/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    .line 410
    invoke-virtual {v0, v12}, Lo/uL$TaskDescription;->c(I)J

    move-result-wide v8

    .line 411
    invoke-virtual {v0, v12}, Lo/uL$TaskDescription;->b(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v4

    .line 412
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 413
    iget-object v10, v0, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v10, :cond_0

    .line 414
    invoke-virtual {v0, v12}, Lo/uL$TaskDescription;->a(I)J

    move-result-wide v10

    .line 415
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    iget-wide v12, v4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 416
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v21

    move-object v15, v0

    move-wide/from16 v17, v12

    move-wide/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 417
    new-instance v15, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    iget-object v3, v1, Lo/uL;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v13, v1, Lo/uL;->b:I

    move-object v2, v15

    move-object v4, v0

    move-object v5, v14

    move/from16 v12, p3

    invoke-direct/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIILcom/google/android/exoplayer2/Format;)V

    return-object v15

    :cond_0
    const/16 v10, 0x2711

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v6, v10, :cond_2

    :cond_1
    move/from16 v13, p3

    move v15, v6

    move-object/from16 p2, v7

    const/4 v10, 0x1

    goto :goto_0

    .line 426
    :cond_2
    iget v10, v1, Lo/uL;->b:I

    if-eq v10, v12, :cond_3

    if-ne v10, v11, :cond_1

    :cond_3
    move/from16 v13, p3

    sub-int v10, p4, v13

    add-int/2addr v10, v12

    move v15, v6

    move-object/from16 p2, v7

    .line 434
    :goto_0
    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 435
    invoke-virtual {v0, v13}, Lo/uL$TaskDescription;->a(I)J

    move-result-wide v16

    if-le v10, v12, :cond_b

    .line 439
    iget v10, v1, Lo/uL;->b:I

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 440
    :goto_1
    iget-object v12, v1, Lo/uL;->n:Lo/tK;

    invoke-static {v12}, Lo/tI;->c(Lo/tK;)Z

    move-result v12

    if-eqz v10, :cond_6

    .line 442
    iget-object v10, v1, Lo/uL;->m:Lo/tD;

    if-eqz v12, :cond_5

    iget-object v10, v10, Lo/tD;->g:Lo/vd;

    goto :goto_2

    :cond_5
    iget-object v10, v10, Lo/tD;->i:Lo/vd;

    goto :goto_2

    .line 444
    :cond_6
    iget-object v10, v1, Lo/uL;->m:Lo/tD;

    if-eqz v12, :cond_7

    iget-object v10, v10, Lo/tD;->f:Lo/vd;

    goto :goto_2

    :cond_7
    iget-object v10, v10, Lo/tD;->h:Lo/vd;

    :goto_2
    :try_start_0
    new-array v12, v11, [Ljava/lang/Object;

    .line 446
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v18, 0x1

    aput-object v19, v12, v18

    const/4 v11, 0x0

    aput-object v10, v12, v11

    move-wide/from16 v20, v6

    const/16 v6, 0x80

    const/4 v7, 0x4

    invoke-static {v11, v6, v7}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v6, v22

    check-cast v6, Ljava/lang/Class;

    const-string v7, "a"

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Class;

    const-class v11, Lo/vd;

    const/16 v23, 0x0

    aput-object v11, v13, v23

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x1

    aput-object v11, v13, v18

    invoke-virtual {v6, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    iget-object v6, v1, Lo/uL;->s:Lo/tX;

    iget-object v13, v14, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-wide/16 v23, 0x3e8

    add-long v25, v8, v23

    sub-long v27, v11, v23

    move-object/from16 v23, v6

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v28}, Lo/tX;->c(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 448
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 449
    iget-object v11, v1, Lo/uL;->r:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    invoke-virtual {v11}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->e()I

    move-result v11

    .line 450
    iget-object v12, v1, Lo/uL;->r:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v12

    long-to-int v13, v12

    div-int/lit16 v13, v13, 0x3e8

    const/4 v12, 0x6

    :try_start_1
    new-array v7, v12, [Ljava/lang/Object;

    .line 451
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v7, v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x4

    aput-object v13, v7, v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v7, v13

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v19, 0x2

    aput-object v16, v7, v19

    const/16 v16, 0x1

    aput-object v6, v7, v16

    aput-object v10, v7, v11

    const/16 v6, 0x80

    const/4 v10, 0x4

    invoke-static {v11, v6, v10}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    new-array v10, v12, [Ljava/lang/Class;

    const-class v12, Lo/vd;

    aput-object v12, v10, v11

    const-class v11, Ljava/util/List;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v13

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x4

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v17

    invoke-virtual {v6, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v7, 0x14

    const/16 v10, 0x84

    const v11, 0xc53a

    .line 452
    invoke-static {v11, v10, v7}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/tF;

    .line 454
    invoke-static {v11, v10, v7}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    const-string v10, "b"

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 455
    invoke-virtual {v2}, Lo/tF;->h()J

    move-result-wide v10

    .line 456
    invoke-virtual {v2}, Lo/tF;->g()J

    move-result-wide v12

    move-wide/from16 v20, v12

    move v13, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_8

    throw v2

    :cond_8
    throw v0

    :cond_9
    const/4 v12, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_a

    throw v2

    :cond_a
    throw v0

    :cond_b
    move-wide/from16 v20, v6

    :goto_3
    move-wide/from16 v10, v16

    const/4 v13, 0x1

    .line 459
    :goto_4
    new-instance v6, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 460
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v6

    move-wide/from16 v18, v4

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 461
    iget-wide v2, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v4, v2

    .line 462
    new-instance v17, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    iget-object v3, v1, Lo/uL;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, v0, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v2, v17

    move-wide/from16 v18, v4

    move-object v4, v6

    move-object v5, v14

    move v6, v15

    move-object/from16 v7, p2

    move/from16 v12, p3

    move-wide/from16 v14, v18

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v17
.end method

.method private static b(Lo/uL$TaskDescription;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 8

    .line 387
    iget-object v0, p0, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 391
    invoke-virtual {p5, p6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p6

    if-nez p6, :cond_0

    move-object p6, p5

    .line 398
    :cond_0
    new-instance p5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {p6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, p6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v5, p6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-object p6, p0, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 399
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    move-object v1, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 400
    new-instance p6, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v7, p0, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object p6
.end method

.method private c()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lo/uL;->o:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-object v2, p0, Lo/uL;->d:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 370
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private e()J
    .locals 7

    .line 376
    iget-wide v0, p0, Lo/uL;->g:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lo/uL;->g:J

    add-long/2addr v0, v4

    :goto_0
    mul-long v0, v0, v2

    return-wide v0

    .line 379
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public b()Lo/td;
    .locals 1

    .line 605
    iget-object v0, p0, Lo/uL;->t:Lo/td;

    return-object v0
.end method

.method public c(J)J
    .locals 6

    .line 612
    iget-object v0, p0, Lo/uL;->c:[Lo/uL$TaskDescription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 613
    iget-object v4, v3, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    const-string v5, "video/mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-eqz v4, :cond_0

    .line 614
    invoke-virtual {v3, p1, p2}, Lo/uL$TaskDescription;->b(J)I

    move-result p1

    .line 616
    invoke-virtual {v3, p1}, Lo/uL$TaskDescription;->c(I)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v8, p4

    .line 217
    iget-object v3, v7, Lo/uL;->l:Ljava/io/IOException;

    if-eqz v3, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v3, v7, Lo/uL;->t:Lo/td;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lo/td;->a()J

    move-result-wide v9

    goto :goto_0

    :cond_1
    move-wide v9, v4

    :goto_0
    if-eqz v0, :cond_2

    .line 222
    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long/2addr v11, v1

    goto :goto_1

    :cond_2
    move-wide v11, v4

    :goto_1
    cmp-long v3, v9, v4

    if-ltz v3, :cond_3

    move-wide v5, v9

    goto :goto_2

    :cond_3
    move-wide v5, v11

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_4

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    .line 234
    :cond_4
    iget-object v9, v7, Lo/uL;->m:Lo/tD;

    iget v9, v9, Lo/tD;->a:I

    if-gez v9, :cond_5

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    cmp-long v11, v1, v9

    if-lez v11, :cond_6

    goto :goto_3

    :cond_5
    iget-object v9, v7, Lo/uL;->m:Lo/tD;

    iget v9, v9, Lo/tD;->a:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v11, v5, v9

    if-gtz v11, :cond_6

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_7

    .line 236
    iget v10, v7, Lo/uL;->f:I

    if-lez v10, :cond_7

    const-string v10, "NetflixDashChunkSource"

    const-string v11, "resetting chunk load counter due to buffer remaining"

    .line 241
    invoke-static {v10, v11}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput v3, v7, Lo/uL;->f:I

    :cond_7
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v9, :cond_8

    .line 244
    iget-wide v12, v7, Lo/uL;->i:J

    cmp-long v14, v12, v10

    if-eqz v14, :cond_8

    .line 245
    iput-wide v10, v7, Lo/uL;->i:J

    goto :goto_5

    :cond_8
    if-eqz v9, :cond_9

    .line 246
    iget-wide v12, v7, Lo/uL;->i:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_9

    .line 247
    sget-object v9, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v9}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v7, Lo/uL;->i:J

    .line 250
    :cond_9
    :goto_5
    iget-object v9, v7, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v9, v5, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 252
    iget-object v9, v7, Lo/uL;->c:[Lo/uL$TaskDescription;

    iget-object v10, v7, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 253
    invoke-interface {v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v10

    aget-object v11, v9, v10

    .line 255
    iget-object v9, v11, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-eqz v9, :cond_d

    .line 256
    iget-object v9, v11, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 259
    iget-object v10, v11, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    const/4 v12, 0x0

    if-nez v10, :cond_a

    .line 260
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v10

    move-object/from16 v16, v10

    goto :goto_6

    :cond_a
    move-object/from16 v16, v12

    .line 262
    :goto_6
    iget-object v10, v11, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v10, :cond_b

    .line 263
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v9

    move-object/from16 v17, v9

    goto :goto_7

    :cond_b
    move-object/from16 v17, v12

    :goto_7
    if-nez v16, :cond_c

    if-eqz v17, :cond_d

    .line 267
    :cond_c
    iget-object v12, v7, Lo/uL;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, v7, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 268
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    iget-object v0, v7, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v14

    iget-object v0, v7, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 269
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v15

    .line 267
    invoke-static/range {v11 .. v17}, Lo/uL;->b(Lo/uL$TaskDescription;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 274
    :cond_d
    invoke-direct/range {p0 .. p0}, Lo/uL;->e()J

    .line 275
    invoke-virtual {v11}, Lo/uL$TaskDescription;->c()I

    move-result v9

    if-nez v9, :cond_10

    .line 278
    iget-object v0, v7, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_e

    iget v0, v7, Lo/uL;->o:I

    iget-object v1, v7, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_f

    :cond_e
    const/4 v3, 0x1

    :cond_f
    iput-boolean v3, v8, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    return-void

    .line 282
    :cond_10
    invoke-virtual {v11}, Lo/uL$TaskDescription;->e()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v4

    if-nez v0, :cond_11

    .line 287
    invoke-virtual {v11, v1, v2}, Lo/uL$TaskDescription;->b(J)I

    move-result v0

    invoke-static {v0, v10, v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    goto :goto_8

    .line 290
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v0

    if-ge v0, v10, :cond_12

    .line 293
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v7, Lo/uL;->l:Ljava/io/IOException;

    return-void

    :cond_12
    :goto_8
    move v10, v0

    if-gt v10, v9, :cond_14

    .line 298
    iget-boolean v0, v7, Lo/uL;->k:Z

    if-eqz v0, :cond_13

    if-lt v10, v9, :cond_13

    goto :goto_9

    .line 306
    :cond_13
    iget-object v2, v7, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v10

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lo/uL;->a(Lo/uL$TaskDescription;Lcom/google/android/exoplayer2/trackselection/TrackSelection;IIJ)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    :cond_14
    :goto_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 301
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, v7, Lo/uL;->b:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->getTrackType(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "(0x%x) %s ChunkSource EOS."

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v0, v7, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_15

    iget v0, v7, Lo/uL;->o:I

    iget-object v1, v7, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_16

    :cond_15
    const/4 v3, 0x1

    :cond_16
    iput-boolean v3, v8, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    return-void
.end method

.method public maybeThrowError()V
    .locals 1

    .line 200
    iget-object v0, p0, Lo/uL;->l:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lo/uL;->e:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void

    .line 201
    :cond_0
    throw v0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 2

    .line 311
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v0, :cond_0

    .line 312
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    .line 313
    iget-object v0, p0, Lo/uL;->c:[Lo/uL$TaskDescription;

    iget-object v1, p0, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 314
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    aget-object p1, v0, p1

    .line 318
    iget-object v0, p1, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p1, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V

    iput-object v1, p1, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    :cond_0
    const/4 p1, 0x0

    .line 326
    iput p1, p0, Lo/uL;->f:I

    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 6

    .line 350
    iget p1, p0, Lo/uL;->f:I

    const/4 p3, 0x1

    add-int/2addr p1, p3

    iput p1, p0, Lo/uL;->f:I

    .line 351
    iget-object p1, p0, Lo/uL;->m:Lo/tD;

    iget p1, p1, Lo/tD;->c:I

    .line 352
    iget-wide v0, p0, Lo/uL;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/uL;->i:J

    sub-long/2addr v0, v2

    .line 353
    :goto_0
    iget v2, p0, Lo/uL;->f:I

    iget-object v3, p0, Lo/uL;->m:Lo/tD;

    iget v3, v3, Lo/tD;->d:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lo/uL;->m:Lo/tD;

    iget v2, v2, Lo/tD;->b:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 359
    iget v3, p0, Lo/uL;->f:I

    rem-int/2addr v3, p1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 360
    iget v5, p0, Lo/uL;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, p3

    const/4 p3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p3

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "NetflixDashChunkSource"

    const-string p2, "error counter = %s, time since empty buffer = %s, max retries = %s, cancelable = %s, cancel = %s"

    invoke-static {p1, p2, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 4

    .line 185
    :try_start_0
    iput-object p1, p0, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 186
    iput p2, p0, Lo/uL;->o:I

    .line 187
    iget-object p1, p0, Lo/uL;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget p2, p0, Lo/uL;->o:I

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide p1

    .line 188
    invoke-direct {p0}, Lo/uL;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    :goto_0
    iget-object v2, p0, Lo/uL;->c:[Lo/uL$TaskDescription;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 190
    iget-object v2, p0, Lo/uL;->a:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 191
    iget-object v3, p0, Lo/uL;->c:[Lo/uL$TaskDescription;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2, v2}, Lo/uL$TaskDescription;->a(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    iput-object p1, p0, Lo/uL;->l:Ljava/io/IOException;

    :cond_0
    return-void
.end method
