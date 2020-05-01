.class public Lo/xy;
.super Lo/xf;
.source ""

# interfaces
.implements Lo/tx;
.implements Lo/ul$Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xy$StateListAnimator;,
        Lo/xy$Application;
    }
.end annotation


# instance fields
.field private final E:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected F:Z

.field protected final G:Ljava/util/concurrent/atomic/AtomicLong;

.field protected H:J

.field protected I:Ljava/lang/String;

.field private final J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

.field private final K:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field private final L:Ljava/lang/String;

.field private final M:Lo/ul;

.field private final N:Lo/xo;

.field private O:Lo/xu;

.field private P:J

.field private Q:Z

.field private final R:Ljava/util/concurrent/atomic/AtomicLong;

.field private S:Ljava/lang/String;

.field private W:Lo/xy$StateListAnimator;

.field private final X:Lo/oe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tK;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/xo;Lo/ri;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/wx;Lo/rD;)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v14, p8

    move-object/from16 v13, p10

    move-object/from16 v11, p16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v12, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v19, p14

    move-object/from16 v11, p15

    move-object/from16 v16, p16

    move/from16 v13, p22

    move-object/from16 v14, p24

    move-object/from16 v15, p25

    move-object/from16 v17, p26

    move-object/from16 v18, p27

    .line 113
    invoke-direct/range {v0 .. v19}, Lo/xf;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tK;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/sV;ZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/xo;Lo/wx;Lo/rD;Lo/vY;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v15, p0

    iput-object v0, v15, Lo/xy;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v15, Lo/xy;->G:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v15, Lo/xy;->R:Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    iput-wide v1, v15, Lo/xy;->H:J

    .line 547
    new-instance v0, Lo/xy$2;

    invoke-direct {v0, v15}, Lo/xy$2;-><init>(Lo/xy;)V

    iput-object v0, v15, Lo/xy;->X:Lo/oe;

    move-object/from16 v14, p8

    if-eqz v14, :cond_0

    .line 117
    invoke-virtual/range {p8 .. p8}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v15, Lo/xy;->L:Ljava/lang/String;

    .line 118
    new-instance v0, Lo/ul;

    move-object/from16 v1, p7

    move-object/from16 v2, p17

    move-object/from16 v3, p18

    invoke-direct {v0, v1, v2, v3, v15}, Lo/ul;-><init>(Landroid/os/Looper;Lo/ri;Lo/uk;Lo/ul$Activity;)V

    iput-object v0, v15, Lo/xy;->M:Lo/ul;

    .line 119
    new-instance v13, Lo/tt;

    move-object v0, v13

    iget-object v3, v15, Lo/xy;->g:Landroid/os/Handler;

    iget-object v4, v15, Lo/xy;->A:Lo/ta;

    iget-object v5, v15, Lo/xy;->M:Lo/ul;

    iget-object v6, v15, Lo/xy;->f:Lo/tX;

    iget-object v7, v15, Lo/xy;->i:Lo/tG;

    iget-object v8, v15, Lo/xy;->h:Lo/tL;

    iget-object v10, v15, Lo/xy;->k:Lo/xw;

    iget-object v11, v15, Lo/xy;->l:Lo/xv;

    iget-object v1, v15, Lo/xy;->n:Lo/tf;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v9, p13

    move-object/from16 v12, p14

    move-object/from16 v20, v13

    move-object/from16 v13, p12

    move-object/from16 v14, p15

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v16}, Lo/tt;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lo/tX;Lo/tG;Lo/tL;Lo/tK;Lo/xw;Lo/xv;Lo/vY;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lo/tf;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    .line 121
    invoke-virtual {v1, v0}, Lo/tt;->d(Lo/tx;)V

    .line 122
    iget-object v2, v0, Lo/xy;->o:Lo/xc;

    invoke-virtual {v1}, Lo/tt;->g()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/xc;->e(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 123
    iput-object v1, v0, Lo/xy;->p:Lo/qF;

    .line 124
    iput-object v1, v0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    .line 125
    iget-object v1, v0, Lo/xy;->p:Lo/qF;

    move/from16 v2, p19

    invoke-virtual {v1, v2}, Lo/qF;->b(Z)V

    move-object/from16 v1, p23

    .line 126
    iput-object v1, v0, Lo/xy;->I:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 128
    iput-object v1, v0, Lo/xy;->K:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-object/from16 v2, p16

    .line 129
    iput-object v2, v0, Lo/xy;->N:Lo/xo;

    move-wide/from16 v3, p20

    .line 130
    iput-wide v3, v0, Lo/xy;->P:J

    move-object/from16 v5, p8

    if-eqz v5, :cond_5

    .line 132
    new-instance v6, Lo/xu;

    iget-object v7, v0, Lo/xy;->n:Lo/tf;

    invoke-direct {v6, v5, v7}, Lo/xu;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/xs;)V

    iput-object v6, v0, Lo/xy;->O:Lo/xu;

    .line 133
    iget-object v6, v0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v6, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    .line 135
    invoke-virtual {v5, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/Bj;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_1

    .line 136
    iget-wide v9, v1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    if-nez v6, :cond_2

    .line 138
    invoke-virtual/range {p8 .. p8}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->j()Lo/Bj;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-wide v7, v9

    .line 143
    :goto_2
    instance-of v1, v6, Lo/Bl;

    if-eqz v1, :cond_3

    .line 144
    move-object v1, v6

    check-cast v1, Lo/Bl;

    iget-wide v9, v1, Lo/Bl;->g:J

    goto :goto_3

    .line 145
    :cond_3
    instance-of v1, v5, Lo/Bp;

    if-eqz v1, :cond_4

    .line 146
    move-object v1, v5

    check-cast v1, Lo/Bp;

    invoke-virtual {v1}, Lo/Bp;->d()J

    move-result-wide v9

    .line 150
    :goto_3
    iget-object v1, v0, Lo/xy;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/xo;->c(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v1

    iput-object v1, v0, Lo/xy;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 152
    iget-wide v1, v6, Lo/Bj;->e:J

    add-long/2addr v1, v7

    .line 153
    new-instance v5, Lo/xC;

    move-object/from16 p1, v5

    move-object/from16 p2, p0

    move-wide/from16 p3, v9

    move-wide/from16 p5, v1

    move-wide/from16 p7, p20

    move-object/from16 p9, p25

    invoke-direct/range {p1 .. p9}, Lo/xC;-><init>(Lo/xy;JJJLcom/netflix/mediaclient/media/PreferredLanguageData;)V

    invoke-virtual {v0, v5}, Lo/xy;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 148
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PlaylistMap is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_4
    return-void
.end method

.method private B()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
    .locals 1

    .line 470
    iget-object v0, p0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v0

    return-object v0
.end method

.method private synthetic E()V
    .locals 0

    .line 246
    invoke-direct {p0}, Lo/xy;->z()V

    return-void
.end method

.method private I()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lo/xy;->Q:Z

    return v0
.end method

.method private a(Lo/uC;)V
    .locals 10

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1, v0}, Lo/uC;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 307
    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 308
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 309
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 310
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lo/xy;->i:Lo/tG;

    new-instance v1, Lo/xy$4;

    invoke-direct {v1, p0}, Lo/xy$4;-><init>(Lo/xy;)V

    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 316
    invoke-interface/range {v0 .. v9}, Lo/tG;->d(Lo/tP;Ljava/util/List;Ljava/util/List;JJZLo/uj$Activity;)V

    return-void
.end method

.method static synthetic a(Lo/xy;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lo/xy;->Q:Z

    return p0
.end method

.method static synthetic b(Lo/xy;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lo/xy;->I()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lo/xy;)Lo/ul;
    .locals 0

    .line 74
    iget-object p0, p0, Lo/xy;->M:Lo/ul;

    return-object p0
.end method

.method private c(JZ)V
    .locals 2

    .line 460
    iget-object v0, p0, Lo/xy;->m:Lo/xz;

    invoke-virtual {v0, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0}, Lo/sE;->M()[Lo/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    array-length v1, v0

    if-lez v1, :cond_0

    .line 464
    iget-object v1, p0, Lo/xy;->o:Lo/xc;

    invoke-virtual {v1, p1, p2, v0, p3}, Lo/xc;->c(J[Lo/sP;Z)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lo/xy;J)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lo/xy;->d(J)V

    return-void
.end method

.method static synthetic c(Lo/xy;Lo/og;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lo/xy;->e(Lo/og;)V

    return-void
.end method

.method static synthetic c(Lo/xy;Lo/uC;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lo/xy;->a(Lo/uC;)V

    return-void
.end method

.method static synthetic d(Lo/xy;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 74
    iget-object p0, p0, Lo/xy;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private d(J)V
    .locals 7

    .line 564
    invoke-static {}, Lo/dG;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lo/xy;->n:Lo/tf;

    invoke-virtual {v0, p1, p2}, Lo/tf;->b(J)Lo/uC;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "PlaylistPlaybackSession"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {v0}, Lo/uC;->f()Z

    move-result v4

    if-nez v4, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 569
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "partialDownload manifest found=%b or not offline"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 572
    :cond_1
    invoke-virtual {v0}, Lo/uC;->i()Ljava/lang/String;

    move-result-object v0

    .line 574
    iget-wide v4, p0, Lo/xy;->H:J

    cmp-long v6, v4, p1

    if-eqz v6, :cond_2

    .line 575
    invoke-direct {p0, v4, v5}, Lo/xy;->f(J)V

    .line 577
    :cond_2
    iput-wide p1, p0, Lo/xy;->H:J

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 578
    iget-wide v5, p0, Lo/xy;->H:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v0, v4, v3

    const-string v5, "partialDownload  playableId %d downloadableId %s "

    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 579
    iget-object v4, p0, Lo/xy;->S:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 580
    :cond_3
    invoke-direct {p0, p1, p2}, Lo/xy;->f(J)V

    .line 581
    sget-object v4, Lo/xt;->d:Lo/xt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/xt;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 582
    sget-object v1, Lo/xt;->d:Lo/xt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lo/xy;->X:Lo/oe;

    invoke-virtual {v1, p1, p2}, Lo/xt;->a(Ljava/lang/String;Lo/oe;)V

    .line 583
    iput-object v0, p0, Lo/xy;->S:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    .line 585
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "partialDownload not watching for progress of download %d"

    invoke-static {v2, p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic d(JJJLcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 7

    .line 154
    iget-object v0, p0, Lo/xy;->k:Lo/xw;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lo/xw;->b(JJJ)V

    .line 155
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p7}, Lo/xy;->d(Ljava/util/List;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    return-void
.end method

.method private d(Ljava/util/List;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/netflix/mediaclient/media/PreferredLanguageData;",
            ")V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lo/xy;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 232
    new-instance v4, Lo/xy$Application;

    iget-object v0, p0, Lo/xy;->k:Lo/xw;

    invoke-direct {v4, p0, v0}, Lo/xy$Application;-><init>(Lo/xy;Lo/xw;)V

    .line 233
    new-instance v0, Lo/xx;

    iget-object v1, p0, Lo/xy;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 235
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d()Z

    move-result v7

    iget-object v1, p0, Lo/xy;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 236
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->g()Z

    move-result v8

    iget-object v9, p0, Lo/xy;->I:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v5, v0

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lo/xx;-><init>(ZZZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    .line 240
    iget-object v2, p0, Lo/xy;->N:Lo/xo;

    iget-boolean v6, p0, Lo/xy;->D:Z

    const/4 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lo/xo;->c(Ljava/util/List;Lo/xo$TaskDescription;Lo/xx;ZLo/P;)V

    return-void
.end method

.method static synthetic d(Lo/xy;JJJLcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lo/xy;->d(JJJLcom/netflix/mediaclient/media/PreferredLanguageData;)V

    return-void
.end method

.method private e(Lo/og;)V
    .locals 8

    .line 596
    iget-object v0, p0, Lo/xy;->S:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 597
    invoke-interface {p1}, Lo/og;->b()Z

    move-result v0

    const-string v1, "PlaylistPlaybackSession"

    if-eqz v0, :cond_0

    const-string v0, "partialDownload fully downloaded"

    .line 598
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    .line 599
    invoke-interface {p1, v0, v1}, Lo/og;->e(J)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lo/xy;->S:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/og;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 602
    iget-object v0, p0, Lo/xy;->S:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lo/xy;->e(Ljava/lang/String;J)J

    move-result-wide v4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 603
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "partialDownload time %d bytes %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v0, 0x3e8

    .line 604
    div-long/2addr v4, v0

    invoke-interface {p1, v4, v5}, Lo/og;->e(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lo/xy;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lo/xy;->z()V

    return-void
.end method

.method private f(J)V
    .locals 2

    .line 591
    sget-object v0, Lo/xt;->d:Lo/xt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lo/xt;->a(Ljava/lang/String;Lo/oe;)V

    return-void
.end method

.method static synthetic f(Lo/xy;)V
    .locals 0

    invoke-direct {p0}, Lo/xy;->E()V

    return-void
.end method

.method private z()V
    .locals 3

    .line 448
    iget-object v0, p0, Lo/xy;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lo/xy;->O:Lo/xu;

    if-eqz v0, :cond_1

    .line 452
    iget-object v1, p0, Lo/xy;->K:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-object v2, p0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/xu;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Ljava/util/List;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    iget-object v1, p0, Lo/xy;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-direct {p0, v0, v1}, Lo/xy;->d(Ljava/util/List;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;
    .locals 1

    .line 184
    iget-object v0, p0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    return-object v0
.end method

.method public D()V
    .locals 1

    .line 330
    iget v0, p0, Lo/xy;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/xy;->z:I

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lo/xy;->L:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 289
    iget-object v0, p0, Lo/xy;->l:Lo/xv;

    invoke-virtual {v0, p1, p2}, Lo/xv;->i(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 2

    .line 281
    iget-object v0, p0, Lo/xy;->k:Lo/xw;

    const-string v1, "licenseReceived"

    invoke-virtual {v0, p1, p2, v1}, Lo/xw;->d(JLjava/lang/String;)V

    if-eqz p3, :cond_0

    .line 283
    iget-object p3, p0, Lo/xy;->k:Lo/xw;

    invoke-virtual {p3, p1, p2}, Lo/xw;->b(J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    .line 227
    iget-object v0, p0, Lo/xy;->M:Lo/ul;

    invoke-virtual {v0}, Lo/ul;->e()I

    move-result v0

    return v0
.end method

.method public b(JLjava/lang/String;)V
    .locals 1

    .line 299
    iget-boolean v0, p0, Lo/xy;->Q:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lo/xy;->k:Lo/xw;

    invoke-virtual {v0, p1, p2, p3}, Lo/xw;->d(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(JZ)V
    .locals 1

    .line 294
    iget-object v0, p0, Lo/xy;->l:Lo/xv;

    invoke-virtual {v0, p1, p2, p3}, Lo/xv;->d(JZ)V

    return-void
.end method

.method public c(J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 265
    invoke-super {p0, p1, p2}, Lo/xf;->c(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 266
    iget-boolean p2, p0, Lo/xy;->F:Z

    if-nez p2, :cond_0

    .line 267
    invoke-virtual {p0}, Lo/xy;->d()J

    move-result-wide v0

    .line 268
    iget-object p2, p0, Lo/xy;->o:Lo/xc;

    invoke-virtual {p2, v0, v1}, Lo/xc;->c(J)Z

    move-result p2

    if-nez p2, :cond_0

    .line 269
    invoke-virtual {p0}, Lo/xy;->d()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-direct {p0, v0, v1, p2}, Lo/xy;->c(JZ)V

    :cond_0
    return-object p1
.end method

.method public c()V
    .locals 3

    .line 245
    new-instance v0, Lo/xu;

    invoke-virtual {p0}, Lo/xy;->A()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v1

    iget-object v2, p0, Lo/xy;->n:Lo/tf;

    invoke-direct {v0, v1, v2}, Lo/xu;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/xs;)V

    iput-object v0, p0, Lo/xy;->O:Lo/xu;

    .line 246
    new-instance v0, Lo/xB;

    invoke-direct {v0, p0}, Lo/xB;-><init>(Lo/xy;)V

    invoke-virtual {p0, v0}, Lo/xy;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZJLjava/lang/String;)V
    .locals 7

    .line 161
    iget-object v0, p0, Lo/xy;->p:Lo/qF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/qF;->b(Z)V

    .line 163
    iput-object p7, p0, Lo/xy;->I:Ljava/lang/String;

    .line 164
    invoke-virtual {p0, p3}, Lo/xy;->a(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 165
    iget-object p3, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 166
    invoke-virtual {p0}, Lo/xy;->d()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 167
    iget-object v0, p0, Lo/xy;->k:Lo/xw;

    iget-wide v3, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lo/xw;->b(JJJ)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p3, p0, Lo/xy;->l:Lo/xv;

    invoke-virtual {p3, v1, v2}, Lo/xv;->a(J)V

    .line 170
    iget-object v0, p0, Lo/xy;->k:Lo/xw;

    sget-object v3, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    iget-wide v4, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    invoke-virtual/range {v0 .. v5}, Lo/xw;->b(JLcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;J)V

    .line 172
    :goto_0
    iget-object p3, p0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object p3

    if-eq p1, p3, :cond_1

    .line 173
    iget-object p3, p0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {p3, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z

    .line 178
    :cond_1
    iget-object p1, p0, Lo/xy;->J:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    .line 180
    iget-object p1, p0, Lo/xy;->p:Lo/qF;

    invoke-virtual {p1, p4}, Lo/qF;->b(Z)V

    return-void
.end method

.method public d()J
    .locals 2

    .line 207
    iget-object v0, p0, Lo/xy;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;J)V
    .locals 2

    .line 251
    invoke-direct {p0}, Lo/xy;->B()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object p2

    .line 252
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 254
    iget-object p3, p0, Lo/xy;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 255
    iget-boolean p3, p0, Lo/xy;->F:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lo/xy;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->k()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lo/xy;->c(JZ)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lo/xy;->d()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lo/xy;->d(J)V

    :cond_1
    return-void
.end method

.method public e()J
    .locals 4

    .line 191
    iget-object v0, p0, Lo/xy;->R:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lo/xy;->p:Lo/qF;

    invoke-virtual {v2}, Lo/qF;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 192
    iget-object v0, p0, Lo/xy;->R:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()V
    .locals 10

    .line 477
    invoke-super {p0}, Lo/xf;->r()V

    .line 478
    invoke-static {}, Lo/fb;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lo/xy;->W:Lo/xy$StateListAnimator;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lo/xy$StateListAnimator;->e()V

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lo/xy;->W:Lo/xy$StateListAnimator;

    .line 483
    :cond_0
    invoke-virtual {p0}, Lo/xy;->d()J

    move-result-wide v0

    .line 484
    iget-object v2, p0, Lo/xy;->n:Lo/tf;

    invoke-virtual {v2, v0, v1}, Lo/tf;->b(J)Lo/uC;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 485
    invoke-virtual {v2}, Lo/uC;->f()Z

    move-result v3

    if-nez v3, :cond_1

    .line 486
    new-instance v3, Lo/xx;

    const/4 v5, 0x0

    iget-object v4, p0, Lo/xy;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 488
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d()Z

    move-result v6

    iget-object v4, p0, Lo/xy;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 489
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->g()Z

    move-result v7

    iget-object v8, p0, Lo/xy;->I:Ljava/lang/String;

    iget-object v9, p0, Lo/xy;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lo/xx;-><init>(ZZZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    .line 492
    new-instance v4, Lo/xy$StateListAnimator;

    invoke-direct {v4, p0, v2}, Lo/xy$StateListAnimator;-><init>(Lo/xy;Lo/uC;)V

    iput-object v4, p0, Lo/xy;->W:Lo/xy$StateListAnimator;

    .line 493
    iget-object v4, p0, Lo/xy;->N:Lo/xo;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lo/xy;->W:Lo/xy$StateListAnimator;

    iget-boolean v8, p0, Lo/xy;->D:Z

    const/4 v9, 0x0

    move-object v7, v3

    invoke-interface/range {v4 .. v9}, Lo/xo;->c(Ljava/util/List;Lo/xo$TaskDescription;Lo/xx;ZLo/P;)V

    :cond_1
    return-void
.end method

.method protected x()V
    .locals 2

    .line 218
    invoke-super {p0}, Lo/xf;->x()V

    .line 219
    invoke-virtual {p0}, Lo/xy;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/xy;->f(J)V

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lo/xy;->Q:Z

    .line 221
    iget-object v0, p0, Lo/xy;->M:Lo/ul;

    invoke-virtual {v0}, Lo/ul;->b()V

    return-void
.end method
