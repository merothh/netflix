.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueDownloadOnBackOff()V
    .locals 2

    .prologue
    .line 1382
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1383
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "continueDownloadOnBackOff"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1385
    return-void
.end method

.method public continueDownloadOnNetworkChanged()V
    .locals 2

    .prologue
    .line 1390
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1391
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "continueDownloadOnNetworkChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1393
    return-void
.end method

.method public continueDownloadOnStreamingStopped()V
    .locals 2

    .prologue
    .line 1414
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1415
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "continueDownloadOnStreamingStopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1417
    return-void
.end method

.method public stopDownloadOnStreamingStarted()V
    .locals 2

    .prologue
    .line 1422
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1423
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopDownloadOnStreamingStarted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->PlayerStreaming:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1425
    return-void
.end method

.method public stopDownloadsNoNetwork()V
    .locals 2

    .prologue
    .line 1406
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1407
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopDownloadsNoNetwork"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1409
    return-void
.end method

.method public stopDownloadsNotAllowedByNetwork()V
    .locals 2

    .prologue
    .line 1398
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1399
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "stopDownloadsNotAllowedByNetwork"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$15;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1401
    return-void
.end method
