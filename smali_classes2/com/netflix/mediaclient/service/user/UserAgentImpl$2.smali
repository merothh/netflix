.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lo/ahY;Lo/ym;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Z)Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

.field final synthetic c:Lo/ym;

.field final synthetic d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic e:Lo/ahY;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lo/ym;ZLo/ahY;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->b:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->c:Lo/ym;

    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->a:Z

    iput-object p5, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->e:Lo/ahY;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 1155
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1161
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/util/List;)V

    .line 1162
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUser()Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    .line 1164
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getPrimaryProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p2

    const-string v0, "nf_service_useragent"

    if-nez p2, :cond_0

    const-string p2, "Response success! Primary profile does NOT exist! This should NOT happen!"

    .line 1167
    invoke-static {v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getRawResponse()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->b:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-static {v0, p2, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1169
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aa:Lcom/netflix/mediaclient/StatusCode;

    invoke-static {v0, p1}, Lo/aeu;->c(Lcom/netflix/mediaclient/StatusCode;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/cl/model/Error;)V

    .line 1170
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object p2, Lo/LegacyErrorStrings;->au:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->c:Lo/ym;

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    return-void

    .line 1176
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h()Lo/ze;

    move-result-object p1

    invoke-interface {p1}, Lo/ze;->c()Ljava/lang/String;

    move-result-object p1

    .line 1177
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "TEMP_PROFILE_ID"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p2, "We already have credentials %s. Double submission most likely!"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 1178
    invoke-static {v0, p2, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 1188
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lo/zE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Ljava/lang/String;)V

    .line 1191
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->b:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    .line 1192
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->b:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    const-string p1, "After:: MSLlUserCredentialRegistry getUserId: %s "

    new-array p2, v3, [Ljava/lang/Object;

    .line 1194
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1197
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->I()V

    .line 1202
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->c:Lo/ym;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "Unable to changeUser placeholder temp profile ID"

    .line 1205
    invoke-static {v0, p1, v2, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1206
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->cp:Lcom/netflix/mediaclient/StatusCode;

    sget-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    const-string v2, "UserAgent: activateAccByEmailPassword fails, failed to changeUser UserID in MSLStore"

    invoke-static {p2, v2, v1, v0}, Lo/aeu;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->c:Lo/ym;

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    goto :goto_0

    .line 1210
    :cond_2
    iget-boolean p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->a:Z

    if-eqz p1, :cond_3

    .line 1211
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->e:Lo/ahY;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->c:Lo/ym;

    invoke-static {p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V

    goto :goto_0

    .line 1218
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/cl/model/Error;)V

    .line 1219
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;->c:Lo/ym;

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    :goto_0
    return-void
.end method
