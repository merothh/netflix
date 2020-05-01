.class Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/util/EventQueue;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/util/EventQueue;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;)V

    return-void
.end method


# virtual methods
.method public shouldFlushQueue(IJ)Z
    .locals 6

    .prologue
    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 313
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$500(Lcom/netflix/mediaclient/util/EventQueue;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 314
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$400(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Posting events: older event in queue was posted [ms] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and that triggers time of stay in queue criteria of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/EventQueue;->access$500(Lcom/netflix/mediaclient/util/EventQueue;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$400(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Posting events: older event in queue was posted [ms] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and that does NOT triggers time of stay in queue criteria of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/EventQueue;->access$500(Lcom/netflix/mediaclient/util/EventQueue;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
