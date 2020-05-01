.class public Lo/tT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tT$Activity;,
        Lo/tT$Application;,
        Lo/tT$TaskDescription;
    }
.end annotation


# static fields
.field private static final e:J


# instance fields
.field private final B:Lcom/google/android/exoplayer2/Player$EventListener;

.field private final a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

.field private final b:[B

.field private final c:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/tT$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lo/tK;

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final i:Lo/tX;

.field private final j:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

.field private final k:Lo/tD;

.field private final l:I

.field private final m:Lo/vp;

.field private final n:Lo/vh;

.field private final o:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final p:Lo/tf;

.field private q:Z

.field private r:Z

.field private final s:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

.field private t:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private final u:Landroid/os/Handler$Callback;

.field private final v:Lcom/google/android/exoplayer2/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "Lo/uf;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lo/tJ$ActionBar;

.field private final x:Lo/ug$ActionBar;

.field private y:Lcom/google/android/exoplayer2/PlayerMessage;

.field private final z:Lcom/google/android/exoplayer2/PlayerMessage$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lo/tT;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tX;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lo/tK;Lo/vh;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/vp;Lo/tf;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;-><init>()V

    iput-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/tT;->d:Ljava/util/List;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "playlist_prefetch"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/tT;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    const/16 v0, 0x3e80

    new-array v0, v0, [B

    .line 98
    iput-object v0, p0, Lo/tT;->b:[B

    .line 669
    new-instance v0, Lo/tT$2;

    invoke-direct {v0, p0}, Lo/tT$2;-><init>(Lo/tT;)V

    iput-object v0, p0, Lo/tT;->u:Landroid/os/Handler$Callback;

    .line 720
    new-instance v0, Lo/tT$3;

    invoke-direct {v0, p0}, Lo/tT$3;-><init>(Lo/tT;)V

    iput-object v0, p0, Lo/tT;->w:Lo/tJ$ActionBar;

    .line 732
    new-instance v0, Lo/tT$1;

    invoke-direct {v0, p0}, Lo/tT$1;-><init>(Lo/tT;)V

    iput-object v0, p0, Lo/tT;->x:Lo/ug$ActionBar;

    .line 739
    new-instance v0, Lo/tT$5;

    invoke-direct {v0, p0}, Lo/tT$5;-><init>(Lo/tT;)V

    iput-object v0, p0, Lo/tT;->v:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 760
    new-instance v0, Lo/tT$4;

    invoke-direct {v0, p0}, Lo/tT$4;-><init>(Lo/tT;)V

    iput-object v0, p0, Lo/tT;->B:Lcom/google/android/exoplayer2/Player$EventListener;

    .line 798
    new-instance v0, Lo/tT$6;

    invoke-direct {v0, p0}, Lo/tT$6;-><init>(Lo/tT;)V

    iput-object v0, p0, Lo/tT;->z:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 159
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lo/tT;->u:Landroid/os/Handler$Callback;

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/tT;->g:Landroid/os/Handler;

    .line 160
    iput-object p2, p0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 161
    iput-object p4, p0, Lo/tT;->i:Lo/tX;

    .line 162
    iput-object p7, p0, Lo/tT;->n:Lo/vh;

    .line 163
    invoke-virtual {p7}, Lo/vh;->by()Lo/tD;

    move-result-object p1

    iput-object p1, p0, Lo/tT;->k:Lo/tD;

    .line 164
    invoke-interface {p6}, Lo/tK;->b()I

    move-result p1

    iput p1, p0, Lo/tT;->l:I

    .line 165
    invoke-interface {p5}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lo/tT;->o:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 166
    iput-object p3, p0, Lo/tT;->j:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    .line 167
    iput-object p6, p0, Lo/tT;->f:Lo/tK;

    .line 168
    iput-object p8, p0, Lo/tT;->s:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    .line 169
    iput-object p9, p0, Lo/tT;->m:Lo/vp;

    .line 170
    iput-object p10, p0, Lo/tT;->p:Lo/tf;

    .line 172
    iget-object p1, p0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object p2, p0, Lo/tT;->B:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    .line 468
    iput-object p1, p0, Lo/tT;->t:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 469
    iget-object p1, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v0, 0x1003

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Lo/tT$Activity;Lo/ug;)V
    .locals 2

    .line 464
    iget-object v0, p0, Lo/tT;->g:Landroid/os/Handler;

    new-instance v1, Lo/tQ;

    invoke-direct {v1, p1, p2}, Lo/tQ;-><init>(Lo/tT$Activity;Lo/ug;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lo/tT;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/tT;->c()V

    return-void
.end method

.method static synthetic a(Lo/tT;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->c(Z)V

    return-void
.end method

.method private a(Lo/ug;)V
    .locals 6

    .line 269
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    iget-object v1, p1, Lo/ug;->i:Lo/Bj;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->a(Lo/Bj;)Lo/ug;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "nf_branch_cache"

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 271
    iget-object v5, p1, Lo/ug;->i:Lo/Bj;

    aput-object v5, v4, v1

    iget v1, v0, Lo/ug;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    iget v2, p1, Lo/ug;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "attempted to add duplicate segment %s - updating weight %s -> %s"

    invoke-static {v3, v1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    iget v1, p1, Lo/ug;->m:I

    iput v1, v0, Lo/ug;->m:I

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "adding segment %s"

    .line 274
    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c(Lo/ug;)Z

    .line 278
    :goto_0
    iget-object v0, p0, Lo/tT;->p:Lo/tf;

    iget-wide v1, p1, Lo/ug;->b:J

    invoke-virtual {v0, v1, v2}, Lo/tf;->b(J)Lo/uC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p1, v0}, Lo/ug;->c(Lo/uC;)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object v0, p0, Lo/tT;->p:Lo/tf;

    iget-wide v1, p1, Lo/ug;->b:J

    new-instance v3, Lo/tT$Application;

    invoke-direct {v3, p0, p1}, Lo/tT$Application;-><init>(Lo/tT;Lo/ug;)V

    invoke-virtual {v0, v1, v2, v3}, Lo/tf;->b(JLo/uI$TaskDescription;)V

    .line 287
    :goto_1
    iget-object p1, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v0, 0x1003

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private b(Lo/ug;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;ILjava/util/List;)Lo/uf;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ug;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            "I",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;)",
            "Lo/uf;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const/4 v3, 0x0

    .line 546
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/tF;

    .line 547
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/tF;

    .line 549
    new-instance v12, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 550
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 551
    invoke-virtual {v3}, Lo/tF;->c()J

    move-result-wide v6

    .line 552
    invoke-virtual {v2}, Lo/tF;->f()J

    move-result-wide v8

    invoke-virtual {v3}, Lo/tF;->c()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 553
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x80000

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 556
    new-instance v18, Lo/uf;

    iget-object v6, v0, Lo/tT;->b:[B

    iget-object v8, v0, Lo/tT;->o:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 565
    invoke-virtual {v3}, Lo/tF;->e()J

    move-result-wide v13

    .line 566
    invoke-virtual {v2}, Lo/tF;->h()J

    move-result-wide v15

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, v18

    move-object/from16 v5, p1

    move/from16 v7, p3

    move-object v9, v12

    move-object v12, v1

    invoke-direct/range {v4 .. v17}, Lo/uf;-><init>(Lo/ug;[BILcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    return-object v18
.end method

.method private b(Lo/tT$Activity;)V
    .locals 6

    .line 301
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    iget-object v1, p1, Lo/tT$Activity;->d:Lo/Bj;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->a(Lo/Bj;)Lo/ug;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "nf_branch_cache"

    const-string v0, "not adding listener - segment is not in prefetch list"

    .line 303
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    invoke-virtual {v0}, Lo/ug;->g()J

    move-result-wide v1

    iget-wide v3, p1, Lo/tT$Activity;->c:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 308
    invoke-direct {p0, p1, v0}, Lo/tT;->a(Lo/tT$Activity;Lo/ug;)V

    .line 310
    :cond_1
    iget-object v0, p0, Lo/tT;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lo/tT;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/tT;->d()V

    return-void
.end method

.method static synthetic b(Lo/tT;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method static synthetic b(Lo/tT;Lo/tT$Activity;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->b(Lo/tT$Activity;)V

    return-void
.end method

.method static synthetic b(Lo/tT;Lo/ug;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->c(Lo/ug;)V

    return-void
.end method

.method private b(Lo/uf;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 428
    iget-object v10, v1, Lo/uf;->c:Lo/ug;

    .line 429
    invoke-virtual {v10, v1}, Lo/ug;->e(Lo/uf;)V

    .line 431
    invoke-virtual {v10}, Lo/ug;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    iget-object v1, v10, Lo/ug;->i:Lo/Bj;

    iget-object v11, v1, Lo/Bj;->b:[Lo/Bo;

    array-length v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_3

    aget-object v1, v11, v14

    .line 434
    iget-object v2, v10, Lo/ug;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    iget-object v3, v1, Lo/Bo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v2

    const/4 v15, 0x2

    const-string v8, "nf_branch_cache"

    const/16 v16, 0x1

    if-nez v2, :cond_0

    new-array v2, v15, [Ljava/lang/Object;

    .line 436
    iget-object v3, v10, Lo/ug;->d:Ljava/lang/String;

    aput-object v3, v2, v13

    iget-object v1, v1, Lo/Bo;->a:Ljava/lang/String;

    aput-object v1, v2, v16

    const-string v1, "could not find next segment of %s (%s) in playgraph"

    invoke-static {v8, v1, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    goto :goto_3

    .line 439
    :cond_0
    iget-wide v3, v10, Lo/ug;->b:J

    .line 440
    instance-of v5, v2, Lo/Bl;

    if-eqz v5, :cond_1

    .line 441
    check-cast v2, Lo/Bl;

    iget-wide v2, v2, Lo/Bl;->g:J

    move-wide v5, v2

    goto :goto_1

    :cond_1
    move-wide v5, v3

    .line 443
    :goto_1
    new-instance v9, Lo/ug;

    iget-object v2, v0, Lo/tT;->x:Lo/ug$ActionBar;

    iget-object v3, v10, Lo/ug;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    iget-object v7, v1, Lo/Bo;->a:Ljava/lang/String;

    iget-object v1, v0, Lo/tT;->n:Lo/vh;

    invoke-virtual {v1}, Lo/vh;->aZ()J

    move-result-wide v17

    move-object v1, v9

    move-object v4, v10

    move-wide/from16 v19, v5

    move-object/from16 v21, v8

    move-object v13, v9

    move-wide/from16 v8, v17

    invoke-direct/range {v1 .. v9}, Lo/ug;-><init>(Lo/ug$ActionBar;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/ug;JLjava/lang/String;J)V

    .line 445
    iget-object v1, v0, Lo/tT;->p:Lo/tf;

    move-wide/from16 v2, v19

    invoke-virtual {v1, v2, v3}, Lo/tf;->b(J)Lo/uC;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {v13, v1}, Lo/ug;->c(Lo/uC;)V

    goto :goto_2

    .line 449
    :cond_2
    iget-object v1, v0, Lo/tT;->p:Lo/tf;

    new-instance v4, Lo/tT$Application;

    invoke-direct {v4, v0, v13}, Lo/tT$Application;-><init>(Lo/tT;Lo/ug;)V

    invoke-virtual {v1, v2, v3, v4}, Lo/tf;->b(JLo/uI$TaskDescription;)V

    :goto_2
    new-array v1, v15, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    aput-object v13, v1, v16

    const-string v3, "adding child of %s: %s"

    move-object/from16 v4, v21

    .line 451
    invoke-static {v4, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 452
    invoke-virtual {v10, v13}, Lo/ug;->a(Lo/ug;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_0

    .line 456
    :cond_3
    iget-object v1, v0, Lo/tT;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/tT$Activity;

    .line 457
    iget-object v3, v2, Lo/tT$Activity;->d:Lo/Bj;

    iget-object v4, v10, Lo/ug;->i:Lo/Bj;

    if-ne v3, v4, :cond_4

    iget-wide v3, v2, Lo/tT$Activity;->c:J

    invoke-virtual {v10}, Lo/ug;->g()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4

    .line 458
    invoke-direct {v0, v2, v10}, Lo/tT;->a(Lo/tT$Activity;Lo/ug;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method private c(ILo/uC;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 8

    .line 636
    iget-object v0, p0, Lo/tT;->t:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    if-nez v5, :cond_0

    goto :goto_3

    .line 640
    :cond_0
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v6

    if-ltz v6, :cond_3

    .line 641
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v7

    if-lt v6, v7, :cond_1

    goto :goto_2

    .line 647
    :cond_1
    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 648
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    :goto_1
    if-ne p1, v6, :cond_4

    goto :goto_4

    :cond_3
    :goto_2
    const-string v4, "nf_branch_cache"

    const-string v5, "prefetcher queried buffering track before ASE selection"

    .line 644
    invoke-static {v4, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move-object v5, v4

    :goto_4
    if-eqz v5, :cond_9

    .line 656
    :goto_5
    invoke-virtual {p2}, Lo/uC;->getPeriodCount()I

    move-result p1

    if-ge v2, p1, :cond_9

    .line 657
    invoke-virtual {p2, v2}, Lo/uC;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 658
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 659
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    if-ne v3, v5, :cond_7

    return-object v1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    return-object v4
.end method

.method private c()V
    .locals 1

    .line 326
    iget-object v0, p0, Lo/tT;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lo/tT;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 334
    :cond_0
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->clear()V

    return-void
.end method

.method private static synthetic c(Lo/tT$Activity;Lo/ug;)V
    .locals 3

    .line 464
    iget-object p0, p0, Lo/tT$Activity;->a:Lo/tT$TaskDescription;

    iget-object v0, p1, Lo/ug;->i:Lo/Bj;

    invoke-virtual {p1}, Lo/ug;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lo/tT$TaskDescription;->a(Lo/Bj;J)V

    return-void
.end method

.method static synthetic c(Lo/tT;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/tT;->h()V

    return-void
.end method

.method static synthetic c(Lo/tT;Lo/tT$TaskDescription;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->e(Lo/tT$TaskDescription;)V

    return-void
.end method

.method static synthetic c(Lo/tT;Lo/uf;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->b(Lo/uf;)V

    return-void
.end method

.method static synthetic c(Lo/tT;Lo/ug;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->d(Lo/ug;)V

    return-void
.end method

.method private c(Lo/ug;)V
    .locals 2

    .line 480
    invoke-virtual {p1}, Lo/ug;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->b()V

    .line 489
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->g()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "nf_branch_cache"

    const-string v1, "updating weight of %s"

    .line 492
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 473
    iput-boolean p1, p0, Lo/tT;->q:Z

    if-nez p1, :cond_0

    .line 474
    iget-object p1, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 475
    iget-object p1, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v0, 0x1003

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lo/tT;->r:Z

    .line 339
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->clear()V

    .line 340
    iget-object v0, p0, Lo/tT;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    return-void
.end method

.method static synthetic d(Lo/tT;Lo/Bj;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->e(Lo/Bj;)V

    return-void
.end method

.method static synthetic d(Lo/tT;Lo/ug;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/tT;->a(Lo/ug;)V

    return-void
.end method

.method private d(Lo/ug;)V
    .locals 3

    .line 534
    iget-object v0, p0, Lo/tT;->p:Lo/tf;

    iget-wide v1, p1, Lo/ug;->b:J

    invoke-virtual {v0, v1, v2}, Lo/tf;->b(J)Lo/uC;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ug;->c(Lo/uC;)V

    .line 535
    iget-object p1, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v0, 0x1003

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic d(Lo/tT;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lo/tT;->r:Z

    return p0
.end method

.method private e(Lo/ug;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    const/4 v11, 0x0

    const-string v12, "could not find valid representation for %s"

    const-string v13, "nf_branch_cache"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v1, v15, :cond_5

    .line 591
    invoke-virtual/range {p1 .. p1}, Lo/ug;->a()Lo/uC;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/tT;->c(ILo/uC;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 596
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/ug;->a()Lo/uC;

    move-result-object v2

    invoke-virtual {v2}, Lo/uC;->getPeriodCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 597
    invoke-virtual/range {p1 .. p1}, Lo/ug;->a()Lo/uC;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/uC;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 598
    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    if-ne v4, v15, :cond_1

    .line 599
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 600
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/2addr v5, v15

    if-eqz v5, :cond_2

    return-object v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-array v1, v15, [Ljava/lang/Object;

    aput-object v10, v1, v14

    .line 607
    invoke-static {v13, v12, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v11

    .line 611
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lo/ug;->e()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v1, 0x2

    .line 613
    invoke-virtual/range {p1 .. p1}, Lo/ug;->a()Lo/uC;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/tT;->c(ILo/uC;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v9

    .line 614
    new-instance v8, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;

    iget-object v3, v0, Lo/tT;->n:Lo/vh;

    iget-object v4, v0, Lo/tT;->i:Lo/tX;

    iget-object v5, v0, Lo/tT;->j:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    iget-object v6, v0, Lo/tT;->f:Lo/tK;

    iget-object v7, v0, Lo/tT;->m:Lo/vp;

    iget-object v2, v0, Lo/tT;->s:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    move-object v1, v8

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;-><init>(Lo/ug;Lo/vh;Lo/tJ;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tK;Lo/vp;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)V

    .line 616
    invoke-virtual {v10, v11}, Lo/ug;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;)V

    move-object v1, v11

    .line 618
    :cond_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentAsePlayerState;->b()Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    new-array v1, v15, [Ljava/lang/Object;

    aput-object v10, v1, v14

    .line 623
    invoke-static {v13, v12, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private e(Lo/Bj;)V
    .locals 4

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v1, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ug;

    .line 293
    iget-object v3, v2, Lo/ug;->i:Lo/Bj;

    if-ne v3, p1, :cond_0

    .line 294
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_1
    iget-object p1, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic e(Lo/tT$Activity;Lo/ug;)V
    .locals 0

    invoke-static {p0, p1}, Lo/tT;->c(Lo/tT$Activity;Lo/ug;)V

    return-void
.end method

.method private e(Lo/tT$TaskDescription;)V
    .locals 4

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    iget-object v1, p0, Lo/tT;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/tT$Activity;

    .line 318
    iget-object v3, v2, Lo/tT$Activity;->a:Lo/tT$TaskDescription;

    if-ne v3, p1, :cond_0

    .line 319
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p0, Lo/tT;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic e(Lo/tT;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/tT;->i()V

    return-void
.end method

.method static synthetic h(Lo/tT;)Lo/tf;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/tT;->p:Lo/tf;

    return-object p0
.end method

.method private h()V
    .locals 21

    move-object/from16 v0, p0

    .line 344
    iget-object v1, v0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object v1, v0, Lo/tT;->t:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const-string v3, "nf_branch_cache"

    if-nez v1, :cond_0

    const-string v1, "track selection not initialized - pausing until ASE ready"

    .line 347
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_0
    iget-boolean v1, v0, Lo/tT;->q:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, v0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_1

    const-string v1, "exoplayer currently loading - pausing until exoplayer finishes loading"

    .line 354
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 356
    :cond_1
    iget-object v1, v0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v10

    cmp-long v1, v10, v8

    if-gez v1, :cond_2

    new-array v1, v7, [Ljava/lang/Object;

    .line 357
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "exoplayer currently loading - pausing until exoplayer finishes loading or at %s ms"

    invoke-static {v3, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 358
    iget-object v1, v0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v2, 0x100b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 363
    :cond_2
    iget-object v1, v0, Lo/tT;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "load already in progress - pausing until resource available"

    .line 364
    invoke-static {v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 367
    :cond_3
    iget-object v1, v0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->a()J

    move-result-wide v8

    sget-wide v10, Lo/tT;->e:J

    cmp-long v1, v8, v10

    if-ltz v1, :cond_4

    new-array v1, v7, [Ljava/lang/Object;

    .line 368
    iget-object v2, v0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "reached max buffer duration %s - pausing until segments removed"

    invoke-static {v3, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 371
    :cond_4
    iget-object v1, v0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->d()J

    move-result-wide v8

    iget v1, v0, Lo/tT;->l:I

    int-to-long v10, v1

    cmp-long v1, v8, v10

    if-ltz v1, :cond_5

    new-array v1, v7, [Ljava/lang/Object;

    .line 372
    iget-object v2, v0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "reached max buffer size %s - pausing until segments removed"

    invoke-static {v3, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 376
    :cond_5
    iget-object v1, v0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->e()Lo/ug;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "no next segment to fetch in list - pausing until new segments added"

    .line 378
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_6
    invoke-virtual {v1}, Lo/ug;->a()Lo/uC;

    move-result-object v8

    if-nez v8, :cond_7

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "%s not ready - no manifest"

    .line 383
    invoke-static {v3, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 387
    :cond_7
    invoke-virtual {v1}, Lo/ug;->l()I

    move-result v8

    .line 388
    invoke-direct {v0, v1, v8}, Lo/tT;->e(Lo/ug;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v9

    if-nez v9, :cond_8

    const-string v1, "could not find a valid representation to fetch - delaying fetch"

    .line 390
    invoke-static {v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, v0, Lo/tT;->g:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_8
    const-wide/16 v10, 0x1

    if-ne v8, v7, :cond_9

    .line 395
    iget-object v2, v0, Lo/tT;->k:Lo/tD;

    iget-object v2, v2, Lo/tD;->h:Lo/vd;

    invoke-virtual {v2}, Lo/vd;->h()I

    move-result v2

    int-to-long v12, v2

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v12

    move-wide/from16 v18, v12

    goto :goto_0

    :cond_9
    move-wide/from16 v18, v10

    .line 396
    :goto_0
    iget-object v14, v0, Lo/tT;->i:Lo/tX;

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v15, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1}, Lo/ug;->j()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v19}, Lo/tX;->c(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v1, "chunk map not in memory - requesting header fetch"

    .line 398
    invoke-static {v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, v0, Lo/tT;->i:Lo/tX;

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lo/tT;->w:Lo/tJ$ActionBar;

    invoke-virtual {v1, v2, v3}, Lo/tX;->b(Ljava/lang/String;Lo/tJ$ActionBar;)V

    return-void

    .line 402
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v2, "could not find chunk in chunk list - removing segment"

    .line 403
    invoke-static {v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, v1, Lo/ug;->i:Lo/Bj;

    invoke-virtual {v0, v1}, Lo/tT;->d(Lo/Bj;)V

    return-void

    :cond_b
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ne v8, v13, :cond_c

    .line 408
    invoke-virtual {v1}, Lo/ug;->i()J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-lez v16, :cond_c

    invoke-virtual {v1}, Lo/ug;->o()J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-nez v16, :cond_c

    new-array v14, v12, [Ljava/lang/Object;

    .line 409
    iget-object v15, v1, Lo/ug;->d:Ljava/lang/String;

    aput-object v15, v14, v6

    invoke-virtual {v1}, Lo/ug;->i()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/tF;

    invoke-virtual {v15}, Lo/tF;->e()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v13

    const-string v15, "updating start time of %s from %s to %s"

    invoke-static {v3, v15, v14}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 410
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/tF;

    invoke-virtual {v14}, Lo/tF;->e()J

    move-result-wide v14

    add-long/2addr v14, v10

    invoke-virtual {v1, v14, v15}, Lo/ug;->e(J)V

    .line 413
    :cond_c
    invoke-virtual {v1}, Lo/ug;->b()J

    move-result-wide v10

    cmp-long v14, v10, v4

    if-gez v14, :cond_d

    .line 414
    iget-object v15, v0, Lo/tT;->i:Lo/tX;

    iget-object v4, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v20}, Lo/tX;->c(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 415
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 416
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/tF;

    invoke-virtual {v4}, Lo/tF;->h()J

    move-result-wide v4

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v1, v10, v6

    .line 417
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    const-string v11, "updating end time of %s to %s"

    invoke-static {v3, v11, v10}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 418
    invoke-virtual {v1, v4, v5}, Lo/ug;->b(J)V

    .line 422
    :cond_d
    invoke-direct {v0, v1, v9, v8, v2}, Lo/tT;->b(Lo/ug;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;ILjava/util/List;)Lo/uf;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v4, "downloading chunk %s"

    .line 423
    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 424
    iget-object v2, v0, Lo/tT;->c:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v3, v0, Lo/tT;->v:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    invoke-virtual {v2, v1, v3, v12}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method

.method static synthetic i(Lo/tT;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/tT;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private i()V
    .locals 6

    .line 496
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 499
    invoke-direct {p0}, Lo/tT;->j()V

    goto/16 :goto_1

    .line 500
    :cond_0
    iget-object v2, p0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 502
    invoke-direct {p0}, Lo/tT;->j()V

    .line 503
    iget-object v0, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 504
    :cond_1
    iget-object v2, p0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 506
    invoke-direct {p0}, Lo/tT;->j()V

    goto :goto_1

    .line 510
    :cond_2
    iget-object v2, p0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v2

    .line 512
    iget-object v3, p0, Lo/tT;->y:Lcom/google/android/exoplayer2/PlayerMessage;

    if-eqz v3, :cond_4

    .line 513
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_3

    iget-object v3, p0, Lo/tT;->y:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getWindowIndex()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 514
    :cond_3
    invoke-direct {p0}, Lo/tT;->j()V

    .line 517
    :cond_4
    iget-object v3, p0, Lo/tT;->y:Lcom/google/android/exoplayer2/PlayerMessage;

    if-nez v3, :cond_7

    .line 518
    iget-object v3, p0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v4, p0, Lo/tT;->z:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    iget-object v4, p0, Lo/tT;->g:Landroid/os/Handler;

    .line 519
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlayerMessage;->setHandler(Landroid/os/Handler;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    const/4 v4, 0x1

    .line 520
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlayerMessage;->setDeleteAfterDelivery(Z)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 521
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    if-ltz v2, :cond_6

    .line 522
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    if-lt v2, v4, :cond_5

    goto :goto_0

    .line 525
    :cond_5
    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPosition(IJ)Lcom/google/android/exoplayer2/PlayerMessage;

    .line 526
    iput-object v3, p0, Lo/tT;->y:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 527
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    goto :goto_1

    :cond_6
    :goto_0
    const-string v0, "nf_branch_cache"

    const-string v1, "unable to set earliest skip request trigger - invalid timeline"

    .line 523
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method private j()V
    .locals 1

    .line 539
    iget-object v0, p0, Lo/tT;->y:Lcom/google/android/exoplayer2/PlayerMessage;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->cancel()Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lo/tT;->y:Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 234
    iget-object v0, p0, Lo/tT;->h:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lo/tT;->B:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 235
    iget-object v0, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 227
    iget-object v0, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Lo/Bj;)J
    .locals 2

    .line 245
    iget-object v0, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->a(Lo/Bj;)Lo/ug;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1}, Lo/ug;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public d(Lo/Bj;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lo/tT;->g:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/xJ;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    iget-object v1, p0, Lo/tT;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/cache/SegmentHolderList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ug;

    .line 260
    invoke-virtual {v2}, Lo/ug;->t()Lo/xJ;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/Bj;JLjava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 186
    iget-object v1, v0, Lo/tT;->g:Landroid/os/Handler;

    new-instance v11, Lo/ug;

    iget-object v3, v0, Lo/tT;->x:Lo/ug$ActionBar;

    iget-object v2, v0, Lo/tT;->n:Lo/vh;

    invoke-virtual {v2}, Lo/vh;->aZ()J

    move-result-wide v9

    move-object v2, v11

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lo/ug;-><init>(Lo/ug$ActionBar;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/Bj;JLjava/lang/String;J)V

    const/16 v2, 0x1000

    invoke-virtual {v1, v2, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
