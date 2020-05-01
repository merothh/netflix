.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "onConfigDataFetched statusCode=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$502(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$700(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$302(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$900(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$800(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x1b77400

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->getCallback()Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->getCallback()Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;->this$1:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$500(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method
