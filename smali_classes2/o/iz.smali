.class public Lo/iz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iy;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "nf_job_scheduler"

    const-string v1, "NetflixJobSchedulerImpl"

    .line 30
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lo/iz;->c:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lo/cD;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NetflixJobSchedulerImpl JobScheduler disabled."

    .line 33
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lo/iz;->c:Landroid/content/Context;

    invoke-static {p1}, Lo/iz;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/app/job/JobScheduler;I)V
    .locals 2

    .line 145
    invoke-static {p0, p1}, Lo/iz;->d(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "nf_job_scheduler"

    const-string v1, "cancelJobIfExists cancelling.."

    .line 147
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 158
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 159
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    const-string v0, "nf_job_scheduler"

    const-string v1, "cancelAllJobs"

    .line 167
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "jobscheduler"

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 172
    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 173
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result v3

    invoke-static {p0, v3}, Lo/iz;->a(Landroid/app/job/JobScheduler;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/job/NetflixJob;)V
    .locals 7

    .line 82
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/cD;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "nf_job_scheduler"

    const-string v0, "scheduleJob no-op"

    .line 83
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 91
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result v1

    invoke-static {v0, v1}, Lo/iz;->a(Landroid/app/job/JobScheduler;I)V

    .line 93
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lo/iz;->c:Landroid/content/Context;

    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lo/iC;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 99
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 101
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 109
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 110
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_4

    .line 113
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->a()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 116
    :cond_4
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/cD;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "nf_job_scheduler"

    const-string v0, "cancelJob no-op"

    .line 122
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 129
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result p1

    invoke-static {v0, p1}, Lo/iz;->a(Landroid/app/job/JobScheduler;I)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/job/NetflixJob;)V
    .locals 5

    .line 67
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 72
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result v1

    invoke-static {v0, v1}, Lo/iz;->d(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->f()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not rescheduling repeating Job jobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_job_scheduler"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lo/iz;->e(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please use scheduleOneTimeJob for one time job."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/netflix/mediaclient/service/job/NetflixJob;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lo/iz;->e(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please use schedulePeriodicJobIfPeriodChanged for periodic job."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z
    .locals 3

    .line 41
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/cD;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "nf_job_scheduler"

    const-string v0, "isJobScheduled no-op"

    .line 42
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    const-string v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 49
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result p1

    invoke-static {v0, p1}, Lo/iz;->d(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/cD;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "nf_job_scheduler"

    const-string p2, "onJobFinished no-op"

    .line 135
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lo/iz;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lo/iC;->e(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void
.end method
