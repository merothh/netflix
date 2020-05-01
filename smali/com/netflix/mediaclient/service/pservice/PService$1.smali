.class Lcom/netflix/mediaclient/service/pservice/PService$1;
.super Ljava/lang/Object;
.source "PService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;


# instance fields
.field private final agentsToInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PServiceAgent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PService;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PService$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pservice/PService$1$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PService$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "PService init failed with PServiceAgent: %s, statusCode=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$100(Lcom/netflix/mediaclient/service/pservice/PService;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->stopSelf()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "PService successfully inited PServiceAgent: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$200(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PService;->access$300(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->init(Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->agentsToInit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "PService successfully inited all PServiceAgents "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->access$100(Lcom/netflix/mediaclient/service/pservice/PService;)V

    goto :goto_0
.end method
