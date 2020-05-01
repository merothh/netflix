.class public final Lo/jb;
.super Lo/bV;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IClientLogging;
.implements Lo/cG$StateListAnimator;


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final b:Lo/cz;

.field private final c:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final e:Landroid/content/Context;

.field private f:Lo/jj;

.field private g:Lo/kh;

.field private final h:Lo/zE;

.field private i:Lo/zu;

.field private j:Lo/zz;

.field private k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Lo/iA;

.field private m:Lo/iI;

.field private n:J

.field private o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private p:Lo/iG;

.field private q:Lo/jS;

.field private r:Lo/iF;

.field private s:Lo/ExpandableListActivity$StateListAnimator;

.field private t:Lo/iN;

.field private v:Ljava/lang/Runnable;

.field private final x:Landroid/content/BroadcastReceiver;

.field private y:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lo/jb$1;

    invoke-direct {v0}, Lo/jb$1;-><init>()V

    sput-object v0, Lo/jb;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/jb;->n:J

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/jb;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/jb;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 374
    new-instance v0, Lo/jb$5;

    invoke-direct {v0, p0}, Lo/jb$5;-><init>(Lo/jb;)V

    iput-object v0, p0, Lo/jb;->v:Ljava/lang/Runnable;

    .line 407
    new-instance v0, Lo/jb$2;

    invoke-direct {v0, p0}, Lo/jb$2;-><init>(Lo/jb;)V

    iput-object v0, p0, Lo/jb;->x:Landroid/content/BroadcastReceiver;

    const-string v0, "nf_log"

    const-string v1, "ClientLoggingAgent::"

    .line 142
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lo/jb;->e:Landroid/content/Context;

    .line 145
    sget-object p1, Lo/jt;->a:Lo/jt;

    iput-object p1, p0, Lo/jb;->i:Lo/zu;

    .line 146
    sget-object p1, Lo/jw;->d:Lo/jw;

    iput-object p1, p0, Lo/jb;->j:Lo/zz;

    .line 147
    new-instance p1, Lo/jS;

    invoke-direct {p1, p0}, Lo/jS;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object p1, p0, Lo/jb;->q:Lo/jS;

    .line 148
    iput-object p2, p0, Lo/jb;->b:Lo/cz;

    .line 149
    iput-object p3, p0, Lo/jb;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 150
    iput-object p4, p0, Lo/jb;->h:Lo/zE;

    const-string p1, "ClientLoggingAgent:: done"

    .line 152
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lo/jb;)Lo/zE;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->h:Lo/zE;

    return-object p0
.end method

