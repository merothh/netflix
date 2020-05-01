.class Lcom/netflix/mediaclient/service/NetflixService$4;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplication()Lcom/netflix/mediaclient/NetflixApplication;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    return-object v0
.end method

.method public getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/error/ErrorAgent;

    move-result-object v0

    return-object v0
.end method

.method public getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v0

    return-object v0
.end method

.method public getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/msl/MSLAgent;

    move-result-object v0

    return-object v0
.end method

.method public getNrdController()Lcom/netflix/mediaclient/service/NrdController;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    move-result-object v0

    return-object v0
.end method

.method public getPdsAgentForDownload()Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    move-result-object v0

    return-object v0
.end method

.method public getPdsAgentForPlay()Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;

    move-result-object v0

    return-object v0
.end method

.method public getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    move-result-object v0

    return-object v0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    return-object v0
.end method

.method public getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$4;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    return-object v0
.end method
