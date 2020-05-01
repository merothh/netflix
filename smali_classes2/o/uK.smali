.class final Lo/uK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uK$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/uL$StateListAnimator;

.field final b:I

.field private final c:I

.field private final d:J

.field private final e:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private f:[Lo/uK$ActionBar;

.field private g:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final h:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final j:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private k:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private l:I

.field private m:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private n:Lo/tD;

.field private o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lo/uL;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILo/uL$StateListAnimator;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lo/tD;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lo/uK;->b:I

    .line 82
    iput-object p2, p0, Lo/uK;->k:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 83
    iput p3, p0, Lo/uK;->l:I

    .line 84
    iput-object p4, p0, Lo/uK;->a:Lo/uL$StateListAnimator;

    .line 85
    iput p5, p0, Lo/uK;->c:I

    .line 86
    iput-object p6, p0, Lo/uK;->e:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 87
    iput-wide p7, p0, Lo/uK;->d:J

    .line 88
    iput-object p9, p0, Lo/uK;->j:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 89
    iput-object p10, p0, Lo/uK;->h:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 90
    iput-object p11, p0, Lo/uK;->n:Lo/tD;

    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Lo/uK;->d(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p1

    iput-object p1, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 93
    invoke-direct {p0}, Lo/uK;->d()Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lo/uK;->m:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 94
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object p1, p0, Lo/uK;->p:Ljava/util/List;

    .line 95
    iget-object p1, p0, Lo/uK;->p:Ljava/util/List;

    invoke-static {p1}, Lo/uK;->e(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 96
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lo/uK;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 97
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lo/uK$ActionBar;

    iput-object p1, p0, Lo/uK;->f:[Lo/uK$ActionBar;

    return-void
.end method

.method private a(Lo/uK$ActionBar;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/uK$ActionBar;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v13, 0x2

    new-array v0, v13, [I

    .line 395
    iget-boolean v1, v12, Lo/uK$ActionBar;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 399
    :cond_0
    iget-boolean v3, v12, Lo/uK$ActionBar;->h:Z

    if-eqz v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x3

    .line 401
    aput v5, v0, v2

    move v2, v4

    .line 403
    :cond_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 404
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 406
    iget-object v14, v11, Lo/uK;->a:Lo/uL$StateListAnimator;

    iget-object v15, v11, Lo/uK;->j:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v0, v11, Lo/uK;->k:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v4, v11, Lo/uK;->l:I

    iget-object v5, v12, Lo/uK$ActionBar;->b:[I

    iget v6, v12, Lo/uK$ActionBar;->e:I

    iget-wide v7, v11, Lo/uK;->d:J

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, p2

    move/from16 v20, v6

    move-wide/from16 v21, v7

    move/from16 v23, v1

    move/from16 v24, v3

    invoke-virtual/range {v14 .. v24}, Lo/uL$StateListAnimator;->d(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;IJZZ)Lo/uL;

    move-result-object v14

    .line 410
    new-instance v15, Lo/uE;

    iget v1, v12, Lo/uK$ActionBar;->e:I

    iget-object v5, v11, Lo/uK;->h:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v8, v11, Lo/uK;->c:I

    iget-object v9, v11, Lo/uK;->e:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 412
    invoke-virtual {v14}, Lo/uL;->b()Lo/td;

    move-result-object v10

    move-object v0, v15

    move-object v3, v14

    move-object/from16 v4, p0

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v10}, Lo/uE;-><init>(I[ILcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lo/td;)V

    .line 413
    iget-object v0, v11, Lo/uK;->s:Lo/uL;

    if-nez v0, :cond_3

    iget v0, v12, Lo/uK$ActionBar;->e:I

    if-ne v0, v13, :cond_3

    .line 414
    iput-object v14, v11, Lo/uK;->s:Lo/uL;

    :cond_3
    return-object v15
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 420
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 421
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 422
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 1

    .line 468
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_0

    .line 469
    check-cast p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/List;[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 445
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 446
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    const/4 v4, 0x0

    .line 447
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 448
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 449
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v6, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static b(Ljava/util/List;)[[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 354
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 355
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 357
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_0
    new-array v3, v0, [[I

    .line 361
    new-array v4, v0, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    .line 365
    aget-boolean v7, v4, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    .line 369
    aput-boolean v7, v4, v5

    .line 371
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 370
    invoke-static {v8}, Lo/uK;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    new-array v7, v7, [I

    aput v5, v7, v2

    .line 373
    aput-object v7, v3, v6

    move v6, v8

    goto :goto_3

    .line 375
    :cond_2
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 376
    array-length v9, v8

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 377
    aput v5, v9, v2

    const/4 v10, 0x0

    .line 378
    :goto_2
    array-length v11, v8

    if-ge v10, v11, :cond_3

    .line 379
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 380
    aput-boolean v7, v4, v11

    add-int/lit8 v10, v10, 0x1

    .line 381
    aput v11, v9, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 383
    aput-object v9, v3, v6

    move v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v6, v0, :cond_5

    .line 388
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [[I

    :cond_5
    return-object v3
.end method

.method private c(J)J
    .locals 1

    .line 496
    iget-object v0, p0, Lo/uK;->s:Lo/uL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/uL;->c(J)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method private d()Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .locals 3

    .line 458
    new-instance v0, Lo/uQ;

    iget-object v1, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-object v2, p0, Lo/uK;->n:Lo/tD;

    invoke-direct {v0, v1, v2}, Lo/uQ;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;Lo/tD;)V

    return-object v0
.end method

.method private static d(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 431
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 432
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v4, 0x0

    .line 433
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 434
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 435
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static d(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 464
    new-array p0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method private static e(Ljava/util/List;)Landroid/util/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lo/uK$ActionBar;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 294
    invoke-static/range {p0 .. p0}, Lo/uK;->b(Ljava/util/List;)[[I

    move-result-object v1

    .line 296
    array-length v2, v1

    .line 297
    new-array v3, v2, [Z

    .line 298
    new-array v4, v2, [Z

    const/4 v5, 0x0

    move v7, v2

    const/4 v6, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v2, :cond_2

    .line 301
    aget-object v9, v1, v6

    invoke-static {v0, v9}, Lo/uK;->d(Ljava/util/List;[I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 302
    aput-boolean v8, v3, v6

    add-int/lit8 v7, v7, 0x1

    .line 305
    :cond_0
    aget-object v9, v1, v6

    invoke-static {v0, v9}, Lo/uK;->b(Ljava/util/List;[I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 306
    aput-boolean v8, v4, v6

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    :cond_2
    new-array v6, v7, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 312
    new-array v7, v7, [Lo/uK$ActionBar;

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_1
    if-ge v9, v2, :cond_7

    .line 316
    aget-object v15, v1, v9

    .line 317
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 318
    array-length v11, v15

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_3

    aget v13, v15, v12

    .line 319
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v13, v13, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 321
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/exoplayer2/Format;

    const/4 v12, 0x0

    .line 322
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_4

    .line 323
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v13, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 326
    :cond_4
    aget v10, v15, v5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 328
    aget-boolean v18, v3, v9

    .line 329
    aget-boolean v19, v4, v9

    .line 331
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v10, v6, v17

    add-int/lit8 v20, v17, 0x1

    .line 332
    new-instance v21, Lo/uK$ActionBar;

    iget v11, v14, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/16 v16, 0x1

    move-object/from16 v10, v21

    move-object v12, v15

    move/from16 v13, v17

    move-object v5, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v10 .. v16}, Lo/uK$ActionBar;-><init>(I[IIZZZ)V

    aput-object v21, v7, v17

    const/4 v15, 0x0

    if-eqz v18, :cond_5

    .line 335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":emsg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const-string v12, "application/x-emsg"

    invoke-static {v10, v12, v15, v11, v15}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 337
    new-instance v11, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v12, v8, [Lcom/google/android/exoplayer2/Format;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v11, v6, v20

    add-int/lit8 v18, v20, 0x1

    .line 338
    new-instance v21, Lo/uK$ActionBar;

    const/4 v11, 0x4

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move/from16 v13, v17

    move-object v8, v15

    move/from16 v15, v16

    move/from16 v16, v23

    invoke-direct/range {v10 .. v16}, Lo/uK$ActionBar;-><init>(I[IIZZZ)V

    aput-object v21, v7, v20

    goto :goto_4

    :cond_5
    move-object v8, v15

    move/from16 v18, v20

    :goto_4
    if-eqz v19, :cond_6

    .line 342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":cea608"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "application/cea-608"

    const/4 v15, 0x0

    invoke-static {v5, v10, v15, v8}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 344
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v14, 0x1

    new-array v10, v14, [Lcom/google/android/exoplayer2/Format;

    aput-object v5, v10, v15

    invoke-direct {v8, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v6, v18

    add-int/lit8 v5, v18, 0x1

    .line 345
    new-instance v8, Lo/uK$ActionBar;

    const/4 v11, 0x3

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v10, v8

    move-object/from16 v12, v22

    move/from16 v13, v17

    const/16 v17, 0x1

    move/from16 v14, v16

    const/16 v21, 0x0

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v10 .. v16}, Lo/uK$ActionBar;-><init>(I[IIZZZ)V

    aput-object v8, v7, v18

    move/from16 v18, v5

    goto :goto_5

    :cond_6
    const/16 v17, 0x1

    const/16 v21, 0x0

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v18

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 350
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 137
    iget-object v0, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 138
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 9

    .line 101
    iput-object p1, p0, Lo/uK;->k:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 102
    iput p2, p0, Lo/uK;->l:I

    .line 103
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object v0, p0, Lo/uK;->p:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lo/uK;->p:Ljava/util/List;

    invoke-static {v0}, Lo/uK;->e(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 108
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 109
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v2, v2, [Lo/uK$ActionBar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 110
    :goto_0
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v6, v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v6, :cond_1

    .line 111
    iget-object v6, p0, Lo/uK;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 112
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 115
    aput-object v7, v1, v4

    .line 116
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Lo/uK$ActionBar;

    aget-object v5, v5, v4

    aput-object v5, v2, v4

    const/4 v5, 0x1

    goto :goto_1

    .line 118
    :cond_0
    aput-object v6, v1, v4

    .line 119
    iget-object v6, p0, Lo/uK;->f:[Lo/uK$ActionBar;

    aget-object v6, v6, v4

    aput-object v6, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 123
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v2, p0, Lo/uK;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 124
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lo/uK$ActionBar;

    iput-object v0, p0, Lo/uK;->f:[Lo/uK$ActionBar;

    .line 128
    :cond_2
    iget-object v0, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v0, :cond_4

    .line 129
    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    .line 130
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 132
    :cond_3
    iget-object p1, p0, Lo/uK;->g:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_4
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget-object p1, p0, Lo/uK;->g:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public continueLoading(J)Z
    .locals 1

    .line 250
    iget-object v0, p0, Lo/uK;->m:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 7

    .line 230
    iget-object v0, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 231
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getPrimaryTrackType()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 232
    invoke-virtual {v5, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardBuffer(JZ)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getPrimaryTrackType()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 243
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardBuffer(JZ)J

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getAdjustedSeekPositionUs(J)J
    .locals 0

    .line 255
    invoke-direct {p0, p1, p2}, Lo/uK;->c(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 270
    iget-object v0, p0, Lo/uK;->m:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 260
    iget-object v0, p0, Lo/uK;->m:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/uK;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    .line 150
    iget-object v0, p0, Lo/uK;->j:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lo/uK;->c(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/uK;->g:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 145
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public seekToUs(J)J
    .locals 7

    .line 275
    invoke-direct {p0, p1, p2}, Lo/uK;->c(J)J

    move-result-wide v0

    .line 276
    iget-object v2, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 277
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float p1, p1

    const p2, 0x49742400    # 1000000.0f

    div-float/2addr p1, p2

    .line 279
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v4

    long-to-float p1, v0

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "seekToUs %f -> %f"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 9

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 163
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    .line 164
    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v3, :cond_2

    .line 166
    aget-object v3, p3, v2

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 167
    aget-object v6, p1, v2

    if-eqz v6, :cond_1

    aget-boolean v6, p2, v2

    if-nez v6, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    iget-object v4, p0, Lo/uK;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, p1, v2

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 168
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 169
    aput-object v4, p3, v2

    .line 175
    :cond_2
    :goto_2
    aget-object v3, p3, v2

    if-nez v3, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lo/uK;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 177
    iget-object v4, p0, Lo/uK;->f:[Lo/uK$ActionBar;

    aget-object v4, v4, v3

    .line 178
    iget-boolean v6, v4, Lo/uK$ActionBar;->a:Z

    if-eqz v6, :cond_3

    .line 179
    aget-object v6, p1, v2

    invoke-direct {p0, v4, v6, p5, p6}, Lo/uK;->a(Lo/uK$ActionBar;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v4

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    aput-object v4, p3, v2

    .line 183
    aput-boolean v5, p4, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 188
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_c

    .line 189
    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v3, :cond_5

    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    if-eqz v3, :cond_7

    :cond_5
    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    aget-boolean v3, p2, v2

    if-nez v3, :cond_7

    .line 192
    :cond_6
    aget-object v3, p3, v2

    invoke-static {v3}, Lo/uK;->a(Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 193
    aput-object v4, p3, v2

    .line 197
    :cond_7
    aget-object v3, p1, v2

    if-eqz v3, :cond_b

    .line 198
    iget-object v3, p0, Lo/uK;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, p1, v2

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 199
    iget-object v6, p0, Lo/uK;->f:[Lo/uK$ActionBar;

    aget-object v3, v6, v3

    .line 200
    iget-boolean v6, v3, Lo/uK$ActionBar;->a:Z

    if-nez v6, :cond_b

    .line 201
    iget v6, v3, Lo/uK$ActionBar;->c:I

    .line 202
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 201
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 203
    aget-object v7, p3, v2

    if-nez v6, :cond_8

    .line 204
    instance-of v8, v7, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    goto :goto_4

    :cond_8
    instance-of v8, v7, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v8, :cond_9

    move-object v8, v7

    check-cast v8, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v8, v6, :cond_9

    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_b

    .line 208
    invoke-static {v7}, Lo/uK;->a(Lcom/google/android/exoplayer2/source/SampleStream;)V

    if-nez v6, :cond_a

    .line 209
    new-instance v3, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    goto :goto_5

    :cond_a
    iget v3, v3, Lo/uK$ActionBar;->e:I

    .line 210
    invoke-virtual {v6, p5, p6, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v3

    :goto_5
    aput-object v3, p3, v2

    .line 211
    aput-boolean v5, p4, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 216
    :cond_c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-static {p1}, Lo/uK;->d(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p1

    iput-object p1, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 217
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lo/uK;->o:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Lo/uK;->d()Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lo/uK;->m:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method
