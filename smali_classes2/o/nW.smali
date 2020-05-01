.class public Lo/nW;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/pq$Activity;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/nV;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Lcom/netflix/mediaclient/service/NetflixPowerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/nW;->c:Ljava/util/List;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/nW;->d:J

    return-void
.end method

.method static synthetic a(Lo/nW;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/nW;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 359
    iget-wide v2, p0, Lo/nW;->d:J

    sget-wide v4, Lo/pq$Activity;->d:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 360
    iput-wide v0, p0, Lo/nW;->d:J

    .line 361
    iget-object v0, p0, Lo/nW;->a:Lo/pq$Activity;

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0}, Lo/pq$Activity;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/nW;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/nW;->c()V

    return-void
.end method

.method static synthetic c(Lo/nW;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/nW;->c:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 336
    iget-object v0, p0, Lo/nW;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 337
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nV;

    if-eqz v1, :cond_0

    .line 339
    invoke-interface {v1}, Lo/nV;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...removing deadListener... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_offlineAgent"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 260
    iget-object v0, p0, Lo/nW;->e:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_0

    .line 261
    sget-object v1, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->c:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->b(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/nW;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/nW;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 267
    iget-object v0, p0, Lo/nW;->e:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_0

    .line 268
    sget-object v1, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->c:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->e(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/nW;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/nW;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 347
    invoke-direct {p0}, Lo/nW;->e()V

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lo/nW;->e:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    return-void
.end method

.method public a(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 198
    new-instance v0, Lo/nW$1;

    invoke-direct {v0, p0, p2}, Lo/nW$1;-><init>(Lo/nW;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 41
    new-instance v0, Lo/nW$5;

    invoke-direct {v0, p0, p2}, Lo/nW$5;-><init>(Lo/nW;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/os/Handler;Lo/Bi;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v2, "onDownloadResumedByUser playableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    new-instance v0, Lo/nW$12;

    invoke-direct {v0, p0, p2}, Lo/nW$12;-><init>(Lo/nW;Lo/Bi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/nS;Lo/nE;)V
    .locals 8

    .line 134
    new-instance v7, Lo/nW$15;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lo/nW$15;-><init>(Lo/nW;Lcom/netflix/mediaclient/android/app/Status;Lo/nE;Ljava/lang/String;Landroid/os/Handler;Lo/nS;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/os/Handler;Lo/Bi;I)V
    .locals 1

    .line 67
    new-instance v0, Lo/nW$6;

    invoke-direct {v0, p0, p2, p3}, Lo/nW$6;-><init>(Lo/nW;Lo/Bi;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 215
    new-instance v0, Lo/nW$3;

    invoke-direct {v0, p0, p2, p3}, Lo/nW$3;-><init>(Lo/nW;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/os/Handler;Lo/nV;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 294
    :cond_1
    new-instance v0, Lo/nW$10;

    invoke-direct {v0, p0, p2}, Lo/nW$10;-><init>(Lo/nW;Lo/nV;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 181
    new-instance v0, Lo/nW$11;

    invoke-direct {v0, p0, p2}, Lo/nW$11;-><init>(Lo/nW;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 54
    new-instance v0, Lo/nW$7;

    invoke-direct {v0, p0, p2, p3}, Lo/nW$7;-><init>(Lo/nW;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Landroid/os/Handler;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 164
    new-instance v0, Lo/nW$13;

    invoke-direct {v0, p0, p2, p3}, Lo/nW$13;-><init>(Lo/nW;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v2, "onDownloadStopped playableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    new-instance v0, Lo/nW$14;

    invoke-direct {v0, p0, p2, p3}, Lo/nW$14;-><init>(Lo/nW;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/NetflixPowerManager;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lo/nW;->e:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    return-void
.end method

.method public e(Landroid/os/Handler;Lo/Bi;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v2, "onDownloadCompleted playableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    new-instance v0, Lo/nW$8;

    invoke-direct {v0, p0, p2}, Lo/nW$8;-><init>(Lo/nW;Lo/Bi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 231
    new-instance v0, Lo/nW$2;

    invoke-direct {v0, p0, p2, p3}, Lo/nW$2;-><init>(Lo/nW;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Landroid/os/Handler;Lo/nV;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOfflineAgentListener before listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/nW;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_offlineAgent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Lo/nW$9;

    invoke-direct {v0, p0, p2}, Lo/nW$9;-><init>(Lo/nW;Lo/nV;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Landroid/os/Handler;Z)V
    .locals 1

    .line 247
    new-instance v0, Lo/nW$4;

    invoke-direct {v0, p0, p2}, Lo/nW$4;-><init>(Lo/nW;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Lo/pq$Activity;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lo/nW;->a:Lo/pq$Activity;

    return-void
.end method
