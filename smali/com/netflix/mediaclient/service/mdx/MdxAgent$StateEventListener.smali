.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;
.super Ljava/lang/Object;
.source "MdxAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->ready()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    move-result-object v0

    const-string/jumbo v1, "MDX init error"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->getErrorDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->error(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/StateEvent;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/StateEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/StateEvent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    move-result-object v0

    const-string/jumbo v1, "MDX state READY"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->ready()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->start()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    move-result-object v0

    const-string/jumbo v1, "MDX state NOT_READY"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->notready()V

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stop()V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;->getFromUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;->getDuration()I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "nf_mdx_MdxAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MdxAgent: TargetRestartingEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$StateEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: add to mTargetRestartingList"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
