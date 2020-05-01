.class public abstract Lo/th;
.super Lo/qF;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;


# instance fields
.field protected final d:Lo/tq;

.field protected final e:Lo/tB;

.field protected final f:Landroid/os/Handler;

.field protected final g:Lo/uL$StateListAnimator;

.field protected final h:Lo/wd;

.field protected final i:Lo/tG;

.field protected final j:Lo/xw;

.field private final k:Lo/tK;

.field private final l:Lo/tj;

.field private final m:Lo/td;

.field protected final n:Lo/tm$ActionBar;

.field private final o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

.field private final p:Lo/td;

.field private final t:Lo/td;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/ta;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lo/tX;Lo/tG;Lo/tL;Lo/tK;Lo/xw;Lo/vY;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tq;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lo/ta;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lo/tX;",
            "Lo/tG;",
            "Lo/tL;",
            "Lo/tK;",
            "Lo/xw;",
            "Lo/vY;",
            "Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;",
            "Lo/tq;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v13, p5

    move-object/from16 v15, p9

    move-object/from16 v10, p12

    .line 73
    invoke-direct/range {p0 .. p0}, Lo/qF;-><init>()V

    .line 74
    iput-object v8, v7, Lo/th;->f:Landroid/os/Handler;

    move-object/from16 v11, p8

    .line 75
    iput-object v11, v7, Lo/th;->k:Lo/tK;

    move-object/from16 v12, p6

    .line 76
    iput-object v12, v7, Lo/th;->i:Lo/tG;

    .line 79
    const-class v0, Lo/zl;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zl;

    invoke-interface {v0}, Lo/zl;->d()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    sget-object v2, Lcom/netflix/mediaclient/service/player/StreamProfileType;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;-><init>(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)V

    iput-object v1, v7, Lo/th;->o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    .line 82
    new-instance v14, Lo/wb;

    invoke-direct {v14}, Lo/wb;-><init>()V

    .line 83
    iget-object v4, v7, Lo/th;->k:Lo/tK;

    .line 84
    invoke-interface/range {p11 .. p11}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Aq;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object v6, v14

    .line 83
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory;->a(Lo/tJ;Lo/tG;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tL;Lo/tK;Ljava/lang/String;Lo/vX;)Lo/tB;

    move-result-object v0

    iput-object v0, v7, Lo/th;->e:Lo/tB;

    .line 85
    iget-object v0, v7, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->g()Lo/tP;

    move-result-object v0

    invoke-virtual {v13, v0}, Lo/tX;->d(Lo/tP;)V

    .line 86
    iget-object v0, v7, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->b()Lo/vq;

    move-result-object v0

    iput-object v0, v7, Lo/th;->c:Lo/vq;

    .line 88
    new-instance v0, Lo/qV;

    .line 90
    invoke-interface/range {p11 .. p11}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->b()Z

    move-result v5

    new-instance v6, Lo/qY;

    iget-object v1, v10, Lo/tq;->c:Lo/ta;

    invoke-direct {v6, v1, v15}, Lo/qY;-><init>(Lo/ta;Lo/xw;)V

    const/4 v4, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v6}, Lo/qV;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IZLo/qY;)V

    .line 92
    iget-object v1, v7, Lo/th;->e:Lo/tB;

    .line 93
    invoke-interface {v1}, Lo/tB;->b()Lo/vq;

    move-result-object v1

    iget-object v2, v7, Lo/th;->e:Lo/tB;

    invoke-interface {v2}, Lo/tB;->e()Lo/vp;

    move-result-object v2

    iget-object v3, v7, Lo/th;->f:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 92
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Landroid/os/Looper;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, v7, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 95
    new-instance v0, Lo/td;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v7, v9, v8}, Lo/td;-><init>(ILcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/ta;Landroid/os/Handler;)V

    iput-object v0, v7, Lo/th;->m:Lo/td;

    .line 96
    new-instance v0, Lo/td;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v7, v9, v8}, Lo/td;-><init>(ILcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/ta;Landroid/os/Handler;)V

    iput-object v0, v7, Lo/th;->t:Lo/td;

    .line 97
    new-instance v0, Lo/td;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v7, v9, v8}, Lo/td;-><init>(ILcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/ta;Landroid/os/Handler;)V

    iput-object v0, v7, Lo/th;->p:Lo/td;

    .line 99
    iput-object v10, v7, Lo/th;->d:Lo/tq;

    .line 100
    iget-object v0, v7, Lo/th;->d:Lo/tq;

    invoke-virtual {v0, v7}, Lo/tq;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)V

    .line 101
    iget-object v0, v7, Lo/th;->d:Lo/tq;

    iget-object v1, v7, Lo/th;->e:Lo/tB;

    invoke-interface {v1}, Lo/tB;->d()Lo/vK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/tq;->a(Lo/vK;)V

    .line 102
    iput-object v15, v7, Lo/th;->j:Lo/xw;

    .line 104
    invoke-virtual/range {p9 .. p9}, Lo/xw;->b()Lo/wU;

    move-result-object v0

    invoke-virtual {v13, v0}, Lo/tX;->c(Lo/wU;)V

    .line 105
    iget-object v0, v7, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->n()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object v0

    move-object/from16 v1, p10

    .line 106
    invoke-interface {v1, v0}, Lo/vY;->a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lo/vX;

    move-result-object v2

    invoke-virtual {v14, v2}, Lo/wb;->b(Lo/vX;)V

    .line 107
    new-instance v2, Lo/wd;

    iget-object v3, v7, Lo/th;->e:Lo/tB;

    .line 109
    invoke-interface {v3}, Lo/tB;->c()Lo/wf;

    move-result-object v18

    iget-object v3, v7, Lo/th;->e:Lo/tB;

    .line 110
    invoke-interface {v3}, Lo/tB;->g()Lo/tP;

    move-result-object v19

    .line 111
    invoke-virtual/range {p9 .. p9}, Lo/xw;->b()Lo/wU;

    move-result-object v20

    iget-object v3, v7, Lo/th;->e:Lo/tB;

    .line 113
    invoke-interface {v3}, Lo/tB;->j()Lo/tw;

    move-result-object v22

    iget-object v3, v7, Lo/th;->e:Lo/tB;

    .line 116
    invoke-interface {v3}, Lo/tB;->m()Lo/vt;

    move-result-object v25

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move-object/from16 v21, p10

    move-object/from16 v23, p6

    move-object/from16 v24, v0

    invoke-direct/range {v16 .. v25}, Lo/wd;-><init>(Landroid/content/Context;Lo/wf;Lo/tP;Lo/wU;Lo/vY;Lo/tw;Lo/tG;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lo/vt;)V

    iput-object v2, v7, Lo/th;->h:Lo/wd;

    .line 117
    new-instance v0, Lo/uL$StateListAnimator;

    iget-object v9, v7, Lo/th;->h:Lo/wd;

    iget-object v1, v7, Lo/th;->e:Lo/tB;

    .line 120
    invoke-interface {v1}, Lo/tB;->i()Lo/tD;

    move-result-object v1

    iget-object v2, v7, Lo/th;->e:Lo/tB;

    .line 121
    invoke-interface {v2}, Lo/tB;->a()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    move-result-object v12

    iget-object v14, v7, Lo/th;->m:Lo/td;

    iget-object v2, v7, Lo/th;->t:Lo/td;

    iget-object v3, v7, Lo/th;->p:Lo/td;

    move-object v8, v0

    move-object/from16 v10, p8

    move-object v11, v1

    move-object v1, v15

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v8 .. v16}, Lo/uL$StateListAnimator;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lo/tK;Lo/tD;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;Lo/tX;Lo/td;Lo/td;Lo/td;)V

    iput-object v0, v7, Lo/th;->g:Lo/uL$StateListAnimator;

    .line 126
    iget-object v0, v7, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, v7, Lo/th;->d:Lo/tq;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 128
    iget-object v0, v7, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, v7, Lo/th;->d:Lo/tq;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    .line 129
    iget-object v0, v7, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, v7, Lo/th;->d:Lo/tq;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioDebugListener(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, v7, Lo/th;->l:Lo/tj;

    .line 136
    new-instance v0, Lo/tm$ActionBar;

    invoke-direct {v0, v1}, Lo/tm$ActionBar;-><init>(Lo/tm$TaskDescription;)V

    iput-object v0, v7, Lo/th;->n:Lo/tm$ActionBar;

    .line 138
    invoke-virtual {v7, v1}, Lo/th;->d(Lo/xw;)V

    return-void
.end method

.method static synthetic b(Lo/th;)V
    .locals 0

    invoke-direct {p0}, Lo/th;->f()V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 168
    iget-object v0, p0, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    .line 169
    iget-object v0, p0, Lo/th;->d:Lo/tq;

    invoke-virtual {v0}, Lo/tq;->d()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 272
    iget-object p1, p0, Lo/th;->t:Lo/td;

    invoke-virtual {p1}, Lo/td;->c()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 274
    iget-object p1, p0, Lo/th;->m:Lo/td;

    invoke-virtual {p1}, Lo/td;->c()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 276
    iget-object p1, p0, Lo/th;->p:Lo/td;

    invoke-virtual {p1}, Lo/td;->c()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lo/uC;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lo/th;->o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    invoke-virtual {p1}, Lo/uC;->a()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;->b(Lcom/netflix/mediaclient/service/player/StreamProfileType;)V

    .line 156
    iget-object v0, p0, Lo/th;->k:Lo/tK;

    invoke-static {v0}, Lo/tI;->c(Lo/tK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lo/th;->k:Lo/tK;

    invoke-virtual {p1}, Lo/uC;->a()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/tK;->b(Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result p1

    if-lez p1, :cond_0

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lo/th;->o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;->a(Landroid/util/Range;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 184
    iget-object v0, p0, Lo/th;->o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;->b()I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 220
    iget-object p1, p0, Lo/th;->t:Lo/td;

    invoke-virtual {p0}, Lo/th;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/td;->a(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 222
    iget-object p1, p0, Lo/th;->m:Lo/td;

    invoke-virtual {p0}, Lo/th;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/td;->a(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 224
    iget-object p1, p0, Lo/th;->p:Lo/td;

    invoke-virtual {p0}, Lo/th;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo/td;->a(J)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    :goto_0
    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    .line 227
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    :cond_3
    return-wide v0
.end method

.method public c(I)J
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 248
    iget-object p1, p0, Lo/th;->t:Lo/td;

    invoke-virtual {p1, v0, v1}, Lo/td;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 250
    iget-object p1, p0, Lo/th;->m:Lo/td;

    invoke-virtual {p1, v0, v1}, Lo/td;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 252
    iget-object p1, p0, Lo/th;->p:Lo/td;

    invoke-virtual {p1, v0, v1}, Lo/td;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(II)V
    .locals 2

    .line 180
    iget-object v0, p0, Lo/th;->o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    new-instance v1, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;->a(Landroid/util/Range;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 188
    iget-object v0, p0, Lo/th;->o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;->a()I

    move-result v0

    return v0
.end method

.method public d(I)J
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lo/th;->t:Lo/td;

    invoke-virtual {p0}, Lo/th;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/td;->e(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 238
    iget-object p1, p0, Lo/th;->m:Lo/td;

    invoke-virtual {p0}, Lo/th;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/td;->e(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 240
    iget-object p1, p0, Lo/th;->p:Lo/td;

    invoke-virtual {p0}, Lo/th;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/td;->e(J)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected d(Lo/xw;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lo/xw;->a(Lcom/google/android/exoplayer2/ExoPlayer;)V

    .line 143
    invoke-virtual {p1, p0}, Lo/xw;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)V

    .line 144
    iget-object v0, p0, Lo/th;->d:Lo/tq;

    invoke-virtual {p1, v0}, Lo/xw;->e(Lo/ty;)V

    .line 145
    iget-object v0, p0, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->f()Lo/tH;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/xw;->e(Lo/tH;)V

    .line 146
    iget-object v0, p0, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->h()Lo/tN;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/xw;->c(Lo/tN;)V

    .line 147
    iget-object v0, p0, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->a()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/xw;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/NetflixBandwidthMeter;)V

    .line 148
    iget-object v0, p0, Lo/th;->i:Lo/tG;

    invoke-virtual {p1, v0}, Lo/xw;->a(Lo/tG;)V

    .line 149
    iget-object v0, p0, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->g()Lo/tP;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/xw;->e(Lo/tP;)V

    .line 150
    invoke-virtual {p1}, Lo/xw;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 167
    iget-object v0, p0, Lo/th;->f:Landroid/os/Handler;

    new-instance v1, Lo/tk;

    invoke-direct {v1, p0}, Lo/tk;-><init>(Lo/th;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    iget-object v0, p0, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lo/th;->d:Lo/tq;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 172
    iget-object v0, p0, Lo/th;->l:Lo/tj;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lo/tj;->e()V

    .line 175
    :cond_0
    iget-object v0, p0, Lo/th;->e:Lo/tB;

    invoke-interface {v0}, Lo/tB;->k()V

    .line 176
    invoke-super {p0}, Lo/qF;->e()V

    return-void
.end method

.method public h(I)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 284
    iget-object p1, p0, Lo/th;->t:Lo/td;

    invoke-virtual {p1}, Lo/td;->e()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 286
    iget-object p1, p0, Lo/th;->m:Lo/td;

    invoke-virtual {p1}, Lo/td;->e()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 288
    iget-object p1, p0, Lo/th;->p:Lo/td;

    invoke-virtual {p1}, Lo/td;->e()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;
    .locals 1

    .line 295
    iget-object v0, p0, Lo/th;->o:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;
    .locals 5

    .line 197
    iget-object v0, p0, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 212
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    return-object v0

    .line 209
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    return-object v0

    .line 202
    :cond_1
    iget-object v0, p0, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 203
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->b:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    return-object v0

    .line 205
    :cond_2
    iget-object v0, p0, Lo/th;->b:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    :goto_0
    return-object v0

    .line 200
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->b:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    return-object v0
.end method