.method static synthetic a(Lo/jb;Landroid/content/Intent;)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lo/jb;->d(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lo/jb;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lo/jb;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lo/jb;->p()V

    return-void
.end method

.method static synthetic d(Lo/jb;)Lo/cz;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->b:Lo/cz;

    return-object p0
.end method

.method private d(Landroid/content/IntentFilter;[Ljava/lang/String;)V
    .locals 3

    .line 437
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 438
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "flush"

    .line 597
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 599
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    .line 600
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "nf_log"

    if-eqz v2, :cond_0

    const-string p1, "Pause CL and PT events!"

    .line 601
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lo/jb;->j()V

    goto :goto_0

    :cond_0
    const-string v2, "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"

    .line 603
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Resume CL and PT events!"

    .line 604
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0, v1}, Lo/jb;->e(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "com.netflix.mediaclient.intent.action.LOG_RESUME_ALL_EVENTS_DELIVERY"

    .line 606
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Start deliverying all events!"

    .line 607
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0}, Lo/jb;->p()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method static synthetic e(Lo/jb;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->c:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object p0
.end method

.method static synthetic f(Lo/jb;)Lo/iI;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->m:Lo/iI;

    return-object p0
.end method

.method static synthetic g(Lo/jb;)Lo/iF;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->r:Lo/iF;

    return-object p0
.end method

.method static synthetic h(Lo/jb;)Lo/iA;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->l:Lo/iA;

    return-object p0
.end method

.method static synthetic j(Lo/jb;)Lo/iG;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/jb;->p:Lo/iG;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 470
    iget-object v0, p0, Lo/jb;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lo/jb;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "nf_log"

    const-string v2, "LoggingAgent::startDelivery: log delivery was already started!"

    .line 473
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "nf_log"

    const-string v2, "LoggingAgent::startDelivery: starting log delivery!"

    .line 477
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lo/jb;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 479
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    iget-object v0, p0, Lo/jb;->m:Lo/iI;

    invoke-interface {v0}, Lo/iI;->f()V

    .line 482
    iget-object v0, p0, Lo/jb;->l:Lo/iA;

    invoke-virtual {v0}, Lo/iA;->b()V

    .line 483
    iget-object v0, p0, Lo/jb;->r:Lo/iF;

    invoke-virtual {v0}, Lo/iF;->c()V

    .line 484
    iget-object v0, p0, Lo/jb;->p:Lo/iG;

    invoke-virtual {v0}, Lo/iG;->c()V

    return-void

    :catchall_0
    move-exception v1

    .line 479
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private q()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    .line 255
    instance-of v1, v0, Lo/cG;

    if-eqz v1, :cond_0

    .line 256
    check-cast v0, Lo/cG;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lo/cG;->b(Lo/cG$StateListAnimator;Z)V

    :cond_0
    return-void
.end method

.method private r()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->af()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->af()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private t()V
    .locals 5

    const-string v0, "nf_log"

    const-string v1, "Register receiver"

    .line 417
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    const-string v3, "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"

    const-string v4, "com.netflix.mediaclient.intent.action.LOG_RESUME_ALL_EVENTS_DELIVERY"

    .line 421
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-direct {p0, v1, v2}, Lo/jb;->d(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.category.LOGGING"

    .line 424
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v2, 0x3e7

    .line 425
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    iget-object v3, p0, Lo/jb;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Failed to register "

    .line 431
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lo/zz;
    .locals 1

    .line 324
    iget-object v0, p0, Lo/jb;->j:Lo/zz;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "nf_log"

    const-string v1, "Intent is null"

    .line 396
    invoke-static {p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "logging"

    return-object v0
.end method

.method public b()Lo/iS;
    .locals 1

    .line 330
    iget-object v0, p0, Lo/jb;->r:Lo/iF;

    return-object v0
.end method

.method public c()Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .line 360
    invoke-virtual {p0}, Lo/jb;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    .line 219
    invoke-virtual {p0}, Lo/jb;->l()Lo/zS;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ClientLoggingAgent not ready to deliver startup logblob."

    const-string p2, "nf_log"

    .line 221
    invoke-static {p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lo/jb;->a()Lo/zz;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/zz;->b(Ljava/lang/String;)V

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lo/jb$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/jb$3;-><init>(Lo/jb;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-wide/16 p1, 0x0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v7, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public d()Lo/iU;
    .locals 1

    .line 335
    iget-object v0, p0, Lo/jb;->p:Lo/iG;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "nf_log"

    const-string v1, "PNA:: destroy and unregister receiver"

    .line 266
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/jb;->x:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 270
    iget-object v0, p0, Lo/jb;->s:Lo/ExpandableListActivity$StateListAnimator;

    invoke-static {v0}, Lo/ExpandableListActivity;->e(Lo/ExpandableListActivity$StateListAnimator;)V

    .line 272
    iget-object v0, p0, Lo/jb;->f:Lo/jj;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lo/jj;->b()V

    .line 276
    :cond_0
    iget-object v0, p0, Lo/jb;->m:Lo/iI;

    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v0}, Lo/iI;->a()V

    .line 280
    :cond_1
    iget-object v0, p0, Lo/jb;->l:Lo/iA;

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Lo/iA;->a()V

    .line 284
    :cond_2
    iget-object v0, p0, Lo/jb;->q:Lo/jS;

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Lo/jS;->e()V

    .line 288
    :cond_3
    invoke-super {p0}, Lo/bV;->destroy()V

    return-void
.end method

.method protected doInit()V
    .locals 9

    const-string v0, "nf_log"

    const-string v1, "ClientLoggingAgent::init start "

    .line 162
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lo/jb;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v1

    .line 165
    new-instance v8, Lo/iP;

    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lo/jb;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v5

    iget-object v6, p0, Lo/jb;->b:Lo/cz;

    move-object v2, v8

    move-object v4, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lo/iP;-><init>(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/SmartSelectSprite;)V

    iput-object v8, p0, Lo/jb;->m:Lo/iI;

    .line 166
    new-instance v2, Lo/jj;

    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lo/jj;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/cz;)V

    iput-object v2, p0, Lo/jb;->f:Lo/jj;

    .line 167
    iget-object v2, p0, Lo/jb;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lo/jb;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    iget-object v4, p0, Lo/jb;->b:Lo/cz;

    invoke-static {v2, p0, v3, v4, v1}, Lo/iY;->c(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/SmartSelectSprite;)Lo/iA;

    move-result-object v2

    iput-object v2, p0, Lo/jb;->l:Lo/iA;

    .line 168
    new-instance v2, Lo/iN;

    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/iN;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo/jb;->t:Lo/iN;

    .line 169
    iget-object v2, p0, Lo/jb;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lo/jb;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v4

    invoke-static {v2, p0, v3, v4, v1}, Lo/iY;->a(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/SmartSelectSprite;)Lo/iF;

    move-result-object v1

    iput-object v1, p0, Lo/jb;->r:Lo/iF;

    .line 170
    new-instance v1, Lo/jf;

    invoke-virtual {p0}, Lo/jb;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v2

    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lo/jf;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Landroid/content/Context;)V

    iput-object v1, p0, Lo/jb;->p:Lo/iG;

    .line 171
    new-instance v1, Lo/kh;

    iget-object v2, p0, Lo/jb;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lo/kh;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/jb;->g:Lo/kh;

    const-string v1, "ClientLoggingAgent::init create executor thread start "

    .line 174
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v1, Lo/jb;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v1, "ClientLoggingAgent::init create executor thread done "

    .line 176
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lo/jb;->v:Ljava/lang/Runnable;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0xea60

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 180
    iget-object v1, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lo/jb$4;

    invoke-direct {v2, p0}, Lo/jb$4;-><init>(Lo/jb;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 187
    iget-object v1, p0, Lo/jb;->m:Lo/iI;

    iget-object v2, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v2}, Lo/iI;->d(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 188
    iget-object v1, p0, Lo/jb;->f:Lo/jj;

    invoke-virtual {v1}, Lo/jj;->c()V

    .line 189
    iget-object v1, p0, Lo/jb;->l:Lo/iA;

    iget-object v2, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Lo/iA;->e(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 190
    iget-object v1, p0, Lo/jb;->q:Lo/jS;

    invoke-virtual {p0}, Lo/jb;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lo/jb;->getOfflineAgent()Lo/nS;

    move-result-object v3

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v4

    invoke-virtual {p0}, Lo/jb;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lo/jS;->b(Landroid/os/Handler;Lo/nS;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 191
    iget-object v1, p0, Lo/jb;->r:Lo/iF;

    iget-object v2, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Lo/iF;->d(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 192
    iget-object v1, p0, Lo/jb;->p:Lo/iG;

    iget-object v2, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Lo/iG;->b(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 193
    iget-object v1, p0, Lo/jb;->g:Lo/kh;

    invoke-virtual {v1}, Lo/kh;->c()V

    .line 195
    invoke-direct {p0}, Lo/jb;->t()V

    .line 196
    sget-object v2, Lo/jF;->c:Lo/jF$ActionBar;

    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-wide v4, Lo/jb;->d:J

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->y()Lo/cy;

    move-result-object v6

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object v1

    invoke-interface {v1}, Lo/cz;->w()Lo/cr;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lo/jF$ActionBar;->c(Landroid/content/Context;JLo/cy;Lo/cr;)V

    .line 197
    invoke-direct {p0}, Lo/jb;->r()Ljava/util/Map;

    move-result-object v1

    .line 198
    sget-object v2, Lo/jB;->c:Lo/jB;

    invoke-virtual {v2, v1}, Lo/jB;->e(Ljava/util/Map;)V

    .line 199
    sget-object v2, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v2}, Lo/jE$ActionBar;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/jE;

    .line 200
    invoke-interface {v3, v1}, Lo/jE;->d(Ljava/util/Map;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0}, Lo/jb;->q()V

    .line 204
    iget-object v1, p0, Lo/jb;->t:Lo/iN;

    iget-object v2, p0, Lo/jb;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lo/jb;->l:Lo/iA;

    invoke-virtual {v1, v2, v3}, Lo/iN;->e(Ljava/util/concurrent/ScheduledExecutorService;Lo/zS;)V

    .line 205
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    iget-object v2, p0, Lo/jb;->l:Lo/iA;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b(Lo/zS;)V

    .line 207
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v1}, Lo/jb;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    const-string v1, "ClientLoggingAgent::init done "

    .line 209
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()Lo/zu;
    .locals 1

    .line 314
    iget-object v0, p0, Lo/jb;->i:Lo/zu;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 524
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "nf_log"

    const-string v0, "Refresh configuration for error and breadcrumb logging"

    .line 525
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v1, Lo/jF;->c:Lo/jF$ActionBar;

    invoke-virtual {p0}, Lo/jb;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-wide v3, Lo/jb;->d:J

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->y()Lo/cy;

    move-result-object v5

    invoke-virtual {p0}, Lo/jb;->getConfigurationAgent()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->w()Lo/cr;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lo/jF$ActionBar;->c(Landroid/content/Context;JLo/cy;Lo/cr;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method f()V
    .locals 2

    .line 448
    iget-object v0, p0, Lo/jb;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public g()J
    .locals 2

    .line 444
    iget-object v0, p0, Lo/jb;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const v1, 0xea60

    mul-int v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    .line 512
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->g:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    return-object v0
.end method

.method public h()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;
    .locals 1

    .line 492
    iget-object v0, p0, Lo/jb;->f:Lo/jj;

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 1

    .line 496
    iget-object v0, p0, Lo/jb;->m:Lo/iI;

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0}, Lo/iI;->h()V

    .line 499
    :cond_0
    iget-object v0, p0, Lo/jb;->l:Lo/iA;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Lo/iA;->c()V

    .line 502
    :cond_1
    iget-object v0, p0, Lo/jb;->r:Lo/iF;

    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {v0}, Lo/iF;->e()V

    .line 505
    :cond_2
    iget-object v0, p0, Lo/jb;->p:Lo/iG;

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {v0}, Lo/iG;->a()V

    :cond_3
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "nf_log"

    const-string v1, "onUserLogout"

    .line 536
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {}, Lo/adP;->e()V

    .line 542
    invoke-static {}, Lo/adP;->c()V

    .line 544
    iget-object v0, p0, Lo/jb;->m:Lo/iI;

    invoke-interface {v0}, Lo/iI;->n()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "nf_log"

    const-string v1, "Flush events"

    .line 563
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public l()Lo/zS;
    .locals 1

    .line 576
    iget-object v0, p0, Lo/jb;->l:Lo/iA;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 581
    invoke-static {}, Lo/adP;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 2

    const-string v0, "nf_log"

    const-string v1, "Flush events"

    .line 553
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lo/jb;->m:Lo/iI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/iI;->b(Z)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 586
    invoke-static {}, Lo/adP;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Lo/jQ;
    .locals 1

    .line 591
    iget-object v0, p0, Lo/jb;->q:Lo/jS;

    return-object v0
.end method
