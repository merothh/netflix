.class Lcom/netflix/mediaclient/service/NetflixService$2;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;


# instance fields
.field private final agentsToInitOnError:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/ServiceAgent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;

.field final synthetic val$agentsInitCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 1

    .prologue
    .line 500
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->val$agentsInitCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixService$2$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/NetflixService$2$1;-><init>(Lcom/netflix/mediaclient/service/NetflixService$2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitOnError:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 511
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 513
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetflixService init failed with ServiceAgent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/NetflixService;->access$1502(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->agentsToInitOnError:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    .line 519
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isInitCalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/NetflixService;->access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1700(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 524
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->stopSelf()V

    .line 533
    :goto_1
    return-void

    .line 528
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    const-string/jumbo v0, "NetflixService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetflixService successfully inited ServiceAgent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/msl/MSLAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$1600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$2;->val$agentsInitCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V

    goto :goto_1
.end method
