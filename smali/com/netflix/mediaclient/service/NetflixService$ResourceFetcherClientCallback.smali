.class Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "NetflixService.java"


# instance fields
.field private final clientId:I

.field private final requestId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;II)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    .line 775
    iput p2, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->clientId:I

    .line 776
    iput p3, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->requestId:I

    .line 777
    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    .line 793
    invoke-super/range {p0 .. p7}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 794
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 795
    if-nez v0, :cond_0

    .line 796
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onResourceCached"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->requestId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onResourceCached(ILjava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 781
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 782
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 783
    if-nez v0, :cond_0

    .line 784
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onResourceFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_0
    return-void

    .line 786
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onResourceFetched(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 787
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->updateLastContactNetflix(Landroid/content/Context;)V

    goto :goto_0
.end method
