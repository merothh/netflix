.class public Lo/jS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/jQ;


# instance fields
.field private a:Lo/nS;

.field private b:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private c:Landroid/os/Handler;

.field private d:Lo/jZ;

.field private e:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

.field private g:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private j:Lo/cz;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/jS;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    return-void
.end method

.method private a()V
    .locals 2

    .line 80
    iget-object v0, p0, Lo/jS;->c:Landroid/os/Handler;

    new-instance v1, Lo/jS$5;

    invoke-direct {v1, p0}, Lo/jS$5;-><init>(Lo/jS;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lo/jS;)Lo/jZ;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/jS;->d:Lo/jZ;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/jS;->c:Landroid/os/Handler;

    new-instance v1, Lo/jS$1;

    invoke-direct {v1, p0}, Lo/jS$1;-><init>(Lo/jS;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lo/jS;)Lo/nS;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/jS;->a:Lo/nS;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 74
    new-instance v0, Lo/jZ;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/jS;->a:Lo/nS;

    iget-object v3, p0, Lo/jS;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-direct {v0, v1, v2, v3}, Lo/jZ;-><init>(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lo/jS;->d:Lo/jZ;

    .line 75
    iget-object v0, p0, Lo/jS;->d:Lo/jZ;

    invoke-virtual {v0}, Lo/jZ;->d()V

    .line 76
    invoke-direct {p0}, Lo/jS;->a()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;Lorg/json/JSONObject;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lo/kb;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;)Lo/jT;
    .locals 16

    move-object/from16 v0, p0

    .line 98
    new-instance v15, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;

    iget-object v7, v0, Lo/jS;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    iget-object v1, v0, Lo/jS;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    .line 99
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;->getDisableStreamingPdsEvents()Z

    move-result v11

    iget-object v13, v0, Lo/jS;->j:Lo/cz;

    iget-object v14, v0, Lo/jS;->g:Lcom/netflix/mediaclient/service/user/UserAgent;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v14}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;-><init>(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lo/kb;ZLcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-object v15
.end method

.method public b(Landroid/os/Handler;Lo/nS;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/jS;->c:Landroid/os/Handler;

    .line 51
    iput-object p2, p0, Lo/jS;->a:Lo/nS;

    .line 52
    iput-object p3, p0, Lo/jS;->j:Lo/cz;

    .line 53
    iput-object p4, p0, Lo/jS;->g:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 54
    iget-object p1, p0, Lo/jS;->j:Lo/cz;

    invoke-interface {p1}, Lo/cz;->F()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object p1

    iput-object p1, p0, Lo/jS;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    .line 55
    invoke-direct {p0}, Lo/jS;->d()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)V
    .locals 7

    .line 66
    iget-object v0, p0, Lo/jS;->d:Lo/jZ;

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lo/jS;->d()V

    .line 70
    :cond_0
    iget-object v1, p0, Lo/jS;->d:Lo/jZ;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lo/jZ;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jX;Lo/sA;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 59
    iget-object v0, p0, Lo/jS;->d:Lo/jZ;

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lo/jS;->c()V

    .line 61
    iget-object v0, p0, Lo/jS;->d:Lo/jZ;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/jZ;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
