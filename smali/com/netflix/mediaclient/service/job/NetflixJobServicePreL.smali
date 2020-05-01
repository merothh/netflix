.class public Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;
.super Landroid/app/Service;
.source "NetflixJobServicePreL.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;


# static fields
.field private static final NETFLIX_JOB:Ljava/lang/String; = "NetflixJobId"

.field private static final TAG:Ljava/lang/String; = "nf_job_service_prel"


# instance fields
.field private final mJobsWaitingForServiceManager:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    return-void
.end method

.method private createServiceManagerHelperIfRequired()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    .line 61
    :cond_0
    return-void
.end method

.method private executeJobs()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 108
    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->onJobExecutionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    return-void
.end method

.method public static getServiceStartIntentForJobId(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "nf_job_service_prel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getServiceStartIntentForJobId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string/jumbo v1, "NetflixJobId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method private releaseServiceManagerHelper()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->destroy()V

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v0, "nf_job_service_prel"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->createServiceManagerHelperIfRequired()V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "nf_job_service_prel"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->releaseServiceManagerHelper()V

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 74
    const-string/jumbo v0, "NetflixJobId"

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->UNKNOWN_JOB_ID:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v1, "nf_job_service_prel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartCommand jobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->createServiceManagerHelperIfRequired()V

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->isServiceManagerFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string/jumbo v1, "nf_job_service_prel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartCommand serviceManager has failed jobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->releaseServiceManagerHelper()V

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    :cond_2
    :goto_0
    return v4

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mJobsWaitingForServiceManager:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->mServiceManagerHelper:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->isServiceManagerReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->executeJobs()V

    goto :goto_0

    .line 98
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string/jumbo v0, "nf_job_service_prel"

    const-string/jumbo v1, "onStartCommand waiting for serviceManager to be ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public serviceManagerFailed()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public serviceManagerReady()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->executeJobs()V

    .line 118
    return-void
.end method
