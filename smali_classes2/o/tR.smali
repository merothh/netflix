.class public Lo/tR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tR$StateListAnimator;,
        Lo/tR$TaskDescription;,
        Lo/tR$Activity;,
        Lo/tR$Application;
    }
.end annotation


# static fields
.field private static final d:J


# instance fields
.field private final a:Lo/iy;

.field private final b:Lo/aeq;

.field private final c:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

.field private final e:Lo/hY;

.field private g:Lo/tR$Application;

.field private final i:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/tR;->d:J

    return-void
.end method

.method public constructor <init>(Lo/iy;Lcom/netflix/mediaclient/servicemgr/PrepareManager;Lo/hY;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lo/tR;->a:Lo/iy;

    .line 75
    iput-object p2, p0, Lo/tR;->c:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    .line 76
    iput-object p3, p0, Lo/tR;->e:Lo/hY;

    .line 77
    iput-object p4, p0, Lo/tR;->i:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 78
    new-instance p1, Lo/aeq;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p3, 0x3c

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const/4 p4, 0x4

    invoke-direct {p1, p4, p2, p3}, Lo/aeq;-><init>(IJ)V

    iput-object p1, p0, Lo/tR;->b:Lo/aeq;

    .line 79
    invoke-static {}, Lo/fj;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-static {}, Lo/fj;->i()J

    move-result-wide p1

    .line 81
    iget-object p3, p0, Lo/tR;->a:Lo/iy;

    sget-object p4, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->h:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {p3, p4}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 82
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e(JZ)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lo/tR;->a:Lo/iy;

    invoke-interface {p2, p1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lo/tR;->a:Lo/iy;

    sget-object p2, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->h:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {p1, p2}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 88
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/tR;->j:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    .line 113
    iget-object v0, p0, Lo/tR;->g:Lo/tR$Application;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lo/tR;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lo/tR;->g:Lo/tR$Application;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lo/tR;->g:Lo/tR$Application;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lo/tR;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    new-instance v0, Lo/tR$Application;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/tR$Application;-><init>(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v0, p0, Lo/tR;->g:Lo/tR$Application;

    .line 109
    iget-object p1, p0, Lo/tR;->j:Landroid/os/Handler;

    iget-object p2, p0, Lo/tR;->g:Lo/tR$Application;

    sget-wide v0, Lo/tR;->d:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 12

    .line 120
    invoke-static {}, Lo/fj;->j()Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "nf_cache"

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    const-string v0, "no fetch pattern defined"

    .line 122
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1, v7}, Lo/tR;->e(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void

    .line 126
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {}, Lo/adk;->d()J

    move-result-wide v5

    const-wide/32 v8, 0x19000000

    cmp-long v0, v5, v8

    if-gez v0, :cond_2

    const-string v0, "insufficient disk space"

    .line 129
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lo/tR;->i:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lo/tR;->i:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    new-instance v1, Lo/tR$TaskDescription;

    invoke-direct {v1, v4}, Lo/tR$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lo/tR$TaskDescription;->b(J)Lo/tR$TaskDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 133
    :cond_1
    invoke-direct {p0, p1, v7}, Lo/tR;->e(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void

    .line 136
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 138
    invoke-direct {p0, v4, p1, v3}, Lo/tR;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 140
    iget-object v8, p0, Lo/tR;->e:Lo/hY;

    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    new-instance v11, Lo/tR$5;

    move-object v0, v11

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lo/tR$5;-><init>(Lo/tR;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/List;)V

    invoke-virtual {v8, v9, v7, v10, v11}, Lo/hY;->c(Ljava/lang/String;IILo/ci;)V

    return-void
.end method

.method static synthetic b(Lo/tR;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lo/tR;->a()V

    return-void
.end method

.method static synthetic c(Lo/tR;)Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/tR;->i:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    return-object p0
.end method

.method private d(Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p3

    if-lez p3, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lo/tR;->a()V

    .line 269
    iget-object p3, p0, Lo/tR;->i:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 270
    iget-object p3, p0, Lo/tR;->i:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p3

    new-instance v0, Lo/tR$TaskDescription;

    invoke-direct {v0, p1}, Lo/tR$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lo/tR$TaskDescription;->c(Ljava/util/List;)Lo/tR$TaskDescription;

    move-result-object v0

    invoke-interface {p3, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 272
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const-string v0, "nf_cache"

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    const-string p1, "could not fetch prepare list"

    .line 273
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0, p2, v1}, Lo/tR;->e(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    goto :goto_1

    :cond_2
    new-array p3, v1, [Ljava/lang/Object;

    .line 276
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p3, v2

    const-string v1, "prefetching %s videos"

    invoke-static {v0, v1, p3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 277
    new-instance p3, Lo/tR$Activity;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, p0, p1, p2, v0}, Lo/tR$Activity;-><init>(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;I)V

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_3

    .line 280
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_3
    iget-object p2, p0, Lo/tR;->c:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    invoke-interface {p2, p4, p1}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->e(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method static synthetic d(Lo/tR;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lo/tR;->e(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void
.end method

.method static synthetic e(Lo/tR;)Lo/hY;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/tR;->e:Lo/hY;

    return-object p0
.end method

.method private e(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 1

    .line 350
    iget-object v0, p0, Lo/tR;->a:Lo/iy;

    invoke-interface {v0, p1, p2}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void
.end method

.method static synthetic e(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lo/tR;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 5

    .line 94
    iget-object v0, p0, Lo/tR;->b:Lo/aeq;

    invoke-virtual {v0}, Lo/aeq;->c()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_cache"

    const-string v4, "onNetflixStartJob tooFast=%b"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1, v3}, Lo/tR;->e(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lo/tR;->b(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :goto_0
    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .line 346
    iget-object p1, p0, Lo/tR;->c:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->k:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    return-void
.end method
