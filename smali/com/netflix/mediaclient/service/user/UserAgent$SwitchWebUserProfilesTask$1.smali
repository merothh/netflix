.class Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserProfileSwitched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "switchWebUserProfile  netflixId %s secureNetflixId %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;->getUserBoundNetflixId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;->getUserBoundSecureNetflixId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->profileSwitched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;)V

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

    const-string/jumbo v2, "switchWebUserProfile failed  with statusCode="

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
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->profileSwitchedFailed(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
