.class public Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;
.super Ljava/lang/Object;
.source "NetflixJobSchedulerImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_job_scheduler"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "nf_job_scheduler"

    const-string/jumbo v1, "NetflixJobSchedulerImpl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->isJobSchedulerDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_job_scheduler"

    const-string/jumbo v1, "NetflixJobSchedulerImpl JobScheduler disabled."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->cancelAllJobs(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static cancelAllJobs(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "nf_job_scheduler"

    const-string/jumbo v1, "cancelAllJobs"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->cancelJobIfExists(Landroid/app/job/JobScheduler;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static cancelJobIfExists(Landroid/app/job/JobScheduler;I)V
    .locals 3

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->getPendingJobByJobId(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "nf_job_scheduler"

    const-string/jumbo v2, "cancelJobIfExists cancelling.."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method private static getPendingJobByJobId(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->isJobSchedulerDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_job_scheduler"

    const-string/jumbo v1, "cancelJob no-op"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_job_scheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelJob jobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->cancelJobIfExists(Landroid/app/job/JobScheduler;I)V

    goto :goto_0
.end method

.method public isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->isJobSchedulerDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_job_scheduler"

    const-string/jumbo v2, "isJobScheduled no-op"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_job_scheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isJobScheduled netflixJobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->getPendingJobByJobId(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_job_scheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isJobScheduled: Job Info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->isJobFinishDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_job_scheduler"

    const-string/jumbo v1, "onJobFinished no-op"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_job_scheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onJobFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->sendJobFinishBroadcast(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    goto :goto_0
.end method

.method public scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;->isJobSchedulerDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_job_scheduler"

    const-string/jumbo v1, "scheduleJob no-op"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_job_scheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleJob jobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->cancelJobIfExists(Landroid/app/job/JobScheduler;I)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/netflix/mediaclient/service/job/NetflixJobService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRequiresUnmeteredConnection()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRepeating()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRepeatingPeriodInMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRequiresCharging()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRequiresIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_2
.end method
