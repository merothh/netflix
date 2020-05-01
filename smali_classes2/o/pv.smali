.class public Lo/pv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pv$Application;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lo/pA;

.field private final d:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final e:Lo/cz;

.field private f:Lo/ps;

.field private g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/HandlerThread;

.field private final i:Lo/pM;

.field private final j:Lo/pB;

.field private k:Z

.field private l:Lo/pC;

.field private final m:Lo/uk;

.field private n:Lo/pq;

.field private o:Lo/sV;

.field private final s:Lo/pq$Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/pB;Lo/pM;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lo/pA;

    invoke-direct {v0}, Lo/pA;-><init>()V

    iput-object v0, p0, Lo/pv;->c:Lo/pA;

    .line 371
    new-instance v0, Lo/pv$4;

    invoke-direct {v0, p0}, Lo/pv$4;-><init>(Lo/pv;)V

    iput-object v0, p0, Lo/pv;->m:Lo/uk;

    .line 378
    new-instance v0, Lo/pu;

    invoke-direct {v0, p0}, Lo/pu;-><init>(Lo/pv;)V

    iput-object v0, p0, Lo/pv;->s:Lo/pq$Activity;

    .line 78
    invoke-static {}, Lo/aeB;->a()Z

    .line 79
    iput-object p1, p0, Lo/pv;->a:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lo/pv;->j:Lo/pB;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/pv;->b:Landroid/os/Handler;

    .line 82
    iput-object p4, p0, Lo/pv;->e:Lo/cz;

    .line 83
    iput-object p5, p0, Lo/pv;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 84
    iput-object p3, p0, Lo/pv;->i:Lo/pM;

    return-void
.end method

.method static synthetic a(Lo/pv;)Lo/pA;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/pv;->c:Lo/pA;

    return-object p0
.end method

.method static synthetic b(Lo/pv;)Lo/pq;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/pv;->n:Lo/pq;

    return-object p0
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lo/pv;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/pv;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lo/pv;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/pv;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lo/pv;)Lo/pM;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/pv;->i:Lo/pM;

    return-object p0
.end method

.method static synthetic g(Lo/pv;)Lo/cz;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/pv;->e:Lo/cz;

    return-object p0
.end method

.method private g()V
    .locals 0

    return-void
.end method

.method static synthetic i(Lo/pv;)V
    .locals 0

    invoke-direct {p0}, Lo/pv;->j()V

    return-void
.end method

.method static synthetic j(Lo/pv;)Lo/pB;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/pv;->j:Lo/pB;

    return-object p0
.end method

.method private synthetic j()V
    .locals 1

    .line 379
    iget-object v0, p0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v0}, Lo/pA;->c()V

    return-void
.end method


