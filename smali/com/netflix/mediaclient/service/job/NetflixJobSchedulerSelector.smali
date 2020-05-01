.class public Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerSelector;
.super Ljava/lang/Object;
.source "NetflixJobSchedulerSelector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_job_scheduler_select"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNetflixJobScheduler(Landroid/content/Context;)Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nf_job_scheduler_select"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "alarmReceiverOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " networkChangeReceiverOn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;-><init>(Landroid/content/Context;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelAllJobs(Landroid/content/Context;)V

    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method
