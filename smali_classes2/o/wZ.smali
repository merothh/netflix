.class public Lo/wZ;
.super Lo/xy;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tg;Lo/we;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/xo;Lo/ri;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/wx;Lo/rD;)V
    .locals 29

    move-object/from16 v8, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move/from16 v19, p20

    move-wide/from16 v20, p21

    move/from16 v22, p23

    move-object/from16 v23, p24

    move-object/from16 v24, p25

    move-object/from16 v25, p26

    move-object/from16 v26, p27

    move-object/from16 v27, p28

    const/16 v28, 0x0

    move-object/from16 v8, v28

    .line 47
    invoke-direct/range {v0 .. v27}, Lo/xy;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tK;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/xo;Lo/ri;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/wx;Lo/rD;)V

    move-object/from16 v10, p0

    .line 53
    iget-object v0, v10, Lo/wZ;->G:Ljava/util/concurrent/atomic/AtomicLong;

    move-wide/from16 v2, p8

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 54
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v7, p17

    invoke-interface {v7, v0}, Lo/xo;->c(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v0

    iput-object v0, v10, Lo/wZ;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, v10, Lo/wZ;->F:Z

    .line 56
    new-instance v11, Lo/xg;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v4, p11

    move-wide/from16 v5, p21

    move-object/from16 v8, p26

    move/from16 v9, p23

    invoke-direct/range {v0 .. v9}, Lo/xg;-><init>(Lo/wZ;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;JLo/xo;Lcom/netflix/mediaclient/media/PreferredLanguageData;Z)V

    invoke-virtual {v10, v11}, Lo/wZ;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;JLo/xo;Lcom/netflix/mediaclient/media/PreferredLanguageData;Z)V
    .locals 7

    .line 57
    iget-object v0, p0, Lo/wZ;->k:Lo/xw;

    iget-wide v3, p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    move-wide v1, p1

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lo/xw;->b(JJJ)V

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Lo/wZ$5;

    iget-object p1, p0, Lo/wZ;->k:Lo/xw;

    invoke-direct {p4, p0, p1}, Lo/wZ$5;-><init>(Lo/wZ;Lo/xw;)V

    new-instance p1, Lo/xx;

    iget-object p2, p0, Lo/wZ;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 77
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d()Z

    move-result v2

    iget-object p2, p0, Lo/wZ;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->g()Z

    move-result v3

    iget-object v4, p0, Lo/wZ;->I:Ljava/lang/String;

    const/4 v1, 0x1

    move-object v0, p1

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lo/xx;-><init>(ZZZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    const/4 p7, 0x0

    move-object p2, p6

    move-object p5, p1

    move p6, p8

    .line 58
    invoke-interface/range {p2 .. p7}, Lo/xo;->c(Ljava/util/List;Lo/xo$TaskDescription;Lo/xx;ZLo/P;)V

    return-void
.end method

.method static synthetic b(Lo/wZ;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;JLo/xo;Lcom/netflix/mediaclient/media/PreferredLanguageData;Z)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lo/wZ;->a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;JLo/xo;Lcom/netflix/mediaclient/media/PreferredLanguageData;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/wZ;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lo/Bq;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lo/wZ;->A()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->setTransitionEndListener(Lo/Bq;)V

    return-void
.end method
