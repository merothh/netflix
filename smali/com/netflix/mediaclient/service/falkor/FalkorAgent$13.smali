.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1063
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v3, "notifyJobSchedulerFinishedAsync: waiting on jobSchedulerCountdown latch"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v4, 0x493e0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v3, "Prefetch lolomo job finished"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$902(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z

    .line 1078
    iget-object v3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const-string/jumbo v4, "notifyJobSchedulerFinishedAsync"

    invoke-static {v3, v0, v2, v1, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1000(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V

    .line 1079
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1069
    const-string/jumbo v3, "FalkorAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cacheLolomoImages: interrupter exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1078
    goto :goto_1
.end method
