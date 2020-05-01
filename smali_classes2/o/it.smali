.class public Lo/it;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iB;
.implements Lo/iu;


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Landroid/content/Context;

.field private final d:Lo/iy;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/iw;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private g:Lcom/netflix/mediaclient/service/job/NetflixJob;

.field private h:I

.field private final i:Lo/aeq;

.field private final j:Lo/cz;

.field private k:Z

.field private final l:J

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/iw;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/it;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/iy;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/it;->e:Ljava/util/Set;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/it;->n:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lo/it;->k:Z

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, p0, Lo/it;->l:J

    .line 54
    new-instance v0, Lo/it$4;

    invoke-direct {v0, p0}, Lo/it$4;-><init>(Lo/it;)V

    iput-object v0, p0, Lo/it;->m:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lo/it$1;

    invoke-direct {v0, p0}, Lo/it$1;-><init>(Lo/it;)V

    iput-object v0, p0, Lo/it;->o:Ljava/lang/Runnable;

    .line 313
    new-instance v0, Lo/it$3;

    invoke-direct {v0, p0}, Lo/it$3;-><init>(Lo/it;)V

    iput-object v0, p0, Lo/it;->s:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lo/it;->c:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/it;->b:Landroid/os/Handler;

    .line 68
    iput-object p2, p0, Lo/it;->d:Lo/iy;

    .line 69
    iput-object p3, p0, Lo/it;->j:Lo/cz;

    .line 70
    iput-object p4, p0, Lo/it;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 71
    invoke-direct {p0}, Lo/it;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->a(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object p1

    iput-object p1, p0, Lo/it;->g:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 72
    new-instance p1, Lo/aeq;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const/16 p4, 0xa

    invoke-direct {p1, p4, p2, p3}, Lo/aeq;-><init>(IJ)V

    iput-object p1, p0, Lo/it;->i:Lo/aeq;

    .line 74
    iget-object p1, p0, Lo/it;->d:Lo/iy;

    sget-object p2, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {p1, p2}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lo/it;->d:Lo/iy;

    iget-object p2, p0, Lo/it;->g:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {p1, p2}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    :cond_0
    return-void
.end method

.method private a()J
    .locals 3

    .line 235
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lo/it;->j:Lo/cz;

    invoke-interface {v1}, Lo/cz;->O()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()V
    .locals 3

    .line 279
    iget-object v0, p0, Lo/it;->d:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lo/it;->d:Lo/iy;

    iget-object v1, p0, Lo/it;->g:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    .line 284
    iget-object v0, p0, Lo/it;->c:Landroid/content/Context;

    iget-object v1, p0, Lo/it;->g:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->f()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/it;->d(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/it;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/it;->c()V

    return-void
.end method

.method private static c(Landroid/content/Context;J)J
    .locals 1

    const-string v0, "maintenace_job_period"

    .line 334
    invoke-static {p0, v0, p1, p2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private c()V
    .locals 7

    .line 240
    iget-object v0, p0, Lo/it;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/it;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lo/it;->c:Landroid/content/Context;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lo/it;->c(Landroid/content/Context;J)J

    move-result-wide v0

    .line 251
    invoke-direct {p0}, Lo/it;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 258
    invoke-direct {p0}, Lo/it;->d()V

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 260
    invoke-direct {p0}, Lo/it;->d()V

    .line 261
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->a(J)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v0

    iput-object v0, p0, Lo/it;->g:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 262
    invoke-direct {p0}, Lo/it;->b()V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lo/it;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->e()Lo/zu;

    move-result-object v0

    const-string v1, "onMaintenanceJobDone"

    invoke-interface {v0, v1}, Lo/zu;->d(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lo/it;->d:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lo/it;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/it;->g()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 270
    iget-object v0, p0, Lo/it;->d:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lo/it;->d:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "maintenace_job_period"

    .line 339
    invoke-static {p0, v0, p1, p2}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic d(Lo/it;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/it;->h()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 293
    iget-boolean v0, p0, Lo/it;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lo/it;->k:Z

    .line 295
    iget-object v0, p0, Lo/it;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/it;->o:Ljava/lang/Runnable;

    iget-wide v2, p0, Lo/it;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lo/it;->k:Z

    return-void
.end method

.method private h()V
    .locals 4

    .line 325
    iget-object v0, p0, Lo/it;->n:Landroid/util/SparseArray;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lo/it;->n:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lo/it;->n:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/iw;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 327
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call notifyMaintenanceActionDone by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 327
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lo/iw;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lo/it;->e:Ljava/util/Set;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lo/it;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lo/iw;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lo/it;->e:Ljava/util/Set;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lo/it;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lo/iw;I)V
    .locals 1

    .line 213
    iget-object p1, p0, Lo/it;->n:Landroid/util/SparseArray;

    monitor-enter p1

    .line 214
    :try_start_0
    iget-object v0, p0, Lo/it;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    iget-object p2, p0, Lo/it;->n:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 216
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 218
    iget-object p1, p0, Lo/it;->b:Landroid/os/Handler;

    iget-object p2, p0, Lo/it;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 216
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public e()V
    .locals 2

    .line 178
    iget-object v0, p0, Lo/it;->e:Ljava/util/Set;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lo/it;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    iget-object v1, p0, Lo/it;->n:Landroid/util/SparseArray;

    monitor-enter v1

    .line 182
    :try_start_1
    iget-object v0, p0, Lo/it;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 183
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    iget-object v0, p0, Lo/it;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 183
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 180
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 4

    .line 105
    iget-object p1, p0, Lo/it;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lo/it;->b:Landroid/os/Handler;

    iget-object v0, p0, Lo/it;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lo/it;->i:Lo/aeq;

    invoke-virtual {p1}, Lo/aeq;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    invoke-direct {p0}, Lo/it;->f()V

    return-void

    .line 121
    :cond_1
    iget-object p1, p0, Lo/it;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    invoke-static {p1}, Lo/iv;->d(Lo/zS;)V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v0, p0, Lo/it;->e:Ljava/util/Set;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lo/it;->e:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 129
    iget-object v1, p0, Lo/it;->n:Landroid/util/SparseArray;

    monitor-enter v1

    .line 130
    :try_start_1
    iget-object v0, p0, Lo/it;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 131
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/iw;

    .line 135
    iget v2, p0, Lo/it;->h:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/it;->h:I

    .line 136
    iget-object v2, p0, Lo/it;->n:Landroid/util/SparseArray;

    monitor-enter v2

    .line 137
    :try_start_2
    iget-object v1, p0, Lo/it;->n:Landroid/util/SparseArray;

    iget v3, p0, Lo/it;->h:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    iget v1, p0, Lo/it;->h:I

    invoke-interface {v0, v1}, Lo/iw;->d(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 138
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 144
    :cond_2
    iget-object p1, p0, Lo/it;->n:Landroid/util/SparseArray;

    monitor-enter p1

    .line 145
    :try_start_4
    iget-object v0, p0, Lo/it;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 146
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_4

    .line 148
    iget-object p1, p0, Lo/it;->b:Landroid/os/Handler;

    iget-object v0, p0, Lo/it;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 146
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 131
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 126
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .line 164
    iget-object p1, p0, Lo/it;->f:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    invoke-static {p1}, Lo/iv;->e(Lo/zS;)V

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v0, p0, Lo/it;->e:Ljava/util/Set;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lo/it;->e:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    iget-object v1, p0, Lo/it;->n:Landroid/util/SparseArray;

    monitor-enter v1

    .line 170
    :try_start_1
    iget-object v0, p0, Lo/it;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 171
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/iw;

    .line 173
    invoke-interface {v0}, Lo/iw;->e()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 171
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 168
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
