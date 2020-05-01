.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1285
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "lomoImagesCachedCountDownAsync: waiting on lomoRequestCountDown latch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0x493e0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1296
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "caching lomo images finished"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    .line 1299
    return-void

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1291
    const-string/jumbo v1, "FalkorAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cacheLolomoImages: interrupter exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
