.class Lcom/netflix/mediaclient/service/user/UserAgent$6;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 1682
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "onConfigDataFetched res.isSuccess:%b, isAccountDataAvailable:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1800(Lcom/netflix/mediaclient/service/user/UserAgent;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1800(Lcom/netflix/mediaclient/service/user/UserAgent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1687
    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Fetching account data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$3000(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V

    .line 1692
    :goto_0
    return-void

    .line 1690
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$6;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1800(Lcom/netflix/mediaclient/service/user/UserAgent;)Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->accountDataFetchFailed(Lcom/netflix/mediaclient/android/app/Status;Z)V

    goto :goto_0
.end method
