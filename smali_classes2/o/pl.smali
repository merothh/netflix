.class public Lo/pl;
.super Lo/xf;
.source ""


# instance fields
.field private E:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Looper;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/xZ;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;ZJ[BLo/tg;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/sV;Lo/xo;Lo/wx;Lo/rD;)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v12, p19

    move-object/from16 v16, p20

    move-object/from16 v17, p21

    move-object/from16 v18, p22

    .line 42
    new-instance v13, Lo/we;

    move-object/from16 v19, v13

    move-object/from16 v14, p1

    invoke-direct {v13, v14}, Lo/we;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct/range {v0 .. v19}, Lo/xf;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/xZ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/tK;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/sV;ZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;Lo/xo;Lo/wx;Lo/rD;Lo/vY;)V

    move-object/from16 v1, p8

    .line 46
    iput-object v1, v0, Lo/pl;->E:Ljava/lang/String;

    .line 47
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 48
    iget-object v2, v0, Lo/pl;->g:Landroid/os/Handler;

    new-instance v3, Lo/pk;

    move-object/from16 p14, v3

    move-object/from16 p15, p0

    move-object/from16 p16, p1

    move-object/from16 p17, p2

    move-wide/from16 p18, p9

    move-object/from16 p20, v1

    invoke-direct/range {p14 .. p20}, Lo/pk;-><init>(Lo/pl;Landroid/content/Context;Landroid/os/Handler;JLandroid/os/ConditionVariable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 59
    iget-object v1, v0, Lo/pl;->p:Lo/qF;

    move/from16 v2, p13

    invoke-virtual {v1, v2}, Lo/qF;->b(Z)V

    .line 60
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v1, v0, Lo/pl;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-void
.end method

.method static synthetic c(Lo/pl;Landroid/content/Context;Landroid/os/Handler;JLandroid/os/ConditionVariable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/pl;->e(Landroid/content/Context;Landroid/os/Handler;JLandroid/os/ConditionVariable;)V

    return-void
.end method

.method private synthetic e(Landroid/content/Context;Landroid/os/Handler;JLandroid/os/ConditionVariable;)V
    .locals 6

    .line 49
    iget-object v0, p0, Lo/pl;->E:Ljava/lang/String;

    iget-object v3, p0, Lo/pl;->A:Lo/ta;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lo/rI;->d(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Lo/pt;J)Lo/rI;

    move-result-object p1

    iput-object p1, p0, Lo/pl;->p:Lo/qF;

    .line 56
    invoke-virtual {p5}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/pl;->E:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/pl;->p:Lo/qF;

    invoke-virtual {v0, p1}, Lo/qF;->e(I)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 65
    iget-object v0, p0, Lo/pl;->p:Lo/qF;

    invoke-virtual {v0}, Lo/qF;->a()J

    move-result-wide v0

    return-wide v0
.end method
