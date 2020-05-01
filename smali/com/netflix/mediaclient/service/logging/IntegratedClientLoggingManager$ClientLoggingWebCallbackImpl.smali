.class Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;
.super Ljava/lang/Object;
.source "IntegratedClientLoggingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventsDelivered(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Events delivered for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$900(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->clearFailureCounter()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$600(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    return-void
.end method

.method public onEventsDeliveryFailed(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Events delivery failed for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$800(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$1000(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->access$900(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
