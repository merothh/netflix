.class public Lo/aiB;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/aiC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lo/aiC;

    invoke-direct {v0}, Lo/aiC;-><init>()V

    iput-object v0, p0, Lo/aiB;->a:Lo/aiC;

    return-void
.end method

.method private a(Lcom/netflix/partner/NetflixPartnerRecoResults;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lo/aiB;->a:Lo/aiC;

    invoke-virtual {v0}, Lo/aiC;->e()Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aiq;

    const-string v2, "nf_partner_PServiceRecoRequestHand"

    const-string v3, "sending recommendations... "

    .line 117
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {v1, p1}, Lo/aiq;->a(Lcom/netflix/partner/NetflixPartnerRecoResults;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/aiB;JLjava/lang/Long;ILjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/aiB;->e(JLjava/lang/Long;ILjava/util/List;)V

    return-void
.end method

.method private d(JLjava/lang/Long;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_partner_PServiceRecoRequestHand"

    const-string v2, "sending error response to partner code: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    new-instance v0, Lcom/netflix/partner/NetflixPartnerRecoResults;

    invoke-direct {v0, p4}, Lcom/netflix/partner/NetflixPartnerRecoResults;-><init>(I)V

    .line 126
    :try_start_0
    invoke-direct {p0, v0}, Lo/aiB;->a(Lcom/netflix/partner/NetflixPartnerRecoResults;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "could not send error result "

    .line 128
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/aiB;->e(JLjava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(JLjava/lang/Long;ILjava/util/List;)V
    .locals 5

    const-string v0, "nf_partner_PServiceRecoRequestHand"

    :try_start_0
    const-string v1, "sending onRecommendationComplete %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p5, :cond_0

    .line 87
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    new-instance v1, Lcom/netflix/partner/NetflixPartnerRecoResults;

    invoke-direct {v1, p4, p5}, Lcom/netflix/partner/NetflixPartnerRecoResults;-><init>(ILjava/util/List;)V

    invoke-direct {p0, v1}, Lo/aiB;->a(Lcom/netflix/partner/NetflixPartnerRecoResults;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p4

    const-string p5, " remote Exception"

    .line 91
    invoke-static {v0, p5, p4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    sget-object p4, Lo/aiJ;->e:Lo/aiJ;

    const/4 p4, -0x4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/aiB;->d(JLjava/lang/Long;I)V

    return-void
.end method

.method private e(JLjava/lang/Long;Ljava/lang/String;)V
    .locals 2

    .line 134
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    new-instance v1, Lcom/netflix/cl/model/Error;

    invoke-direct {v1, p4}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 135
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Lo/Am;Ljava/lang/String;IILo/aiq;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 30
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v6, v10

    const-string v8, "nf_partner_PServiceRecoRequestHand"

    const-string v11, "getRecommendations: got query: %s, toView: %s, toExpanded: %s"

    invoke-static {v8, v11, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    iget-object v6, v1, Lo/aiB;->a:Lo/aiC;

    invoke-virtual {v6, v4}, Lo/aiC;->e(Lo/aiq;)V

    .line 33
    iget-object v6, v1, Lo/aiB;->a:Lo/aiC;

    invoke-virtual {v6}, Lo/aiC;->c()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_0

    const-string v0, "previous reco request still in progress.. stashing"

    .line 34
    invoke-static {v8, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_0
    sget-object v6, Lo/aiG;->b:Lo/aiG;

    sget-object v11, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinderRecommendation:Lcom/netflix/cl/model/android/PartnerInputSource;

    invoke-virtual {v6, v0, v11}, Lo/aiG;->d(Landroid/content/Context;Lcom/netflix/cl/model/android/PartnerInputSource;)J

    move-result-wide v11

    .line 39
    sget-object v6, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v13, Lcom/netflix/cl/model/event/session/action/Search;

    invoke-direct {v13, v3}, Lcom/netflix/cl/model/event/session/action/Search;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v6

    if-nez v2, :cond_2

    const-string v0, "no connection"

    .line 41
    invoke-static {v8, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    .line 43
    sget-object v0, Lo/aiJ;->e:Lo/aiJ;

    const/4 v0, -0x5

    invoke-direct {v1, v11, v12, v6, v0}, Lo/aiB;->d(JLjava/lang/Long;I)V

    return-void

    :cond_1
    const-string v0, "ignoring getRecommendations, manager null, callback null"

    .line 47
    invoke-static {v8, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bX:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v12, v6, v0}, Lo/aiB;->e(JLjava/lang/Long;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v4, :cond_3

    const-string v0, "partner callback null "

    .line 57
    invoke-static {v8, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bQ:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v12, v6, v0}, Lo/aiB;->e(JLjava/lang/Long;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_3
    sget-object v4, Lo/nd;->b:Lo/nd;

    invoke-virtual {v4}, Lo/nd;->b()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {v4}, Lo/aiG;->e()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "sFinder functionality not supported on device - safetynet failure"

    .line 64
    invoke-static {v8, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lo/aiJ;->e:Lo/aiJ;

    const/4 v0, -0x8

    invoke-direct {v1, v11, v12, v6, v0}, Lo/aiB;->d(JLjava/lang/Long;I)V

    return-void

    .line 72
    :cond_4
    const-class v4, Lo/bY;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/bY;

    sget-object v13, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-interface {v4, v13}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x4

    :try_start_0
    const-string v13, "com.netflix.partner.PRecoDataHandler"

    .line 74
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    aput-object v16, v15, v7

    const-class v16, Lo/Am;

    aput-object v16, v15, v9

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v10

    const-class v16, Ljava/lang/Long;

    aput-object v16, v15, v5

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v0, v14, v7

    aput-object v2, v14, v9

    .line 75
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v14, v10

    aput-object v6, v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aiv;

    .line 78
    invoke-virtual/range {p2 .. p2}, Lo/Am;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {v5, v2}, Lo/aiG;->d(Lo/Am;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "sFinder functionality not supported on device - config blocked"

    .line 79
    invoke-static {v8, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lo/aiJ;->e:Lo/aiJ;

    const/4 v0, -0x1

    invoke-direct {v1, v11, v12, v6, v0}, Lo/aiB;->d(JLjava/lang/Long;I)V

    return-void

    .line 85
    :cond_5
    new-instance v2, Lo/aiA;

    invoke-direct {v2, v1, v11, v12, v6}, Lo/aiA;-><init>(Lo/aiB;JLjava/lang/Long;)V

    move/from16 v5, p4

    move/from16 v7, p5

    invoke-interface {v0, v3, v5, v7, v2}, Lo/aiv;->getRecommendations(Ljava/lang/String;IILo/aiv$Application;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception"

    .line 101
    invoke-static {v8, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    sget-object v0, Lo/aiJ;->e:Lo/aiJ;

    invoke-direct {v1, v11, v12, v6, v4}, Lo/aiB;->d(JLjava/lang/Long;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "NoSuchMethodException"

    .line 97
    invoke-static {v8, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    sget-object v0, Lo/aiJ;->e:Lo/aiJ;

    invoke-direct {v1, v11, v12, v6, v4}, Lo/aiB;->d(JLjava/lang/Long;I)V

    goto :goto_0

    :cond_6
    const-string v0, "module not present, cant handle the query"

    .line 106
    invoke-static {v8, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lo/aiG;->b:Lo/aiG;

    invoke-virtual/range {p2 .. p2}, Lo/Am;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/aiG;->a(Landroid/content/Context;)V

    .line 108
    sget-object v0, Lo/aiJ;->e:Lo/aiJ;

    const/4 v0, -0x7

    invoke-direct {v1, v11, v12, v6, v0}, Lo/aiB;->d(JLjava/lang/Long;I)V

    :goto_0
    return-void
.end method
