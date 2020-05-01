.class public Lo/xh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ps;


# instance fields
.field private final a:Lo/we;

.field private final b:Lo/tg;

.field private final c:Lo/pG;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final i:Lo/xo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/tg;Lo/pG;Lo/xo;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/xh;->d:Landroid/content/Context;

    .line 56
    new-instance v0, Lo/we;

    invoke-direct {v0, p1}, Lo/we;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/xh;->a:Lo/we;

    .line 57
    iput-object p2, p0, Lo/xh;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 58
    iput-object p3, p0, Lo/xh;->b:Lo/tg;

    .line 59
    iput-object p4, p0, Lo/xh;->c:Lo/pG;

    .line 60
    iput-object p5, p0, Lo/xh;->i:Lo/xo;

    return-void
.end method

.method private d(Lo/cz;)Lo/rD;
    .locals 1

    .line 223
    new-instance v0, Lo/rw;

    invoke-direct {v0, p1}, Lo/rw;-><init>(Lo/cz;)V

    return-object v0
.end method

.method private d(Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)Lo/wx;
    .locals 0

    .line 218
    invoke-interface {p1}, Lo/cz;->F()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;->getDisableStreamingLogblobs()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lo/wz;

    invoke-direct {p1}, Lo/wz;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lo/tn;

    .line 219
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/tn;-><init>(Lo/zS;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Lo/cz;Lo/Ah;)Lo/sV;
    .locals 3

    .line 67
    new-instance v0, Lo/xe;

    iget-object v1, p0, Lo/xh;->d:Landroid/content/Context;

    iget-object v2, p0, Lo/xh;->b:Lo/tg;

    invoke-direct {v0, v1, p1, p2, v2}, Lo/xe;-><init>(Landroid/content/Context;Lo/cz;Lo/Ah;Lo/tg;)V

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Landroid/util/Pair;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/user/UserAgent;",
            "Lo/cz;",
            "Lo/xZ;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging;",
            "Landroid/os/Handler;",
            "Landroid/os/Looper;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;",
            "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sV;",
            "Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;",
            "Lo/uk;",
            "ZJZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/media/PreferredLanguageData;",
            ")",
            "Lo/zJ;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v19, p13

    move/from16 v20, p14

    move-wide/from16 v21, p15

    move/from16 v23, p17

    move-object/from16 v24, p18

    move-object/from16 v25, p19

    move-object/from16 v26, p20

    .line 146
    new-instance v29, Lo/xy;

    move-object/from16 v1, v29

    iget-object v2, v0, Lo/xh;->d:Landroid/content/Context;

    iget-object v14, v0, Lo/xh;->b:Lo/tg;

    iget-object v15, v0, Lo/xh;->a:Lo/we;

    move-object/from16 p1, v1

    move-object/from16 v1, p2

    move-object/from16 p3, v2

    iget-object v2, v0, Lo/xh;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-object/from16 v16, v2

    iget-object v2, v0, Lo/xh;->i:Lo/xo;

    move-object/from16 v17, v2

    iget-object v2, v0, Lo/xh;->c:Lo/pG;

    .line 163
    invoke-virtual {v2}, Lo/pG;->e()Lo/rk;

    move-result-object v18

    move-object/from16 v2, p4

    .line 171
    invoke-direct {v0, v1, v2}, Lo/xh;->d(Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)Lo/wx;

    move-result-object v27

    .line 172
    invoke-direct {v0, v1}, Lo/xh;->d(Lo/cz;)Lo/rD;

    move-result-object v28

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v28}, Lo/xy;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tK;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/xo;Lo/ri;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/wx;Lo/rD;)V

    return-object v29
.end method

.method public c(Lo/Af;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Landroid/util/Pair;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Af;",
            "Lcom/netflix/mediaclient/service/user/UserAgent;",
            "Lo/cz;",
            "Lo/xZ;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging;",
            "Landroid/os/Handler;",
            "Landroid/os/Looper;",
            "J",
            "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lo/sV;",
            "Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;",
            "Lo/uk;",
            "ZJZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/media/PreferredLanguageData;",
            ")",
            "Lo/zJ;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v20, p15

    move/from16 v21, p16

    move-wide/from16 v22, p17

    move/from16 v24, p19

    move-object/from16 v25, p20

    move-object/from16 v26, p21

    move-object/from16 v27, p22

    .line 95
    new-instance v7, Lo/wZ;

    move-object v1, v7

    iget-object v2, v0, Lo/xh;->d:Landroid/content/Context;

    new-instance v15, Landroid/os/Handler;

    move-object/from16 v30, v7

    move-object v7, v15

    move-object/from16 p2, v1

    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v15, v0, Lo/xh;->b:Lo/tg;

    move-object/from16 v1, p3

    move-object/from16 p4, v2

    iget-object v2, v0, Lo/xh;->a:Lo/we;

    move-object/from16 v16, v2

    iget-object v2, v0, Lo/xh;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-object/from16 v17, v2

    iget-object v2, v0, Lo/xh;->i:Lo/xo;

    move-object/from16 v18, v2

    iget-object v2, v0, Lo/xh;->c:Lo/pG;

    .line 112
    invoke-virtual {v2}, Lo/pG;->e()Lo/rk;

    move-result-object v19

    move-object/from16 v2, p5

    .line 120
    invoke-direct {v0, v1, v2}, Lo/xh;->d(Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)Lo/wx;

    move-result-object v28

    .line 121
    invoke-direct {v0, v1}, Lo/xh;->d(Lo/cz;)Lo/rD;

    move-result-object v29

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v29}, Lo/wZ;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tg;Lo/we;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/xo;Lo/ri;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/wx;Lo/rD;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    .line 122
    invoke-interface {v2, v1}, Lo/zJ;->a(Lo/Af;)V

    return-object v2
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;J[BLo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;ZJ)Lo/zJ;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v6, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v9, p7

    move-object/from16 v12, p8

    move-wide/from16 v10, p9

    move-object/from16 v17, p11

    move-object/from16 v20, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-wide/from16 v15, p15

    .line 191
    new-instance v24, Lo/pl;

    move-object/from16 v1, v24

    iget-object v2, v0, Lo/xh;->d:Landroid/content/Context;

    move-object/from16 p1, v1

    move-object/from16 v1, p2

    move-object/from16 p3, v2

    iget-object v2, v0, Lo/xh;->b:Lo/tg;

    move-object/from16 v18, v2

    iget-object v2, v0, Lo/xh;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-object/from16 v19, v2

    iget-object v2, v0, Lo/xh;->i:Lo/xo;

    move-object/from16 v21, v2

    move-object/from16 v2, p4

    .line 209
    invoke-direct {v0, v1, v2}, Lo/xh;->d(Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)Lo/wx;

    move-result-object v22

    .line 210
    invoke-direct {v0, v1}, Lo/xh;->d(Lo/cz;)Lo/rD;

    move-result-object v23

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v23}, Lo/pl;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Looper;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/xZ;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;ZJ[BLo/tg;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/sV;Lo/xo;Lo/wx;Lo/rD;)V

    return-object v24
.end method
