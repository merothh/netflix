.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;)V
    .locals 0

    .prologue
    .line 1564
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    return-void
.end method

.method private handleUntimelyJobRequest(J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1596
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "handleUntimelyJobRequest: Start job request is invalidated because the last request ran before start delay ms"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v1, 0x1

    const-string/jumbo v2, "handleUntimelyJobRequest"

    invoke-static {v0, v1, v3, v3, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1000(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V

    .line 1600
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    .line 1604
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    .line 1606
    :cond_1
    return-void
.end method

.method private isStartJobUntimely(J)Z
    .locals 3

    .prologue
    .line 1614
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1568
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1500(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1569
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "startLolomoFetchJob: is not in test return early."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    .line 1573
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const-string/jumbo v1, "onNetflixStartJob 1"

    invoke-static {v0, v6, v5, v5, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1000(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V

    .line 1593
    :cond_1
    :goto_0
    return-void

    .line 1577
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1578
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->getLastJobStartTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1579
    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->isStartJobUntimely(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1580
    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->handleUntimelyJobRequest(J)V

    goto :goto_0

    .line 1583
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    const-string/jumbo v3, "prefs_prefetch_lolomo_job_last_start_time_ms"

    invoke-static {v2, v3, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 1584
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPrefetchLolomoJobStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1585
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1586
    const-string/jumbo v0, "FalkorAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetflixStartJob: jobId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$902(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z

    .line 1589
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->startLolomoFetchJob(Z)Z

    move-result v0

    .line 1590
    if-nez v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const-string/jumbo v1, "onNetflixStartJob 2"

    invoke-static {v0, v5, v6, v6, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1000(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    .prologue
    .line 1619
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    const-string/jumbo v0, "FalkorAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetflixStopJob: jobId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$902(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z

    .line 1623
    return-void
.end method
