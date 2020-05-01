.class public Lo/tt;
.super Lo/th;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;
.implements Lo/Bq;
.implements Lo/tz$Activity;
.implements Lo/tq$Application;


# instance fields
.field private k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field private l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

.field private final m:Lo/xv;

.field private final o:Landroid/os/Handler;

.field private p:Ljava/lang/String;

.field private final q:Lo/uO;

.field private final r:Lo/tf;

.field private s:Z

.field private final t:Lo/tT;

.field private u:Lo/tx;

.field private v:Lo/Bj;

.field private w:Lo/Bu;

.field private x:Lo/Bq;

.field private y:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lo/tX;Lo/tG;Lo/tL;Lo/tK;Lo/xw;Lo/xv;Lo/vY;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lo/tf;)V
    .locals 15

    move-object v13, p0

    .line 69
    new-instance v12, Lo/tq;

    move-object/from16 v14, p3

    move-object/from16 v3, p4

    move-object/from16 v0, p14

    invoke-direct {v12, v14, v3, v0}, Lo/tq;-><init>(Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v12}, Lo/th;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lo/tX;Lo/tG;Lo/tL;Lo/tK;Lo/xw;Lo/vY;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tq;)V

    move-object/from16 v0, p2

    .line 71
    iput-object v0, v13, Lo/tt;->o:Landroid/os/Handler;

    move-object/from16 v0, p11

    .line 72
    iput-object v0, v13, Lo/tt;->m:Lo/xv;

    .line 73
    iget-object v0, v13, Lo/tt;->d:Lo/tq;

    iget-object v1, v13, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lo/tq;->c(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 74
    iget-object v0, v13, Lo/tt;->d:Lo/tq;

    invoke-virtual {v0, p0}, Lo/tq;->e(Lo/tq$Application;)V

    .line 75
    iget-object v0, v13, Lo/tt;->d:Lo/tq;

    invoke-virtual {v0, p0}, Lo/tq;->c(Lo/Bq;)V

    .line 76
    iget-object v6, v13, Lo/tt;->d:Lo/tq;

    new-instance v7, Lo/tz;

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/tz;-><init>(Lo/tz$Activity;JZZ)V

    invoke-virtual {v6, v7}, Lo/tq;->c(Lo/tz;)V

    move-object/from16 v0, p15

    .line 77
    iput-object v0, v13, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-object/from16 v0, p16

    .line 78
    iput-object v0, v13, Lo/tt;->r:Lo/tf;

    .line 79
    new-instance v0, Lo/uO;

    iget-object v1, v13, Lo/tt;->r:Lo/tf;

    iget-object v2, v13, Lo/tt;->g:Lo/uL$StateListAnimator;

    new-instance v3, Lo/tm$ActionBar;

    move-object/from16 v4, p10

    invoke-direct {v3, v4}, Lo/tm$ActionBar;-><init>(Lo/tm$TaskDescription;)V

    iget-object v4, v13, Lo/tt;->e:Lo/tB;

    invoke-interface {v4}, Lo/tB;->i()Lo/tD;

    move-result-object v4

    move-object/from16 p10, v0

    move-object/from16 p11, v1

    move-object/from16 p12, v2

    move-object/from16 p13, p3

    move-object/from16 p14, v3

    move-object/from16 p15, v4

    invoke-direct/range {p10 .. p15}, Lo/uO;-><init>(Lo/uI;Lo/uL$StateListAnimator;Landroid/os/Handler;Lo/tm$ActionBar;Lo/tD;)V

    iput-object v0, v13, Lo/tt;->q:Lo/uO;

    .line 80
    new-instance v11, Lo/tT;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v13, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v5, v13, Lo/tt;->h:Lo/wd;

    iget-object v0, v13, Lo/tt;->e:Lo/tB;

    .line 81
    invoke-interface {v0}, Lo/tB;->o()Lo/vh;

    move-result-object v7

    iget-object v0, v13, Lo/tt;->e:Lo/tB;

    .line 82
    invoke-interface {v0}, Lo/tB;->a()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    move-result-object v8

    iget-object v0, v13, Lo/tt;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->e()Lo/vp;

    move-result-object v9

    iget-object v10, v13, Lo/tt;->r:Lo/tf;

    move-object v0, v11

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v10}, Lo/tT;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tX;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lo/tK;Lo/vh;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/vp;Lo/tf;)V

    iput-object v11, v13, Lo/tt;->t:Lo/tT;

    return-void
