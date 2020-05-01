.class public Lo/lf;
.super Lo/lc;
.source ""


# instance fields
.field private f:Z

.field private h:Z

.field private i:J

.field public j:Z

.field private k:Lo/kw;

.field private l:Lo/StorageEventListener;

.field private m:Landroid/os/Handler;

.field private n:Landroid/os/HandlerThread;

.field private o:Lo/kE;

.field private p:Lo/StorageEventListener$Application;

.field private q:Lo/aiR;

.field private r:Lo/aiR$Application;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/dial/DialDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/zE;Lo/kI;)V
    .locals 2

    .line 105
    invoke-direct {p0, p1, p3, p2}, Lo/lc;-><init>(Landroid/content/Context;Lo/kI;Lo/zE;)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lo/lf;->h:Z

    const/4 p2, 0x1

    .line 90
    iput-boolean p2, p0, Lo/lf;->f:Z

    .line 102
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lo/lf;->t:Ljava/util/Map;

    .line 697
    new-instance p3, Lo/lf$1;

    invoke-direct {p3, p0}, Lo/lf$1;-><init>(Lo/lf;)V

    iput-object p3, p0, Lo/lf;->p:Lo/StorageEventListener$Application;

    .line 789
    new-instance p3, Lo/lf$10;

    invoke-direct {p3, p0}, Lo/lf$10;-><init>(Lo/lf;)V

    iput-object p3, p0, Lo/lf;->r:Lo/aiR$Application;

    const-string p3, "MdxStackDial"

    const-string v0, "Starting MdxStackDial"

    .line 107
    invoke-static {p3, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Creating MDX HTTP Server"

    .line 108
    invoke-static {p3, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lo/dV;->h()Z

    move-result v0

    iput-boolean v0, p0, Lo/lf;->j:Z

    .line 111
    new-instance v0, Lo/kw;

    invoke-direct {v0, p0}, Lo/kw;-><init>(Lo/lf;)V

    iput-object v0, p0, Lo/lf;->k:Lo/kw;

    .line 112
    iget-boolean v0, p0, Lo/lf;->j:Z

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lo/lf;->u()V

    :cond_0
    const-string v0, "Creating Volley HTTP Client"

    .line 116
    invoke-static {p3, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p3, Lo/kE;

    iget-object v0, p0, Lo/lf;->d:Landroid/content/Context;

    invoke-direct {p3, v0}, Lo/kE;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lo/lf;->o:Lo/kE;

    .line 119
    new-instance p3, Lo/StorageEventListener;

    iget-object v0, p0, Lo/lf;->o:Lo/kE;

    invoke-direct {p3, v0}, Lo/StorageEventListener;-><init>(Lo/TimerStat;)V

    iput-object p3, p0, Lo/lf;->l:Lo/StorageEventListener;

    .line 120
    new-instance p3, Lo/aiR;

    invoke-direct {p3}, Lo/aiR;-><init>()V

    iput-object p3, p0, Lo/lf;->q:Lo/aiR;

    .line 122
    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "MdxStackDialThread"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lo/lf;->n:Landroid/os/HandlerThread;

    .line 123
    iget-object p3, p0, Lo/lf;->n:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance p3, Landroid/os/Handler;

    iget-object v0, p0, Lo/lf;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lo/lf;->m:Landroid/os/Handler;

    .line 127
    iget-boolean p3, p0, Lo/lf;->j:Z

    if-eqz p3, :cond_3

    .line 128
    new-instance p3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 129
    invoke-static {p3}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 131
    iget v0, p3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    iget p3, p3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 132
    :cond_2
    invoke-direct {p0, p1}, Lo/lf;->c(Z)V

    .line 134
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object p1

    .line 135
    new-instance p2, Lo/lf$4;

    invoke-direct {p2, p0}, Lo/lf$4;-><init>(Lo/lf;)V

    invoke-interface {p1, p2}, Lo/Plugin;->b(Lo/JavascriptInterface;)Z

    :cond_3
    return-void
.end method

.method static synthetic a(Lo/lf;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lo/lf;->d(Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/netflix/ssdp/SsdpDevice;)Ljava/lang/String;
    .locals 0

    .line 541
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->b()Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 544
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lo/lf;)Lo/aiR;
    .locals 0

    .line 72
    iget-object p0, p0, Lo/lf;->q:Lo/aiR;

    return-object p0
.end method

.method static synthetic a(Lo/lf;Lcom/netflix/dial/DialDevice;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lo/lf;->b(Lcom/netflix/dial/DialDevice;)V

    return-void
.end method

.method static synthetic a(Lo/lf;Lo/mm;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lo/lf;->e(Lo/mm;)V

    return-void
.end method

.method static synthetic a(Lo/lf;ZLo/aiY;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/lf;->e(ZLo/aiY;)V

    return-void
.end method

.method private a(Lo/mm;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/mm;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2378

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/mdxping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/mo;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lo/kw;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-virtual {p1}, Lo/mm;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/mr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0, p1, v0, v1}, Lo/lf;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/netflix/dial/DialDevice;)V
    .locals 2

    .line 617
    iget-object v0, p0, Lo/lf;->t:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-direct {p0}, Lo/lf;->r()V

    return-void
.end method

.method static synthetic b(Lo/lf;)V
    .locals 0

    invoke-direct {p0}, Lo/lf;->z()V

    return-void
.end method

.method static synthetic b(Lo/lf;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lo/lf;->c(Z)V

    return-void
.end method

.method static synthetic b(Lo/lf;ZLo/aiY;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/lf;->d(ZLo/aiY;)V

    return-void
.end method

.method private b(Lo/mm;)V
    .locals 3

    .line 312
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    new-instance v2, Lo/lf$2;

    invoke-direct {v2, p0, p1}, Lo/lf$2;-><init>(Lo/lf;Lo/mm;)V

    const-string p1, "Netflix"

    invoke-virtual {v0, v1, p1, v2}, Lo/StorageEventListener;->a(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;)V

    return-void
.end method

.method private b(Lo/mm;I)Z
    .locals 8

    .line 400
    invoke-virtual {p1}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 404
    :cond_0
    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {}, Lo/eN;->f()Z

    move-result v2

    const-string v3, "MdxStackDial"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 410
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 411
    new-instance v5, Lo/lo;

    invoke-direct {v5, p0, p1, v0}, Lo/lo;-><init>(Lo/lf;Lo/mm;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    mul-int/lit16 p2, p2, 0x7d0

    int-to-long v5, p2

    .line 448
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, p2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v4

    const-string p1, "Failed to get MDX device for target: %s"

    .line 450
    invoke-static {v3, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 451
    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    return v4

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_5

    .line 461
    :try_start_1
    iget-object v5, p0, Lo/lf;->q:Lo/aiR;

    const-string v6, "urn:mdx-netflix-com:service:target:1"

    iget-object v7, p0, Lo/lf;->r:Lo/aiR$Application;

    invoke-virtual {v5, v6, v7}, Lo/aiR;->e(Ljava/lang/String;Lo/aiR$Application;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 462
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/ssdp/SsdpDevice;

    .line 463
    invoke-virtual {v6}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string p2, "Found MDX device: %s"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v6, v2, v4

    .line 464
    invoke-static {v3, p2, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 466
    invoke-virtual {p1}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p2

    if-nez p2, :cond_3

    .line 467
    invoke-direct {p0, p1, v6}, Lo/lf;->e(Lo/mm;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p2

    .line 468
    invoke-virtual {p1}, Lo/mm;->s()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Z)V

    .line 469
    invoke-virtual {p1, p2}, Lo/mm;->e(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string p2, "Failed to get MDX device at hostname: %s"

    .line 476
    invoke-static {v3, p2, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5
    return v4
.end method

.method static synthetic c(Lo/lf;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lo/lf;->i:J

    return-wide v0
.end method

.method static synthetic c(Lo/lf;Lo/mo;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lo/lf;->e(Lo/mo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Lo/mm;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .line 415
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 417
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 420
    :cond_1
    invoke-direct {p0, p1}, Lo/lf;->a(Lo/mm;)V

    .line 422
    invoke-static {}, Lo/eN;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    iget-object v3, p0, Lo/lf;->r:Lo/aiR$Application;

    const-string v4, "urn:mdx-netflix-com:service:target:1"

    invoke-virtual {v0, v4, v3}, Lo/aiR;->e(Ljava/lang/String;Lo/aiR$Application;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/ssdp/SsdpDevice;

    .line 425
    invoke-virtual {v3}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v5, "MdxStackDial"

    const-string v6, "Found MDX device: %s"

    .line 426
    invoke-static {v5, v6, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 428
    invoke-virtual {p1}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v4

    if-nez v4, :cond_2

    .line 429
    invoke-direct {p0, p1, v3}, Lo/lf;->e(Lo/mm;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p2

    .line 430
    invoke-virtual {p1}, Lo/mm;->s()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Z)V

    .line 431
    invoke-virtual {p1, p2}, Lo/mm;->e(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x7d0

    .line 440
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 444
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic c(Lo/mo;)Ljava/lang/Boolean;
    .locals 2

    .line 230
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {v0}, Lo/StorageEventListener;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/dial/DialDevice;

    .line 231
    invoke-virtual {v1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/mo;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 238
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/netflix/ssdp/SsdpDevice;)Ljava/lang/String;
    .locals 0

    .line 534
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->b()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 537
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lo/lf;Lo/mm;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/lf;->d(Lo/mm;)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1000
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MdxStackDial"

    const-string v2, "setMdxAppState - inForeground: %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1001
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/lm;

    invoke-direct {v1, p0, p1}, Lo/lm;-><init>(Lo/lf;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 9

    const-string v0, "MdxStackDial"

    .line 512
    invoke-direct {p0, p1}, Lo/lf;->c(Lcom/netflix/ssdp/SsdpDevice;)Ljava/lang/String;

    move-result-object v4

    .line 513
    invoke-direct {p0, p1}, Lo/lf;->a(Lcom/netflix/ssdp/SsdpDevice;)Ljava/lang/String;

    move-result-object v5

    .line 514
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-direct {p0, p1}, Lo/lf;->e(Lcom/netflix/ssdp/SsdpDevice;)I

    move-result v6

    .line 517
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->g()Ljava/util/Map;

    move-result-object p1

    const-string v1, "X-Friendly-Name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 519
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lo/adl;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    .line 521
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to Base64 decode friendly name - friendly name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    :goto_0
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, p1, v1

    const/4 v1, 0x1

    aput-object v5, p1, v1

    const/4 v1, 0x2

    aput-object v2, p1, v1

    const/4 v1, 0x3

    .line 525
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, p1, v1

    const-string v1, "Creating MDX only SessionMdxTarget with host: %s, port: %s, esn: %s, regAccept: %s"

    .line 524
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    new-instance p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLo/lc;)V

    return-object p1
.end method

.method static synthetic d(Lo/lf;Lo/mm;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lo/lf;->e(Lo/mm;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo/lf;Lo/mm;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/lf;->c(Lo/mm;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private d(Lo/aiY;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 168
    iget-boolean v1, p0, Lo/lf;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/lf;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MdxStackDial"

    const-string v2, "startDiscovery - onWifi: %b, inForeground: %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    iget-boolean v0, p0, Lo/lf;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/lf;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/lf;->h:Z

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    iget-object v2, p0, Lo/lf;->p:Lo/StorageEventListener$Application;

    const-string v3, "Netflix"

    invoke-virtual {v0, v3, v2, p1}, Lo/StorageEventListener;->a(Ljava/lang/String;Lo/StorageEventListener$Application;Lo/aiY;)V

    .line 171
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    iget-object v2, p0, Lo/lf;->r:Lo/aiR$Application;

    const-string v3, "urn:mdx-netflix-com:service:target:1"

    invoke-virtual {v0, v3, v2, p1}, Lo/aiR;->c(Ljava/lang/String;Lo/aiR$Application;Lo/aiY;)V

    const-string p1, "Discovery Started"

    .line 172
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic d(Lo/lf;)V
    .locals 0

    invoke-direct {p0}, Lo/lf;->w()V

    return-void
.end method

.method static synthetic d(Lo/lf;Lo/mm;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lo/lf;->b(Lo/mm;)V

    return-void
.end method

.method private synthetic d(Lo/mm;)V
    .locals 4

    .line 297
    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/dial/DialDevice;->j()I

    move-result v2

    mul-int/lit16 v2, v2, 0x7d0

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/lf;->i:J

    .line 300
    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice;->d()Lcom/netflix/dial/DialDevice$AppState;

    move-result-object v0

    sget-object v1, Lcom/netflix/dial/DialDevice$AppState;->b:Lcom/netflix/dial/DialDevice$AppState;

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aiR;->b(Lcom/netflix/ssdp/SsdpDevice;)V

    .line 302
    invoke-virtual {p1}, Lo/mm;->p()V

    .line 307
    :cond_0
    invoke-direct {p0, p1}, Lo/lf;->b(Lo/mm;)V

    return-void
.end method

.method private synthetic d(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "Resetting all device state, and forcing discovery"

    .line 266
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "WIFI"

    .line 267
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo/lf;->f:Z

    .line 269
    iget-object p2, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {p2}, Lo/StorageEventListener;->d()V

    .line 270
    iget-object p2, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {p2}, Lo/StorageEventListener;->b()V

    .line 271
    iget-object p2, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {p2}, Lo/aiR;->b()V

    .line 272
    iget-object p2, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {p2}, Lo/aiR;->d()V

    .line 274
    invoke-virtual {p0, v0}, Lo/lf;->b(Z)V

    .line 276
    invoke-direct {p0}, Lo/lf;->p()V

    .line 278
    iget-boolean p2, p0, Lo/lf;->j:Z

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lo/lf;->f:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 280
    invoke-direct {p0}, Lo/lf;->x()V

    .line 283
    :cond_2
    iget-object p1, p0, Lo/lf;->a:Lo/kH;

    invoke-interface {p1}, Lo/kH;->e()V

    return-void
.end method

.method private synthetic d(ZLo/aiY;)V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "restartMdxDiscovery - disabling then enabling"

    .line 193
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->b()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 198
    new-instance v0, Lo/ll;

    invoke-direct {v0, p0}, Lo/ll;-><init>(Lo/lf;)V

    invoke-virtual {p0, p1, v0}, Lo/lf;->c(ZLo/UserHandle;)V

    .line 209
    iget-object p1, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {p1}, Lo/aiR;->d()V

    .line 212
    :cond_0
    iget-object p1, p0, Lo/lf;->q:Lo/aiR;

    iget-object v0, p0, Lo/lf;->r:Lo/aiR$Application;

    const-string v1, "urn:mdx-netflix-com:service:target:1"

    invoke-virtual {p1, v1, v0, p2}, Lo/aiR;->c(Ljava/lang/String;Lo/aiR$Application;Lo/aiY;)V

    return-void
.end method

.method private e(Lcom/netflix/ssdp/SsdpDevice;)I
    .locals 3

    .line 548
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->g()Ljava/util/Map;

    move-result-object p1

    const-string v0, "X-Accepts-Registration"

    .line 551
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 552
    invoke-static {p1}, Lo/aev;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 553
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "MdxStackDial"

    const-string v2, "registration acceptance header is not numeric: %s"

    .line 556
    invoke-static {p1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return v1
.end method

.method static synthetic e(Lo/lf;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lo/lf;->m:Landroid/os/Handler;

    return-object p0
.end method

.method private e(Lo/mm;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 13

    .line 494
    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v0

    .line 496
    invoke-direct {p0, p2}, Lo/lf;->c(Lcom/netflix/ssdp/SsdpDevice;)Ljava/lang/String;

    move-result-object v4

    .line 497
    invoke-direct {p0, p2}, Lo/lf;->a(Lcom/netflix/ssdp/SsdpDevice;)Ljava/lang/String;

    move-result-object v5

    .line 498
    invoke-virtual {p2}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-direct {p0, p2}, Lo/lf;->e(Lcom/netflix/ssdp/SsdpDevice;)I

    move-result v6

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, p2, v1

    const/4 v1, 0x1

    aput-object v5, p2, v1

    const/4 v1, 0x2

    aput-object v2, p2, v1

    .line 502
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, p2, v3

    const-string v1, "MdxStackDial"

    const-string v3, "Creating SessionMdxTarget with host: %s, port: %s, esn: %s, regAccept: %s"

    .line 501
    invoke-static {v1, v3, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 504
    new-instance p2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 505
    invoke-virtual {p1}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->e()Ljava/lang/String;

    move-result-object v8

    .line 507
    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->h()Ljava/lang/String;

    move-result-object v10

    .line 508
    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->f()Z

    move-result v12

    const/4 v7, 0x0

    move-object v1, p2

    move-object v11, p0

    invoke-direct/range {v1 .. v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;Z)V

    return-object p2
.end method

.method static synthetic e(Lo/lf;Lo/mo;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lo/lf;->c(Lo/mo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Lo/mo;)Ljava/lang/Boolean;
    .locals 2

    .line 200
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/ssdp/SsdpDevice;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/mo;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 202
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 206
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic e(Lo/lf;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/lf;->e(Z)V

    return-void
.end method

.method static synthetic e(Lo/lf;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/lf;->d(ZLjava/lang/String;)V

    return-void
.end method

.method private e(Lo/mm;)V
    .locals 3

    .line 359
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {p1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/dial/DialDevice;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/lf$3;

    invoke-direct {v2, p0, p1}, Lo/lf$3;-><init>(Lo/lf;Lo/mm;)V

    const-string p1, "Netflix"

    invoke-virtual {v0, v1, p1, v2}, Lo/StorageEventListener;->c(Ljava/lang/String;Ljava/lang/String;Lo/StorageEventListener$StateListAnimator;)V

    return-void
.end method

.method private synthetic e(Z)V
    .locals 1

    .line 1002
    iput-boolean p1, p0, Lo/lf;->h:Z

    if-eqz p1, :cond_0

    .line 1005
    invoke-direct {p0}, Lo/lf;->p()V

    .line 1007
    iget-object p1, p0, Lo/lf;->k:Lo/kw;

    invoke-virtual {p1}, Lo/kw;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1008
    invoke-direct {p0}, Lo/lf;->u()V

    goto :goto_0

    .line 1011
    :cond_0
    invoke-direct {p0}, Lo/lf;->q()V

    .line 1013
    iget-object p1, p0, Lo/lf;->k:Lo/kw;

    invoke-virtual {p1}, Lo/kw;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/lf;->c:Lo/kI;

    invoke-virtual {p1}, Lo/kI;->q()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MdxStackDial"

    const-string v0, "Stopped MDX HTTP Server"

    .line 1014
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object p1, p0, Lo/lf;->k:Lo/kw;

    invoke-virtual {p1}, Lo/kw;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic e(ZLo/aiY;)V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "restartDialDiscovery - disabling then enabling"

    .line 223
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {v0}, Lo/StorageEventListener;->d()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 228
    new-instance v0, Lo/lj;

    invoke-direct {v0, p0}, Lo/lj;-><init>(Lo/lf;)V

    invoke-virtual {p0, p1, v0}, Lo/lf;->c(ZLo/UserHandle;)V

    .line 241
    iget-object p1, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {p1}, Lo/StorageEventListener;->b()V

    .line 244
    :cond_0
    iget-object p1, p0, Lo/lf;->l:Lo/StorageEventListener;

    iget-object v0, p0, Lo/lf;->p:Lo/StorageEventListener$Application;

    const-string v1, "Netflix"

    invoke-virtual {p1, v1, v0, p2}, Lo/StorageEventListener;->a(Ljava/lang/String;Lo/StorageEventListener$Application;Lo/aiY;)V

    return-void
.end method

.method static synthetic e(Lo/lf;Lo/mm;I)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lo/lf;->b(Lo/mm;I)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lo/lf;)V
    .locals 0

    invoke-direct {p0}, Lo/lf;->v()V

    return-void
.end method

.method static synthetic g(Lo/lf;)V
    .locals 0

    invoke-direct {p0}, Lo/lf;->y()V

    return-void
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0}, Lo/lf;->d(Lo/aiY;)V

    return-void
.end method

.method private q()V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "stopDiscovery"

    .line 181
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {v0}, Lo/StorageEventListener;->d()V

    .line 183
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->b()V

    return-void
.end method

.method private r()V
    .locals 9

    const-string v0, "Error closing ObjectOutputStream"

    const-string v1, "Error closing FileOutputStream"

    const-string v2, "MdxStackDial"

    const/4 v3, 0x0

    .line 626
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dialDevices"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    :try_start_2
    iget-object v3, p0, Lo/lf;->t:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/dial/DialDevice;

    .line 630
    invoke-virtual {v6}, Lcom/netflix/dial/DialDevice;->h()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 631
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 640
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 642
    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_5

    :catch_2
    move-exception v5

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    :goto_2
    :try_start_5
    const-string v6, "Error storing Persistent Devices"

    .line 636
    invoke-static {v2, v6, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_3

    .line 640
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v3

    .line 642
    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 646
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    .line 648
    invoke-static {v2, v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-void

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_5

    .line 640
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    .line 642
    invoke-static {v2, v1, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 646
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 648
    invoke-static {v2, v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    :cond_6
    :goto_7
    throw v3
.end method

.method private u()V
    .locals 5

    const-string v0, "MdxStackDial"

    .line 982
    :try_start_0
    iget-object v1, p0, Lo/lf;->k:Lo/kw;

    invoke-virtual {v1}, Lo/kw;->a()V

    const-string v1, "Started MDX HTTP Server"

    .line 983
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 985
    sget v3, Lo/kw;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Failed to start MDX HTTP Server on port: %d"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 987
    invoke-static {}, Lo/fi;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/kw;->c:I

    const/16 v2, 0x2378

    if-ne v0, v2, :cond_0

    .line 988
    sput v4, Lo/kw;->c:I

    .line 989
    new-instance v0, Lo/kw;

    invoke-direct {v0, p0}, Lo/kw;-><init>(Lo/lf;)V

    iput-object v0, p0, Lo/lf;->k:Lo/kw;

    .line 990
    invoke-direct {p0}, Lo/lf;->u()V

    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lo/lf;->b:Lo/kO;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/kO;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic v()V
    .locals 1

    .line 260
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->d()V

    return-void
.end method

.method private synthetic w()V
    .locals 1

    .line 162
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {v0}, Lo/StorageEventListener;->d()V

    .line 163
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->b()V

    return-void
.end method

.method private x()V
    .locals 11

    const-string v0, "Error closing ObjectInputStream"

    const-string v1, "Error closing FileInputStream"

    const-string v2, "MdxStackDial"

    const/4 v3, 0x0

    .line 658
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dialDevices"

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 659
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/dial/DialDevice;
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    .line 685
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 687
    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    goto/16 :goto_9

    .line 666
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Lcom/netflix/dial/DialDevice;->h()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 667
    invoke-virtual {v3}, Lcom/netflix/dial/DialDevice;->g()V

    const-string v6, "Persistent Device added: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 668
    invoke-virtual {v3}, Lcom/netflix/dial/DialDevice;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 669
    iget-object v6, p0, Lo/lf;->t:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/upnp/UpnpDevice;->n()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-virtual {v3}, Lcom/netflix/dial/DialDevice;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lo/mo;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 673
    new-instance v6, Lo/mm;

    invoke-direct {v6, v3, p0}, Lo/mm;-><init>(Lcom/netflix/dial/DialDevice;Lo/lf;)V

    .line 674
    iget-object v3, p0, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    goto :goto_4

    :catch_2
    move-exception v5

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    goto :goto_2

    :catch_3
    move-object v5, v3

    goto :goto_7

    :catchall_1
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    :goto_2
    :try_start_6
    const-string v6, "Error parsing Persistent Devices"

    .line 681
    invoke-static {v2, v6, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_3

    .line 685
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception v3

    .line 687
    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    if-eqz v5, :cond_7

    .line 691
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_9

    :catchall_2
    move-exception v3

    :goto_4
    if-eqz v4, :cond_4

    .line 685
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :catch_6
    move-exception v4

    .line 687
    invoke-static {v2, v1, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 691
    :try_start_a
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 693
    invoke-static {v2, v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    :cond_5
    :goto_6
    throw v3

    :catch_8
    move-object v4, v3

    move-object v5, v4

    :catch_9
    :goto_7
    if-eqz v4, :cond_6

    .line 685
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_8

    :catch_a
    move-exception v3

    .line 687
    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    .line 691
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_9

    :catch_b
    move-exception v1

    .line 693
    invoke-static {v2, v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_9
    return-void
.end method

.method private synthetic y()V
    .locals 1

    .line 609
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {v0}, Lo/StorageEventListener;->d()V

    .line 610
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->b()V

    .line 611
    iget-object v0, p0, Lo/lf;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method private synthetic z()V
    .locals 3

    .line 153
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    iget-object v1, p0, Lo/lf;->p:Lo/StorageEventListener$Application;

    const-string v2, "Netflix"

    invoke-virtual {v0, v2, v1}, Lo/StorageEventListener;->b(Ljava/lang/String;Lo/StorageEventListener$Application;)V

    .line 154
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    iget-object v1, p0, Lo/lf;->r:Lo/aiR$Application;

    const-string v2, "urn:mdx-netflix-com:service:target:1"

    invoke-virtual {v0, v2, v1}, Lo/aiR;->b(Ljava/lang/String;Lo/aiR$Application;)V

    return-void
.end method


# virtual methods
.method public a(ZLo/aiY;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lo/lf;->l:Lo/StorageEventListener;

    invoke-virtual {v0}, Lo/StorageEventListener;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/li;

    invoke-direct {v1, p0, p1, p2}, Lo/li;-><init>(Lo/lf;ZLo/aiY;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(ZLo/aiY;)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1, p2}, Lo/lf;->a(ZLo/aiY;)V

    .line 250
    invoke-virtual {p0, p1, p2}, Lo/lf;->c(ZLo/aiY;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0, v0, v1}, Lo/lf;->c(ZLo/aiY;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "MdxStackDial"

    const-string v2, "sendMessage message=%s url=%s uuid=%s"

    .line 564
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 570
    iget-object v0, p0, Lo/lf;->o:Lo/kE;

    new-instance v1, Lo/lf$5;

    invoke-direct {v1, p0, p3}, Lo/lf$5;-><init>(Lo/lf;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1, v1}, Lo/kE;->c(Ljava/lang/String;Ljava/lang/String;Lo/aiW$TaskDescription;)V

    return-void
.end method

.method public c(ZLo/aiY;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lo/lf;->q:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/lk;

    invoke-direct {v1, p0, p1, p2}, Lo/lk;-><init>(Lo/lf;ZLo/aiY;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "Enabling DIAL"

    .line 151
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/le;

    invoke-direct {v1, p0}, Lo/le;-><init>(Lo/lf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 289
    invoke-virtual {p0, p1}, Lo/lf;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    check-cast v0, Lo/mm;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MdxStackDial"

    const-string v1, "Failed to launch target.  No DIAL target exists with UUID: %s"

    .line 292
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 296
    :cond_0
    iget-object p1, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/lp;

    invoke-direct {v1, p0, v0}, Lo/lp;-><init>(Lo/lf;Lo/mm;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "Disabling DIAL"

    .line 160
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/lh;

    invoke-direct {v1, p0}, Lo/lh;-><init>(Lo/lf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 21

    const-string v0, "fromuuid"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "MdxStackDial"

    const-string v5, "handleIncomingMdxMessage %s"

    .line 1022
    invoke-static {v4, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1025
    :try_start_0
    invoke-static/range {p1 .. p1}, Lo/mr;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "action"

    .line 1026
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lo/lf;->k()Lo/mo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1033
    invoke-virtual {v6}, Lo/mo;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "targetuuid"

    .line 1034
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x3

    const-string v9, "pingresponse"

    if-eqz v6, :cond_2

    .line 1036
    :try_start_1
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, -0x1

    .line 1037
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "session"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v7, "regpairreply"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "regpairerror"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "error"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v7, "pairingresponse"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v7, "broadcast"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1053
    :pswitch_0
    invoke-virtual {v6, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 1050
    :pswitch_1
    invoke-virtual {v6, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 1047
    :pswitch_2
    invoke-virtual {v6, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 1044
    :pswitch_3
    invoke-virtual {v6, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 1041
    :pswitch_4
    invoke-virtual {v6, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e(Lorg/json/JSONObject;)V

    goto :goto_3

    :goto_2
    const-string v0, "handleIncomingMdxMessage, unknown message action"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 1056
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v6, p0

    goto/16 :goto_6

    .line 1060
    :cond_2
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v1, "id"

    .line 1065
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v6, p0

    :try_start_2
    invoke-virtual {v6, v1}, Lo/lf;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v1

    check-cast v1, Lo/mm;

    if-eqz v1, :cond_5

    .line 1067
    invoke-virtual {v1}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "responseheaders.X-Accepts-Registration"

    const-string v5, "3"

    .line 1068
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1069
    invoke-static {v3}, Lo/aev;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v14, v8

    goto :goto_4

    :cond_3
    const/4 v14, 0x3

    .line 1070
    :goto_4
    invoke-virtual {v1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v3

    .line 1072
    new-instance v5, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 1073
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lo/mm;->n()Ljava/lang/String;

    move-result-object v12

    const/16 v0, 0x2378

    .line 1074
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v3}, Lcom/netflix/upnp/UpnpDevice;->e()Ljava/lang/String;

    move-result-object v16

    .line 1075
    invoke-virtual {v3}, Lcom/netflix/upnp/UpnpDevice;->i()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Lcom/netflix/upnp/UpnpDevice;->h()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice;->f()Z

    move-result v20

    move-object v9, v5

    move-object/from16 v19, p0

    invoke-direct/range {v9 .. v20}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;Z)V

    .line 1078
    invoke-virtual {v1}, Lo/mm;->s()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Z)V

    .line 1080
    invoke-virtual {v1, v5}, Lo/mm;->e(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V

    goto :goto_6

    :cond_4
    move-object/from16 v6, p0

    const-string v0, "handleIncomingMdxMessage, no device to handle %s message"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 1084
    invoke-static {v4, v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v6, p0

    :goto_5
    const-string v1, "handleIncomingMdxMessage, JSONException %s"

    .line 1087
    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x607e173f -> :sswitch_6
        -0x3d8324f7 -> :sswitch_5
        -0x5abfc4d -> :sswitch_4
        0x5c4d208 -> :sswitch_3
        0x29e0d55a -> :sswitch_2
        0x2a92163c -> :sswitch_1
        0x76508296 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    .line 264
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x1

    aput-object p4, p3, v0

    const-string p4, "MdxStackDial"

    const-string v0, "Setting MDX network interface - name: %s, connected: %b"

    invoke-static {p4, v0, p3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 265
    iget-object p3, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance p4, Lo/lr;

    invoke-direct {p4, p0, p2, p1}, Lo/lr;-><init>(Lo/lf;ZLjava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i()Landroid/os/Looper;
    .locals 1

    .line 603
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 2

    .line 608
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/lq;

    invoke-direct {v1, p0}, Lo/lq;-><init>(Lo/lf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public s()V
    .locals 2

    .line 260
    iget-object v0, p0, Lo/lf;->m:Landroid/os/Handler;

    new-instance v1, Lo/ln;

    invoke-direct {v1, p0}, Lo/ln;-><init>(Lo/lf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v0, v1}, Lo/lf;->b(ZLo/aiY;)V

    return-void
.end method
