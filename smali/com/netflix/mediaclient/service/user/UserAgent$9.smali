.class Lcom/netflix/mediaclient/service/user/UserAgent$9;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2028
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$9;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 2029
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getMSLUserCredentialRegistry:: User profile is not known, not need for UserAuthenticationData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 2061
    :goto_0
    return-object v0

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->isUserKnown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2036
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getMSLUserCredentialRegistry:: User profile is known to MSL, no need for UserAuthenticationData."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 2037
    goto :goto_0

    .line 2041
    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v5, "getMSLUserCredentialRegistry:: User profile is NOT known to MSL, get cookies for UserAuthenticationData."

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getNetflixID()Ljava/lang/String;

    move-result-object v5

    .line 2044
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v6

    .line 2047
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2048
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v7, "getMSLUserCredentialRegistry:: Netflix ID is NOT known for profile %s even if it should be!"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v0, v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 2051
    :goto_1
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2052
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v7, "getMSLUserCredentialRegistry:: Secure Netflix ID is NOT known for profile %s even if it should be!"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v0, v7, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 2056
    :cond_2
    if-eqz v0, :cond_3

    move-object v0, v3

    .line 2057
    goto :goto_0

    .line 2060
    :cond_3
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v3, "getMSLUserCredentialRegistry:: Authorization cookies known for profile %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2061
    new-instance v0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    invoke-direct {v0, v5, v6}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getMSLUserCredentialRegistry:: User profile is set %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2018
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$9;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    .line 2021
    :goto_0
    return-object v0

    .line 2020
    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getMSLUserCredentialRegistry:: User profile is not set."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateApiEndpointHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2068
    return-void
.end method
