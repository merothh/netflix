.class public abstract Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.super Ljava/lang/Object;
.source "SimpleUserAgentWebCallback.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onAutologinCompleted(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
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
    .line 41
    return-void
.end method

.method public onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onFriendsForRecommendationsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public onOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onProfileDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onRecommendationsSent(Ljava/util/Set;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onUserDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onUserProfileSwitched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onUserProfilesUpdated(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
