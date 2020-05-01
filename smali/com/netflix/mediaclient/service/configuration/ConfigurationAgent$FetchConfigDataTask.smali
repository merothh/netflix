.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;
.super Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask$1;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->webClientCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$600(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchConfigDataTask;->webClientCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;->fetchConfigData(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    return-void
.end method
