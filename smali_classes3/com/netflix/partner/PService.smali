.class public Lcom/netflix/partner/PService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/partner/PService$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Lo/aiB;

.field private b:Lcom/netflix/partner/PService$TaskDescription;

.field private c:Lo/Am;

.field private d:Lcom/netflix/partner/PServiceCardEventHandler;

.field private e:Lcom/netflix/partner/PService$TaskDescription;

.field private f:Lo/aiH;

.field private g:J

.field private h:I

.field private final j:Lo/ail$Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xe

    .line 55
    iput v0, p0, Lcom/netflix/partner/PService;->h:I

    .line 64
    new-instance v0, Lcom/netflix/partner/PService$2;

    invoke-direct {v0, p0}, Lcom/netflix/partner/PService$2;-><init>(Lcom/netflix/partner/PService;)V

    iput-object v0, p0, Lcom/netflix/partner/PService;->j:Lo/ail$Activity;

    .line 59
    new-instance v0, Lcom/netflix/partner/PServiceCardEventHandler;

    invoke-direct {v0}, Lcom/netflix/partner/PServiceCardEventHandler;-><init>()V

    iput-object v0, p0, Lcom/netflix/partner/PService;->d:Lcom/netflix/partner/PServiceCardEventHandler;

    .line 60
    new-instance v0, Lo/aiB;

    invoke-direct {v0}, Lo/aiB;-><init>()V

    iput-object v0, p0, Lcom/netflix/partner/PService;->a:Lo/aiB;

    .line 61
    new-instance v0, Lo/aiH;

    invoke-direct {v0}, Lo/aiH;-><init>()V

    iput-object v0, p0, Lcom/netflix/partner/PService;->f:Lo/aiH;

    return-void
.end method

.method static synthetic a(Lcom/netflix/partner/PService;J)J
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/netflix/partner/PService;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netflix/partner/PService;->e:Lcom/netflix/partner/PService$TaskDescription;

    return-object p1
.end method

.method static synthetic a(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PServiceCardEventHandler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/partner/PService;->d:Lcom/netflix/partner/PServiceCardEventHandler;

    return-object p0
.end method

.method static synthetic a(Lcom/netflix/partner/PService;Lo/Am;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/partner/PService;->e(Lo/Am;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/partner/PService;)Lo/aiB;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/partner/PService;->a:Lo/aiB;

    return-object p0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "useragent_userprofiles_data"

    const/4 v1, 0x0

    .line 319
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b(Lo/Am;)Z
    .locals 2

    .line 295
    sget-object v0, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {v0}, Lo/aiG;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "nf_partner_pservice"

    const-string v0, "force enabled partner features"

    .line 297
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 303
    invoke-interface {p1}, Lo/cz;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 304
    invoke-interface {p1}, Lo/cz;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->minusoneConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    invoke-interface {p1}, Lo/cz;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->minusoneConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    move-result-object p1

    .line 306
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;->isMinusoneEnabled(Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static synthetic c(Lcom/netflix/partner/PService;)Lo/Am;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/partner/PService;->c:Lo/Am;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/partner/PService;Lo/Am;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/partner/PService;->b(Lo/Am;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/netflix/partner/PService;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/netflix/partner/PService;->h:I

    return p0
.end method

.method static synthetic d(Lcom/netflix/partner/PService;Lcom/netflix/partner/PService$TaskDescription;)Lcom/netflix/partner/PService$TaskDescription;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netflix/partner/PService;->b:Lcom/netflix/partner/PService$TaskDescription;

    return-object p1
.end method

.method private d()V
    .locals 2

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/netflix/partner/PService;->c:Lo/Am;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lo/Am;->d()V

    .line 182
    :cond_0
    new-instance v0, Lo/Am;

    invoke-direct {v0}, Lo/Am;-><init>()V

    iput-object v0, p0, Lcom/netflix/partner/PService;->c:Lo/Am;

    .line 183
    iget-object v0, p0, Lcom/netflix/partner/PService;->c:Lo/Am;

    new-instance v1, Lcom/netflix/partner/PService$1;

    invoke-direct {v1, p0}, Lcom/netflix/partner/PService$1;-><init>(Lcom/netflix/partner/PService;)V

    invoke-virtual {v0, v1}, Lo/Am;->c(Lo/zT;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/netflix/partner/PService;Landroid/content/Context;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/partner/PService;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/netflix/partner/PService;)Lo/aiH;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/partner/PService;->f:Lo/aiH;

    return-object p0
.end method

.method private e(Lo/Am;)V
    .locals 12

    const-string v0, "nf_partner_pservice"

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    sget-object v1, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {p1}, Lo/Am;->a()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinderRecommendation:Lcom/netflix/cl/model/android/PartnerInputSource;

    invoke-virtual {v1, v2, v3}, Lo/aiG;->d(Landroid/content/Context;Lcom/netflix/cl/model/android/PartnerInputSource;)J

    move-result-wide v1

    .line 263
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v4, Lcom/netflix/cl/model/event/session/action/Search;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/netflix/cl/model/event/session/action/Search;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v3

    .line 266
    :try_start_0
    const-class v4, Lo/bY;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/bY;

    sget-object v5, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-interface {v4, v5}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.netflix.partner.PRecoDataHandler"

    .line 267
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Lo/Am;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const-class v7, Ljava/lang/Long;

    const/4 v11, 0x3

    aput-object v7, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 268
    invoke-virtual {p1}, Lo/Am;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    aput-object v3, v5, v11

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aiv;

    .line 269
    invoke-virtual {p1}, Lo/Am;->E()Z

    move-result p1

    invoke-interface {v1, p1}, Lo/aiv;->refreshData(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Exception"

    .line 274
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "NoSuchMethodException"

    .line 272
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/partner/PService;->b:Lcom/netflix/partner/PService$TaskDescription;

    return-object p0
.end method

.method static synthetic h(Lcom/netflix/partner/PService;)Lcom/netflix/partner/PService$TaskDescription;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/partner/PService;->e:Lcom/netflix/partner/PService$TaskDescription;

    return-object p0
.end method

.method static synthetic i(Lcom/netflix/partner/PService;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/netflix/partner/PService;->g:J

    return-wide v0
.end method

.method static synthetic j(Lcom/netflix/partner/PService;)Lo/ail$Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/partner/PService;->j:Lo/ail$Activity;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/partner/PService;->g:J

    const-string v0, "nf_partner_pservice"

    const-string v1, "onBind intent: %s"

    .line 168
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 169
    invoke-direct {p0}, Lcom/netflix/partner/PService;->d()V

    .line 170
    iget-object p1, p0, Lcom/netflix/partner/PService;->j:Lo/ail$Activity;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 234
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "nf_partner_pservice"

    const-string v1, "PService.onDestroy."

    .line 235
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/netflix/partner/PService;->c:Lo/Am;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lo/Am;->d()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/netflix/partner/PService;->c:Lo/Am;

    :cond_0
    return-void
.end method
