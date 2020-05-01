.class Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/util/EventQueue;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/util/EventQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;)V

    return-void
.end method


# virtual methods
.method public shouldFlushQueue(IJ)Z
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/EventQueue;->access$200(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/EventQueue;->access$300(Lcom/netflix/mediaclient/util/EventQueue;)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/EventQueue;->access$400(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Posting events: Current number of events in outgoing queue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$200(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and it is equal or higher than treshold of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$300(Lcom/netflix/mediaclient/util/EventQueue;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/EventQueue;->access$400(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current number of events in outgoing queue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$200(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and it is less than treshold of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;->this$0:Lcom/netflix/mediaclient/util/EventQueue;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/EventQueue;->access$300(Lcom/netflix/mediaclient/util/EventQueue;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
