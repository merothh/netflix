.class Lcom/netflix/mediaclient/service/user/UserAgent$5;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserProfilesUpdated(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 1168
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserProfilesUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1174
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 1175
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "onUserProfilesUpdated got profiles: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1302(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)Ljava/util/List;

    .line 1179
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1600(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)V

    .line 1182
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1184
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1187
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2600(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 1188
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2002(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    goto :goto_0

    .line 1193
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$5;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfilesListUpdated(Landroid/content/Context;)V

    .line 1197
    :goto_1
    return-void

    .line 1195
    :cond_4
    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating user profiles failed with statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