# virtual methods
.method public a(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;JLcom/netflix/mediaclient/servicemgr/PlayContext;JZZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;
    .locals 19

    move-wide/from16 v0, p6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 121
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "nf_playbackSessionMgr"

    const-string v4, "openPlaybackSessionAndPlay %d"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v2, p0

    .line 122
    iget-boolean v3, v2, Lo/pv;->k:Z

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    new-instance v4, Lo/Bm$ActionBar;

    invoke-direct {v4, v3}, Lo/Bm$ActionBar;-><init>(Ljava/lang/String;)V

    new-instance v5, Lo/Bl$Activity;

    invoke-direct {v5, v0, v1}, Lo/Bl$Activity;-><init>(J)V

    .line 128
    invoke-virtual {v5}, Lo/Bl$Activity;->a()Lo/Bl;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lo/Bm$ActionBar;->c(Ljava/lang/String;Lo/Bl;)Lo/Bm$ActionBar;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v3}, Lo/Bm$ActionBar;->c(Ljava/lang/String;)Lo/Bm$ActionBar;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lo/Bm$ActionBar;->b()Lo/Bm;

    move-result-object v11

    .line 131
    new-instance v13, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-wide/from16 v0, p9

    invoke-direct {v13, v3, v3, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p8

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    .line 132
    invoke-virtual/range {v5 .. v18}, Lo/pv;->c(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lo/pv;->k:Z

    .line 108
    iget-object v0, p0, Lo/pv;->n:Lo/pq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 109
    invoke-interface {v0, v1}, Lo/pq;->d(Lo/pq$Activity;)V

    .line 111
    :cond_0
    invoke-direct {p0}, Lo/pv;->g()V

    return-void
.end method

.method public a(I)V
    .locals 4

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 247
    invoke-static {}, Lo/pw;->e()Lo/zJ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lo/pv;->l:Lo/pC;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {p1}, Lo/zJ;->t()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lo/pv;->l:Lo/pC;

    iget-object v1, p0, Lo/pv;->a:Landroid/content/Context;

    .line 252
    invoke-interface {p1}, Lo/zJ;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-interface {v0, v1, v2}, Lo/pC;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lo/pv;->l:Lo/pC;

    invoke-interface {p1, v0}, Lo/zJ;->e(Lo/pC;)V

    :cond_0
    return-void
.end method

.method public c()Lo/zJ;
    .locals 1

    .line 305
    invoke-static {}, Lo/pw;->e()Lo/zJ;

    move-result-object v0

    return-object v0
.end method

.method public c(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v15, p5

    .line 177
    iget-object v3, v0, Lo/pv;->c:Lo/pA;

    .line 178
    invoke-virtual/range {p6 .. p6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lo/pA;->e(Lo/Ab;Ljava/lang/String;)Lo/xy;

    move-result-object v3

    if-nez v3, :cond_2

    .line 180
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->j()Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    iget-object v3, v0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v3}, Lo/pA;->b()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {}, Lo/pw;->d()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 185
    :cond_1
    :goto_0
    iget-object v3, v0, Lo/pv;->f:Lo/ps;

    iget-object v4, v0, Lo/pv;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v5, v0, Lo/pv;->e:Lo/cz;

    iget-object v6, v0, Lo/pv;->j:Lo/pB;

    .line 186
    invoke-virtual {v6}, Lo/pB;->getResourceFetcher()Lo/xZ;

    move-result-object v6

    iget-object v7, v0, Lo/pv;->j:Lo/pB;

    .line 187
    invoke-virtual {v7}, Lo/pB;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v7

    iget-object v8, v0, Lo/pv;->b:Landroid/os/Handler;

    iget-object v9, v0, Lo/pv;->h:Landroid/os/HandlerThread;

    .line 188
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v13, v0, Lo/pv;->g:Landroid/util/Pair;

    iget-object v14, v0, Lo/pv;->o:Lo/sV;

    iget-object v10, v0, Lo/pv;->m:Lo/uk;

    move-object/from16 v16, v10

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object v0, v15

    move-object/from16 v15, p5

    move/from16 v17, p9

    move-wide/from16 v18, p1

    move/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v22, p12

    move-object/from16 v23, p13

    .line 185
    invoke-interface/range {v3 .. v23}, Lo/ps;->b(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Landroid/util/Pair;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;

    move-result-object v3

    .line 191
    invoke-interface {v3, v1}, Lo/zJ;->a(Lo/Af;)V

    .line 192
    new-instance v1, Lo/pv$Application;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v4, v3}, Lo/pv$Application;-><init>(Lo/pv;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/zJ;)V

    invoke-interface {v3, v1}, Lo/zJ;->a(Lo/Af;)V

    .line 194
    iget-object v1, v0, Lo/pv;->n:Lo/pq;

    .line 195
    invoke-interface {v1}, Lo/pq;->y()Lo/Af;

    move-result-object v1

    .line 194
    invoke-interface {v3, v1}, Lo/zJ;->a(Lo/Af;)V

    .line 196
    iget-object v1, v0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v1, v2, v4, v3}, Lo/pA;->a(Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/zJ;)V

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v3, v1}, Lo/xy;->b(Lo/Af;)V

    move-object v5, v3

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-wide/from16 v10, p1

    move-object/from16 v12, p11

    .line 200
    invoke-virtual/range {v5 .. v12}, Lo/xy;->c(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZJLjava/lang/String;)V

    :goto_1
    return-object v3
.end method

.method public d(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v13, p5

    .line 146
    iget-object v2, v0, Lo/pv;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 147
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "nf_playbackSessionMgr"

    const-string v3, "openPlaybackSessionAndPlay no network %d"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    iget-object v1, v0, Lo/pv;->a:Landroid/content/Context;

    move-object/from16 v3, p3

    invoke-static {v1, v3}, Lo/px;->e(Landroid/content/Context;Lo/Af;)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    move-object/from16 v3, p3

    .line 151
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->j()Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    iget-object v2, v0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v2}, Lo/pA;->b()V

    .line 154
    :cond_1
    iget-object v2, v0, Lo/pv;->f:Lo/ps;

    iget-object v4, v0, Lo/pv;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v5, v0, Lo/pv;->e:Lo/cz;

    iget-object v6, v0, Lo/pv;->j:Lo/pB;

    .line 156
    invoke-virtual {v6}, Lo/pB;->getResourceFetcher()Lo/xZ;

    move-result-object v6

    iget-object v7, v0, Lo/pv;->j:Lo/pB;

    .line 157
    invoke-virtual {v7}, Lo/pB;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v7

    iget-object v8, v0, Lo/pv;->b:Landroid/os/Handler;

    iget-object v9, v0, Lo/pv;->h:Landroid/os/HandlerThread;

    .line 158
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v14, v0, Lo/pv;->g:Landroid/util/Pair;

    iget-object v15, v0, Lo/pv;->o:Lo/sV;

    iget-object v10, v0, Lo/pv;->m:Lo/uk;

    move-object/from16 v17, v10

    move-object/from16 v3, p3

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object v0, v13

    move-object/from16 v13, p9

    move-object/from16 v16, p5

    move/from16 v18, p10

    move-wide/from16 v19, p1

    move/from16 v21, p11

    move-object/from16 v22, p12

    move-object/from16 v23, p13

    move-object/from16 v24, p14

    .line 154
    invoke-interface/range {v2 .. v24}, Lo/ps;->c(Lo/Af;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Landroid/util/Pair;Lo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/uk;ZJZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;

    move-result-object v2

    .line 161
    new-instance v3, Lo/pv$Application;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v4, v2}, Lo/pv$Application;-><init>(Lo/pv;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/zJ;)V

    invoke-interface {v2, v3}, Lo/zJ;->a(Lo/Af;)V

    .line 163
    iget-object v3, v0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v3, v1, v4, v2}, Lo/pA;->a(Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/zJ;)V

    return-object v2
