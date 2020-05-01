.class Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;


# instance fields
.field private final clientId:I

.field private final requestId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;II)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    iput p2, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    .line 974
    iput p3, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    .line 975
    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1046
    if-nez v0, :cond_0

    .line 1047
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onAutoLoginTokenCreated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :goto_0
    return-void

    .line 1049
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onAutoLoginTokenCreated"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onAutoLoginTokenCreated(ILjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1013
    if-nez v0, :cond_0

    .line 1014
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onAvailableAvatarsListFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :goto_0
    return-void

    .line 1016
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onAvailableAvatarsListFetched"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onAvailableAvatarsListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onIrisNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1024
    if-nez v0, :cond_0

    .line 1025
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onIrisNotificationsListFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    return-void

    .line 1027
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onIrisNotificationsListFetched"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onIrisNotificationsListFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 980
    if-nez v0, :cond_0

    .line 981
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onLoginComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_0
    return-void

    .line 983
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onLoginComplete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoginComplete(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 990
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 991
    if-nez v0, :cond_0

    .line 992
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onLogoutComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_0
    return-void

    .line 994
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onLogoutComplete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLogoutComplete(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onOnRampEligibilityActionComplete(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1068
    if-nez v0, :cond_0

    .line 1069
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onOnRampEligibilityActionComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :goto_0
    return-void

    .line 1071
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onOnRampEligibilityActionComplete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onOnRampEligibilityAction(ILcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onProfilesListUpdateResult(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1035
    if-nez v0, :cond_0

    .line 1036
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onProfilesListUpdateResult"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :goto_0
    return-void

    .line 1038
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onProfilesListUpdateResult"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onProfileListUpdateStatus(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1057
    if-nez v0, :cond_0

    .line 1058
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onSurveyFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_0
    return-void

    .line 1060
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onSurveyFetched"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSurveyFetched(ILcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1002
    if-nez v0, :cond_0

    .line 1003
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onVerified"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    return-void

    .line 1005
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onVerified"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVerified(IZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
