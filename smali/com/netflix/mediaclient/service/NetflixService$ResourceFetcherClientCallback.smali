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

    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    iput p2, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->clientId:I

    iput p3, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->requestId:I

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    invoke-super/range {p0 .. p7}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onResourceCached"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

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

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onResourceFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onResourceFetched(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$ResourceFetcherClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/PlayabilityEnforcer;->updateLastContactNetflix(Landroid/content/Context;)V

    goto :goto_0
.end method