.end method

.method public d()V
    .locals 3

    .line 233
    invoke-static {}, Lo/pw;->c()Ljava/util/List;

    .line 235
    invoke-static {}, Lo/pw;->e()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lo/zJ;->r()V

    .line 238
    iget-object v1, p0, Lo/pv;->a:Landroid/content/Context;

    invoke-static {v1}, Lo/x;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lo/pv;->o:Lo/sV;

    .line 240
    invoke-interface {v0}, Lo/zJ;->q()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v2

    .line 239
    invoke-interface {v1, v0, v2}, Lo/sV;->c(Lo/zJ;Lcom/netflix/mediaclient/service/player/StreamProfileType;)V

    :cond_0
    return-void
.end method

.method public d(Lo/Ab;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v0, p1}, Lo/pA;->d(Lo/Ab;)V

    return-void
.end method

.method public d(Lo/ps;Lo/pq;Landroid/os/HandlerThread;)V
    .locals 2

    .line 92
    iput-object p3, p0, Lo/pv;->h:Landroid/os/HandlerThread;

    .line 93
    iput-object p1, p0, Lo/pv;->f:Lo/ps;

    .line 94
    new-instance p3, Landroid/util/Pair;

    invoke-static {}, Lo/adP;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lo/adP;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lo/pv;->g:Landroid/util/Pair;

    .line 95
    iput-object p2, p0, Lo/pv;->n:Lo/pq;

    .line 96
    iget-object p2, p0, Lo/pv;->e:Lo/cz;

    invoke-interface {p1, p2, p0}, Lo/ps;->a(Lo/cz;Lo/Ah;)Lo/sV;

    move-result-object p1

    iput-object p1, p0, Lo/pv;->o:Lo/sV;

    .line 98
    invoke-direct {p0}, Lo/pv;->b()V

    .line 99
    iget-object p1, p0, Lo/pv;->n:Lo/pq;

    iget-object p2, p0, Lo/pv;->s:Lo/pq$Activity;

    invoke-interface {p1, p2}, Lo/pq;->d(Lo/pq$Activity;)V

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lo/pv;->k:Z

    return-void
