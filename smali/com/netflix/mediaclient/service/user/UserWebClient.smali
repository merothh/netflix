.class public interface abstract Lcom/netflix/mediaclient/service/user/UserWebClient;
.super Ljava/lang/Object;
.source "UserWebClient.java"


# virtual methods
.method public abstract addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract autoLogin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract doDummyWebCall(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract fetchAccountData(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract fetchProfileData(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract fetchUserData(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract isSynchronous()Z
.end method

.method public abstract markSurveysAsRead()V
.end method

.method public abstract recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract refreshUserMessage(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
.end method

.method public abstract removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract switchWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method

.method public abstract verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
.end method