.end method

.method private static synthetic a(Lo/Bq;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 0

    .line 458
    invoke-interface {p0, p1, p2}, Lo/Bq;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;Lo/Bj;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lo/tt;->q:Lo/uO;

    iget-object p2, p2, Lo/Bj;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lo/uO;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lo/Bq;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/tt;->a(Lo/Bq;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-void
.end method

.method static synthetic d(Lo/tt;Ljava/lang/String;Lo/Bj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/tt;->d(Ljava/lang/String;Lo/Bj;)V

    return-void
.end method

.method private e(Ljava/lang/String;)J
    .locals 2

    .line 389
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lo/tt;)V
    .locals 0

    invoke-direct {p0}, Lo/tt;->r()V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 397
    :cond_0
    iget-object v1, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p1

    .line 398
    iget-object p1, p1, Lo/Bj;->b:[Lo/Bo;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 399
    iget-object v4, v4, Lo/Bo;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_2
    invoke-direct {p0, p2}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_3

    :cond_3
    return v2
.end method

.method private l()Ljava/lang/String;
    .locals 2

    .line 351
    invoke-direct {p0}, Lo/tt;->p()Lo/uF;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PlaylistPlayer"

    const-string v1, "getCurrentWindowIndex exceeds available segments"

    .line 356
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lo/tt;->p:Ljava/lang/String;

    return-object v0

    .line 359
    :cond_0
    iget-object v0, v0, Lo/uF;->a:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 6

    .line 119
    iget-boolean v0, p0, Lo/tt;->s:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    iget-object v1, p0, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    instance-of v2, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    const/4 v3, 0x0

    const-string v4, "PlaylistPlayer"

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 124
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    iput-object v0, p0, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    new-array v0, v5, [Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    aput-object v1, v0, v3

    const-string v1, "bookmark %s converted from LegacyBranchingBookmark."

    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    :cond_1
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    iget-object v1, p0, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/Bj;

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "bookmark does not map to a segment. starting at initial segment %s"

    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/tt;->p:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lo/tt;->q:Lo/uO;

    iget-object v1, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/uO;->c(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    iput-object v0, p0, Lo/tt;->p:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lo/tt;->q:Lo/uO;

    iget-object v1, p0, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/uO;->c(Ljava/lang/String;)I

    move-result v0

    .line 141
    iget-object v1, p0, Lo/tt;->k:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-wide v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    .line 143
    :goto_0
    iget-object v3, p0, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    .line 145
    iput-boolean v5, p0, Lo/tt;->s:Z

    .line 146
    iget-object v0, p0, Lo/tt;->q:Lo/uO;

    invoke-virtual {p0, v0}, Lo/tt;->e(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private p()Lo/uF;
    .locals 4

    .line 377
    iget-object v0, p0, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 379
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    const-string v0, "PlaylistPlayer"

    const-string v1, "getCurrentWindowIndex exceeds available segments"

    .line 380
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v3, 0x1

    .line 384
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 385
    iget-object v0, v2, Lcom/google/android/exoplayer2/Timeline$Window;->id:Ljava/lang/Object;

    check-cast v0, Lo/uF;

    return-object v0
.end method

.method private synthetic r()V
    .locals 1

    .line 197
    iget-object v0, p0, Lo/tt;->u:Lo/tx;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lo/tx;->c()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 12

    .line 411
    iget-object v0, p0, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 413
    invoke-static {v0, v1}, Lo/uO;->e(Lcom/google/android/exoplayer2/Timeline;I)Lo/Bj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lo/tt;->t:Lo/tT;

    invoke-virtual {v0}, Lo/tT;->b()V

    goto :goto_1

    .line 416
    :cond_0
    iget-object v1, p0, Lo/tt;->v:Lo/Bj;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 419
    :cond_1
    iput-object v0, p0, Lo/tt;->v:Lo/Bj;

    .line 420
    iget-object v1, p0, Lo/tt;->t:Lo/tT;

    invoke-virtual {v1}, Lo/tT;->b()V

    .line 421
    iget-object v1, v0, Lo/Bj;->b:[Lo/Bo;

    array-length v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_3

    aget-object v2, v1, v10

    .line 422
    iget-object v3, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    iget-object v4, v2, Lo/Bo;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v3

    const-string v4, "PlaylistPlayer"

    const/4 v5, 0x1

    if-nez v3, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 424
    iget-object v2, v2, Lo/Bo;->a:Ljava/lang/String;

    aput-object v2, v1, v9

    aput-object v0, v1, v5

    const-string v0, "playlist does not contain next segment %s for %s"

    invoke-static {v4, v0, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 427
    :cond_2
    iget-object v3, v2, Lo/Bo;->a:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide v6

    new-array v3, v5, [Ljava/lang/Object;

    .line 428
    iget-object v5, v2, Lo/Bo;->a:Ljava/lang/String;

    aput-object v5, v3, v9

    const-string v5, "prefetch %s"

    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 429
    iget-object v3, p0, Lo/tt;->t:Lo/tT;

    iget-object v4, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    iget-object v11, v2, Lo/Bo;->a:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-wide v5, v6

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lo/tT;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/Bj;JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public N_()V
    .locals 0

    .line 488
    invoke-virtual {p0}, Lo/tt;->f()V

    .line 489
    invoke-direct {p0}, Lo/tt;->s()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 214
    invoke-direct {p0, p1, p2}, Lo/tt;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "PlaylistPlayer"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v3

    const-string v1, "setNextSegment %s : %s"

    .line 215
    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    iget-object v4, p0, Lo/tt;->j:Lo/xw;

    invoke-direct {p0, p2}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, p1}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v10, 0x1

    iget-object v0, p0, Lo/tt;->t:Lo/tT;

    invoke-virtual {v0}, Lo/tT;->e()Ljava/util/List;

    move-result-object v11

    move-object v9, p2

    invoke-virtual/range {v4 .. v11}, Lo/xw;->b(JJLjava/lang/String;ZLjava/util/List;)V

    .line 217
    iget-object v0, p0, Lo/tt;->q:Lo/uO;

    invoke-virtual {v0, p1, p2}, Lo/uO;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v3

    const-string p1, "setNextSegment %s : %s, invalid!"

    .line 220
    invoke-static {v2, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4
.end method

.method public c()J
    .locals 4

    .line 108
    invoke-super {p0}, Lo/th;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    if-eqz v2, :cond_0

    .line 110
    invoke-direct {p0}, Lo/tt;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    iget-wide v2, v2, Lo/Bj;->e:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 115
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 5

    .line 440
    iget-object v0, p0, Lo/tt;->u:Lo/tx;

    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    iget-wide v2, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    invoke-interface {v0, v1, v2, v3}, Lo/tx;->d(Ljava/lang/String;J)V

    :cond_0
    if-eqz p1, :cond_1

    .line 445
    iget-object v0, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 446
    invoke-direct {p0, p1}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 448
    iget-object v0, p0, Lo/tt;->j:Lo/xw;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lo/xw;->d(JZ)V

    :cond_1
    if-eqz p1, :cond_2

    .line 453
    iget-object v0, p0, Lo/tt;->q:Lo/uO;

    invoke-virtual {v0, p1}, Lo/uO;->d(Ljava/lang/String;)V

    .line 455
    :cond_2
    iget-object v0, p0, Lo/tt;->x:Lo/Bq;

    if-eqz v0, :cond_3

    .line 457
    iget-object v1, p0, Lo/tt;->o:Landroid/os/Handler;

    new-instance v2, Lo/tv;

    invoke-direct {v2, v0, p1, p2}, Lo/tv;-><init>(Lo/Bq;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_3
    iget-object p1, p0, Lo/tt;->e:Lo/tB;

    invoke-interface {p1}, Lo/tB;->g()Lo/tP;

    move-result-object p1

    iget-object p2, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lo/tP;->d(J)V

    .line 466
    invoke-direct {p0}, Lo/tt;->s()V

    .line 468
    invoke-virtual {p0}, Lo/tt;->f()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    if-nez p2, :cond_1

    .line 474
    iget-object v0, p0, Lo/tt;->u:Lo/tx;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0, p1, p2, p3, p4}, Lo/tx;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 477
    :cond_0
    iget-object p2, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 478
    iget-object p3, p2, Lo/Bj;->b:[Lo/Bo;

    array-length p3, p3

    const/4 p4, 0x2

    if-lt p3, p4, :cond_1

    iget-object p3, p2, Lo/Bj;->a:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 479
    iget-object p3, p0, Lo/tt;->o:Landroid/os/Handler;

    new-instance p4, Lo/tr;

    invoke-direct {p4, p0, p1, p2}, Lo/tr;-><init>(Lo/tt;Ljava/lang/String;Lo/Bj;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public d(Lo/tx;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/tt;->u:Lo/tx;

    return-void
.end method

.method protected d(Lo/xw;)V
    .locals 0

    .line 95
    invoke-virtual {p1, p0}, Lo/xw;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)V

    .line 96
    invoke-super {p0, p1}, Lo/th;->d(Lo/xw;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z
    .locals 4

    .line 174
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "PlaylistPlayer"

    const-string v3, "updating playlist map %s"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    iget-boolean v0, p0, Lo/tt;->s:Z

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "playlist id does not match with current session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lo/tt;->s:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lo/tt;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 186
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "playlist does not contain current segment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    .line 191
    iput-object p1, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    .line 192
    iget-object v2, p0, Lo/tt;->d:Lo/tq;

    invoke-virtual {v2, p1}, Lo/tq;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V

    .line 193
    iget-object v2, p0, Lo/tt;->q:Lo/uO;

    invoke-virtual {v2, p1}, Lo/uO;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V

    if-eqz v0, :cond_5

    .line 196
    iget-object p1, p0, Lo/tt;->o:Landroid/os/Handler;

    new-instance v0, Lo/ts;

    invoke-direct {v0, p0}, Lo/ts;-><init>(Lo/tt;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_5
    invoke-direct {p0}, Lo/tt;->n()V

    return v1
.end method

.method public e()V
    .locals 1

    .line 101
    invoke-super {p0}, Lo/th;->e()V

    .line 102
    iget-object v0, p0, Lo/tt;->t:Lo/tT;

    invoke-virtual {v0}, Lo/tT;->a()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lo/tt;->u:Lo/tx;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 288
    iget-object v2, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    iget-object v3, v0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "PlaylistPlayer"

    const-string v6, "seekToPlaylistTimestamp(%s)"

    .line 289
    invoke-static {v5, v6, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    invoke-direct/range {p0 .. p0}, Lo/tt;->p()Lo/uF;

    move-result-object v3

    .line 291
    iget-object v5, v0, Lo/tt;->q:Lo/uO;

    iget-object v6, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lo/uO;->c(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    if-eqz v3, :cond_3

    .line 293
    iget-object v6, v3, Lo/uF;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 294
    iget-object v6, v0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    iget-object v7, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v6

    .line 295
    iget-wide v14, v3, Lo/uF;->b:J

    .line 296
    iget-object v7, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-direct {v0, v7}, Lo/tt;->e(Ljava/lang/String;)J

    move-result-wide v12

    .line 297
    iget-object v7, v0, Lo/tt;->j:Lo/xw;

    iget-object v10, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v8, v0, Lo/tt;->t:Lo/tT;

    .line 298
    invoke-virtual {v8}, Lo/tT;->e()Ljava/util/List;

    move-result-object v17

    move-wide v8, v12

    move-object/from16 v18, v10

    move-wide v10, v14

    move-wide/from16 v23, v12

    move-object/from16 v12, v18

    move/from16 v13, v16

    move/from16 v25, v5

    move-wide v4, v14

    move-object/from16 v14, v17

    .line 297
    invoke-virtual/range {v7 .. v14}, Lo/xw;->b(JJLjava/lang/String;ZLjava/util/List;)V

    .line 299
    iget-object v7, v0, Lo/tt;->t:Lo/tT;

    invoke-virtual {v7, v6}, Lo/tT;->c(Lo/Bj;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;

    .line 301
    :goto_0
    iget-object v7, v0, Lo/tt;->j:Lo/xw;

    iget-object v10, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    .line 302
    invoke-virtual/range {p0 .. p0}, Lo/tt;->a()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    move-wide/from16 v18, v23

    move-object/from16 v22, v6

    .line 301
    invoke-virtual/range {v16 .. v22}, Lo/xw;->e(Ljava/lang/String;JJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;)V

    move-wide/from16 v7, v23

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1

    .line 306
    iget-object v10, v0, Lo/tt;->j:Lo/xw;

    invoke-virtual {v10, v4, v5, v2}, Lo/xw;->d(JZ)V

    .line 307
    iget-object v10, v0, Lo/tt;->m:Lo/xv;

    invoke-virtual {v10, v4, v5}, Lo/xv;->c(J)V

    .line 309
    :cond_1
    iget-object v10, v0, Lo/tt;->w:Lo/Bu;

    if-eqz v10, :cond_4

    .line 313
    iget-object v11, v0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    iget-object v12, v3, Lo/uF;->a:Ljava/lang/String;

    iget-object v13, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    const-wide/16 v14, 0x0

    if-eqz v9, :cond_2

    const/16 v17, 0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    :goto_1
    iget-object v2, v0, Lo/tt;->j:Lo/xw;

    .line 319
    invoke-virtual {v2, v7, v8}, Lo/xw;->a(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v6

    .line 313
    invoke-interface/range {v10 .. v18}, Lo/Bu;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl$SegmentTransitionType;ZLjava/lang/String;)V

    goto :goto_2

    :cond_3
    move/from16 v25, v5

    .line 323
    :cond_4
    :goto_2
    iget-object v2, v0, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v3, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    move/from16 v1, v25

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    :cond_5
    return-void
.end method

.method public f()V
    .locals 7

    .line 151
    invoke-virtual {p0}, Lo/tt;->k()J

    move-result-wide v0

    .line 152
    iget-wide v2, p0, Lo/tt;->y:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 153
    iget-object v2, p0, Lo/tt;->r:Lo/tf;

    invoke-virtual {v2, v0, v1}, Lo/tf;->b(J)Lo/uC;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p0, v2}, Lo/tt;->a(Lo/uC;)V

    .line 156
    iget-object v3, p0, Lo/tt;->e:Lo/tB;

    invoke-interface {v3}, Lo/tB;->m()Lo/vt;

    move-result-object v3

    .line 157
    invoke-virtual {v2}, Lo/uC;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/vt;->b(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lo/tt;->j:Lo/xw;

    invoke-virtual {v2}, Lo/uC;->d()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lo/xw;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/vt;->c(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lo/tt;->j:Lo/xw;

    invoke-virtual {v2}, Lo/uC;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lo/xw;->i(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v3, v2}, Lo/vt;->d(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Lo/vt;->b()V

    .line 161
    iput-wide v0, p0, Lo/tt;->y:J

    :cond_1
    return-void
.end method

.method public g()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 1

    .line 90
    iget-object v0, p0, Lo/tt;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->a()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    move-result-object v0

    return-object v0
.end method

.method public k()J
    .locals 2

    .line 363
    invoke-direct {p0}, Lo/tt;->p()Lo/uF;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "PlaylistPlayer"

    const-string v1, "getCurrentWindowIndex exceeds available segments"

    .line 365
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lo/tt;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 372
    :cond_1
    iget-wide v0, v0, Lo/uF;->b:J

    return-wide v0
.end method

.method public m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
    .locals 1

    .line 169
    iget-object v0, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
    .locals 5

    .line 277
    invoke-direct {p0}, Lo/tt;->l()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lo/tt;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 280
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-object v4, p0, Lo/tt;->l:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v3

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTransitionBeginListener(Lo/Bu;J)V
    .locals 7

    .line 340
    iput-object p1, p0, Lo/tt;->w:Lo/Bu;

    .line 341
    iget-object p1, p0, Lo/tt;->d:Lo/tq;

    new-instance v6, Lo/tz;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lo/tz;-><init>(Lo/tz$Activity;JZZ)V

    invoke-virtual {p1, v6}, Lo/tq;->c(Lo/tz;)V

    return-void
.end method

.method public setTransitionEndListener(Lo/Bq;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lo/tt;->x:Lo/Bq;

    return-void
.end method
