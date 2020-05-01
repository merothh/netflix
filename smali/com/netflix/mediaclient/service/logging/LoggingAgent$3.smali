.class Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;
.super Landroid/content/BroadcastReceiver;
.source "LoggingAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$000(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
