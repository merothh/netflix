.class public final Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;
.super Ljava/lang/Object;
.source "UserVolleyWebClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/user/UserWebClient;


# instance fields
.field private final service:Lcom/netflix/mediaclient/service/NetflixService;

.field private final webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    return-void
.end method


# virtual methods
.method public addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 6

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/AddUserProfileRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/volley/AddUserProfileRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public autoLogin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/CreateAutoLoginTokenRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/volley/CreateAutoLoginTokenRequest;-><init>(Landroid/content/Context;JLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public doDummyWebCall(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/DoOnRampEligibilityActionRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/DoOnRampEligibilityActionRequest;-><init>(Landroid/content/Context;Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 7

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/EditUserProfileRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/user/volley/EditUserProfileRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public fetchAccountData(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchAvailableAvatarsRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAvailableAvatarsRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public fetchProfileData(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchSurveyRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchSurveyRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public fetchUserData(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public final isSynchronous()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->isSynchronous()Z

    move-result v0

    return v0
.end method

.method public markSurveysAsRead()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/MarkSurveyReadRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/user/volley/MarkSurveyReadRequest;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RecordPlanSelection;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/RecordPlanSelection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RecordUmsImpression;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/RecordUmsImpression;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public refreshUserMessage(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RemoveUserProfileRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/RemoveUserProfileRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public switchWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/SwitchUserProfileRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/SwitchUserProfileRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method

.method public verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;->webclient:Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;->sendRequest(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;)V

    return-void
.end method
