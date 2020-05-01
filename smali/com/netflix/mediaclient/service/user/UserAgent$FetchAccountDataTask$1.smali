.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1302(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUser()Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1402(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1400(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1502(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->accountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1300(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1600(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1400(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1700(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalAccountDataFetched(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchAccountData failed (skipping user info update) with statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1800(Lcom/netflix/mediaclient/service/user/UserAgent;)Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->accountDataFetchFailed(Lcom/netflix/mediaclient/android/app/Status;Z)V

    goto :goto_0
.end method
