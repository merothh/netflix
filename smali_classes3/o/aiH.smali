.class public Lo/aiH;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private d:Lo/aiC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lo/aiC;

    invoke-direct {v0}, Lo/aiC;-><init>()V

    iput-object v0, p0, Lo/aiH;->d:Lo/aiC;

    return-void
.end method

.method private b(Lcom/netflix/partner/NetflixPartnerSearchResults;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lo/aiH;->d:Lo/aiC;

    invoke-virtual {v0}, Lo/aiC;->e()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aiq;

    const-string v2, "nf_partner_PServiceSearchReqestHan"

    const-string v3, "sending searchResponse... "

    .line 162
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {v1, p1}, Lo/aiq;->c(Lcom/netflix/partner/NetflixPartnerSearchResults;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(JLjava/lang/Long;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 143
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_partner_PServiceSearchReqestHan"

    const-string v2, "sending error response to partner code: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    new-instance v0, Lcom/netflix/partner/NetflixPartnerSearchResults;

    invoke-direct {v0, p4}, Lcom/netflix/partner/NetflixPartnerSearchResults;-><init>(I)V

    .line 146
    :try_start_0
    invoke-direct {p0, v0}, Lo/aiH;->b(Lcom/netflix/partner/NetflixPartnerSearchResults;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "could not send error result "

    .line 148
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/aiH;->c(JLjava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(JLjava/lang/Long;ILjava/util/List;)V
    .locals 1

    .line 104
    :try_start_0
    new-instance v0, Lcom/netflix/partner/NetflixPartnerSearchResults;

    invoke-direct {v0, p4, p5}, Lcom/netflix/partner/NetflixPartnerSearchResults;-><init>(ILjava/util/List;)V

    invoke-direct {p0, v0}, Lo/aiH;->b(Lcom/netflix/partner/NetflixPartnerSearchResults;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p4

    const-string p5, "nf_partner_PServiceSearchReqestHan"

    const-string v0, " remote Exception"

    .line 107
    invoke-static {p5, v0, p4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    sget-object p4, Lo/aiJ;->e:Lo/aiJ;

    const/4 p4, -0x4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/aiH;->c(JLjava/lang/Long;I)V

    return-void
.end method

.method private c(JLjava/lang/Long;Ljava/lang/String;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    new-instance v1, Lcom/netflix/cl/model/Error;

    invoke-direct {v1, p4}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 155
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method

.method static synthetic d(Lo/aiH;JLjava/lang/Long;ILjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/aiH;->c(JLjava/lang/Long;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lo/Am;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 130
    invoke-virtual {p2}, Lo/Am;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object v0

    sget-object v1, Lo/u$AssistContent;->e:Lo/u$AssistContent;

    .line 136
    invoke-virtual {v0, v1}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Lo/Am;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Og$Application;->c(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Lo/Am;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "nf_partner_PServiceSearchReqestHan"

    const-string p2, "ignoring in app search. user not logged In"

    .line 131
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/content/Context;Lo/Am;Ljava/lang/String;ILo/aiq;)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v3, "nf_partner_PServiceSearchReqestHan"

    const-string v4, "search: got query: %s"

    .line 35
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    iget-object v1, p0, Lo/aiH;->d:Lo/aiC;

    invoke-virtual {v1, p5}, Lo/aiC;->e(Lo/aiq;)V

    .line 38
    iget-object v1, p0, Lo/aiH;->d:Lo/aiC;

    invoke-virtual {v1}, Lo/aiC;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    const-string p1, "previous search request still in progress.. stashing"

    .line 39
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_0
    sget-object v1, Lo/aiG;->b:Lo/aiG;

    sget-object v4, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinder:Lcom/netflix/cl/model/android/PartnerInputSource;

    invoke-virtual {v1, p1, v4}, Lo/aiG;->d(Landroid/content/Context;Lcom/netflix/cl/model/android/PartnerInputSource;)J

    move-result-wide v4

    .line 43
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/Search;

    invoke-direct {v1, p3}, Lcom/netflix/cl/model/event/session/action/Search;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    if-nez p2, :cond_2

    const-string p2, "no connection"

    .line 46
    invoke-static {v3, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_1

    .line 48
    sget-object p2, Lo/aiJ;->e:Lo/aiJ;

    const/4 p2, -0x5

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;I)V

    return-void

    :cond_1
    const-string p2, "ignoring search, manager null, callback null"

    .line 51
    invoke-static {v3, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->bX:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_2
    invoke-virtual {p2}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p2, "serviceManager not ready"

    .line 59
    invoke-static {v3, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->bV:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p5, :cond_4

    const-string p4, "partner callback null "

    .line 66
    invoke-static {v3, p4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0, p3, p2}, Lo/aiH;->a(Ljava/lang/String;Lo/Am;)V

    .line 68
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->bQ:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_4
    sget-object p5, Lo/nd;->b:Lo/nd;

    invoke-virtual {p5}, Lo/nd;->b()Z

    move-result p5

    if-nez p5, :cond_5

    sget-object p5, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {p5}, Lo/aiG;->e()Z

    move-result p5

    if-nez p5, :cond_5

    const-string p2, "sFinder functionality not supported on device, safetyNet failure"

    .line 74
    invoke-static {v3, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object p2, Lo/aiJ;->e:Lo/aiJ;

    const/4 p2, -0x8

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;I)V

    return-void

    .line 81
    :cond_5
    invoke-virtual {p2}, Lo/Am;->E()Z

    move-result p5

    if-nez p5, :cond_6

    .line 82
    sget-object p2, Lo/aiJ;->e:Lo/aiJ;

    const/4 p2, -0x2

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;I)V

    return-void

    .line 89
    :cond_6
    const-class p5, Lo/bY;

    invoke-static {p5}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/bY;

    sget-object v1, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-interface {p5, v1}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result p5

    if-eqz p5, :cond_8

    const/4 p5, -0x4

    :try_start_0
    const-string v1, "com.netflix.partner.PSearchDataHandler"

    .line 91
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Lo/Am;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    const-class v8, Ljava/lang/Long;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v0

    aput-object p1, v6, v9

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aiE;

    .line 95
    sget-object v1, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {v1, p2}, Lo/aiG;->d(Lo/Am;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "sFinder functionality not supported on device - disabled by config"

    .line 96
    invoke-static {v3, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object p2, Lo/aiJ;->e:Lo/aiJ;

    const/4 p2, -0x1

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;I)V

    return-void

    .line 102
    :cond_7
    new-instance p2, Lo/aiF;

    invoke-direct {p2, p0, v4, v5, p1}, Lo/aiF;-><init>(Lo/aiH;JLjava/lang/Long;)V

    invoke-interface {v0, p3, p4, p2}, Lo/aiE;->doSearch(Ljava/lang/String;ILo/aiE$TaskDescription;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "Exception"

    .line 117
    invoke-static {v3, p3, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    sget-object p2, Lo/aiJ;->e:Lo/aiJ;

    invoke-direct {p0, v4, v5, p1, p5}, Lo/aiH;->c(JLjava/lang/Long;I)V

    goto :goto_0

    :catch_1
    move-exception p2

    const-string p3, "NoSuchMethodException"

    .line 113
    invoke-static {v3, p3, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    sget-object p2, Lo/aiJ;->e:Lo/aiJ;

    invoke-direct {p0, v4, v5, p1, p5}, Lo/aiH;->c(JLjava/lang/Long;I)V

    goto :goto_0

    :cond_8
    const-string p3, "module not present, cant handle the query"

    .line 122
    invoke-static {v3, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object p3, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {p2}, Lo/Am;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/aiG;->a(Landroid/content/Context;)V

    .line 124
    sget-object p2, Lo/aiJ;->e:Lo/aiJ;

    const/4 p2, -0x7

    invoke-direct {p0, v4, v5, p1, p2}, Lo/aiH;->c(JLjava/lang/Long;I)V

    :goto_0
    return-void
.end method
