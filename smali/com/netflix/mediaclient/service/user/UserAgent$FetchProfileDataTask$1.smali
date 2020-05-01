.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1052
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1900(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2100(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 1055
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "onProfileDataFetched language changed, update "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2200(Lcom/netflix/mediaclient/service/user/UserAgent;[Ljava/lang/String;)V

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2302(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 1060
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2400(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 1061
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 1070
    :cond_1
    :goto_0
    return-void

    .line 1063
    :cond_2
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "onProfileDataFetched nothing changed ignore.. "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1066
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore onProfileDataFetched failed (skipping userProfile update) with statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