.end method

.method public e()Lo/Ab;
    .locals 2

    .line 287
    new-instance v0, Lo/pv$5;

    invoke-direct {v0, p0}, Lo/pv$5;-><init>(Lo/pv;)V

    .line 289
    iget-object v1, p0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v1, v0}, Lo/pA;->c(Lo/Ab;)V

    return-object v0
.end method

.method public e(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;JZ[BLjava/lang/String;Ljava/lang/String;)Lo/zJ;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v14, p5

    move-object/from16 v10, p6

    .line 217
    iget-object v3, v0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v3, v2, v10}, Lo/pA;->d(Lo/Ab;Ljava/lang/String;)Lo/zJ;

    move-result-object v3

    if-nez v3, :cond_0

    .line 219
    iget-object v3, v0, Lo/pv;->f:Lo/ps;

    iget-object v4, v0, Lo/pv;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v5, v0, Lo/pv;->e:Lo/cz;

    iget-object v6, v0, Lo/pv;->j:Lo/pB;

    invoke-virtual {v6}, Lo/pB;->getResourceFetcher()Lo/xZ;

    move-result-object v6

    iget-object v7, v0, Lo/pv;->j:Lo/pB;

    invoke-virtual {v7}, Lo/pB;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v7

    iget-object v8, v0, Lo/pv;->b:Landroid/os/Handler;

    iget-object v9, v0, Lo/pv;->h:Landroid/os/HandlerThread;

    .line 220
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v15, v0, Lo/pv;->o:Lo/sV;

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move-object v2, v14

    move-object/from16 v14, p11

    move-object/from16 v16, p5

    move/from16 v17, p10

    move-wide/from16 v18, p1

    .line 219
    invoke-interface/range {v3 .. v19}, Lo/ps;->e(Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;J[BLo/sV;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;ZJ)Lo/zJ;

    move-result-object v3

    .line 222
    invoke-interface {v3, v1}, Lo/zJ;->a(Lo/Af;)V

    .line 223
    iget-object v1, v0, Lo/pv;->c:Lo/pA;

    move-object v4, v2

    move-object/from16 v2, p4

    invoke-virtual {v1, v2, v4, v3}, Lo/pA;->a(Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/zJ;)V

    .line 224
    new-instance v1, Lo/pv$Application;

    invoke-direct {v1, v0, v2, v4, v3}, Lo/pv$Application;-><init>(Lo/pv;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/zJ;)V

    invoke-interface {v3, v1}, Lo/zJ;->a(Lo/Af;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {v3, v1}, Lo/zJ;->a(Lo/Af;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const-string v2, "nf_playbackSessionMgr"

    const-string v4, "FileSourceSession %s is cashed, should not happen. "

    .line 227
    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v3
.end method

.method public e(Lo/Ab;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lo/pv;->c:Lo/pA;

    invoke-virtual {v0, p1}, Lo/pA;->b(Lo/Ab;)V

    return-void
.end method

.method public e(Lo/pC;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lo/pv;->l:Lo/pC;

    return-void
.end method
